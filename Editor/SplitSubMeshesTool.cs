using System.Collections.Generic;
using System.IO;
using UnityEditor;
using UnityEngine;

// ReSharper disable once CheckNamespace -> by design
namespace EditorToolset {
   public class SplitSubMeshesTool {
      [MenuItem("CONTEXT/MeshFilter/Split SubMeshes into MeshRenderers")]
      private static void SplitIntoMeshes() {
         GameObject go = Selection.activeGameObject;
         if (go == null) return;
         
         ProcessGameObject(go);
      }

      private static void ProcessGameObject(GameObject go) {
         // Isolate Sub Meshes
         if (!go.TryGetComponent(out MeshFilter meshFilter)) {
            Debug.LogError($"No MeshFilter found at {go.name}", go);
            return;
         }

         Mesh sharedMesh = meshFilter.sharedMesh;
         if (sharedMesh == null) {
            Debug.LogError($"Mesh is missing", meshFilter);
            return;
         }

         if (!go.TryGetComponent(out MeshRenderer meshRenderer)) {
            Debug.LogError($"No MeshRenderer found at {go.name}", go);
            return;
         }

         List<MeshData> meshFromSubmeshes = GetAllSubMeshAsIsolatedMeshes(sharedMesh);
         if (meshFromSubmeshes == null || meshFromSubmeshes.Count == 0) {
            Debug.LogError("No SubMeshes found", sharedMesh);
            return;
         }

         bool hasTreeData = go.TryGetComponent(out Tree treeData);

         Undo.RegisterCompleteObjectUndo(go, "Split SubMeshes");
         
         string savePath = AssetDatabase.GetAssetPath(sharedMesh);
         savePath = Path.GetDirectoryName(savePath);
         
         string goName = go.name;
         
         for (int i = 0; i < meshFromSubmeshes.Count; i++) {
            string newMeshName = goName + "_sub_" + i;
            
            GameObject newMeshGO = new GameObject(newMeshName);
            Transform trm = newMeshGO.transform;
            
            trm.SetParent(meshFilter.transform);
            trm.localPosition = Vector3.zero;
            trm.localRotation = Quaternion.identity;
            trm.localScale = Vector3.one;
            
            MeshFilter meshFromSubmeshFilter = newMeshGO.AddComponent<MeshFilter>();
            meshFromSubmeshFilter.sharedMesh = meshFromSubmeshes[i].mesh;
            MeshRenderer newMeshRenderer = newMeshGO.AddComponent<MeshRenderer>();

            if (hasTreeData) {
               Tree newTreeData = newMeshGO.AddComponent<Tree>();
               
               // Use the same tree properties of the initial mesh
               EditorUtility.CopySerialized(treeData, newTreeData);
            }

            // Use the same mesh renderer properties of the initial mesh
            EditorUtility.CopySerialized(meshRenderer, newMeshRenderer);
            
            // Only one material is used for new mesh renderer
            Material material = newMeshRenderer.sharedMaterials[meshFromSubmeshes[i].id];
            newMeshRenderer.sharedMaterials = new[] {material};

            // Store new mesh in project
            string path = Path.Combine(savePath, newMeshName + ".asset");
            AssetDatabase.CreateAsset(meshFromSubmeshes[i].mesh, path);
            
            Undo.RegisterCreatedObjectUndo(newMeshGO, "Created new mesh");
            
            Debug.Log("Created new mesh at: " + path);
         }
       
         // No need for those anymore
         Object.DestroyImmediate(meshFilter);
         Object.DestroyImmediate(meshRenderer);

         if (hasTreeData) {
            Object.DestroyImmediate(treeData);
         }
      }

      private static List<MeshData> GetAllSubMeshAsIsolatedMeshes(Mesh mesh) {
         List<MeshData> result = new List<MeshData>();

         int submeshCount = mesh.subMeshCount;
         if (submeshCount < 2) {
            Debug.LogError("Not enough SubMeshes to split");
            return result;
         }

         for (int i = 0; i < submeshCount; i++) {
            result.Add(new MeshData
                       {
                          id = i,
                          mesh = mesh.GetSubmesh(i)
                       });
         }

         return result;
      }
   }

   public static class MeshExtension {
      private class Vertices {
         List<Vector3> verts = null;
         List<Vector2> uv1 = null;
         List<Vector2> uv2 = null;
         List<Vector2> uv3 = null;
         List<Vector2> uv4 = null;
         List<Vector3> normals = null;
         List<Vector4> tangents = null;
         List<Color32> colors = null;
         List<BoneWeight> boneWeights = null;

         public Vertices() { verts = new List<Vector3>(); }

         public Vertices(Mesh aMesh) {
            verts = CreateList(aMesh.vertices);
            uv1 = CreateList(aMesh.uv);
            uv2 = CreateList(aMesh.uv2);
            uv3 = CreateList(aMesh.uv3);
            uv4 = CreateList(aMesh.uv4);
            normals = CreateList(aMesh.normals);
            tangents = CreateList(aMesh.tangents);
            colors = CreateList(aMesh.colors32);
            boneWeights = CreateList(aMesh.boneWeights);
         }

         private List<T> CreateList<T>(T[] aSource) {
            if (aSource == null || aSource.Length == 0)
               return null;
            return new List<T>(aSource);
         }

         private void Copy<T>(ref List<T> aDest, List<T> aSource, int aIndex) {
            if (aSource == null)
               return;
            if (aDest == null)
               aDest = new List<T>();
            aDest.Add(aSource[aIndex]);
         }

         public int Add(Vertices aOther, int aIndex) {
            int i = verts.Count;
            Copy(ref verts, aOther.verts, aIndex);
            Copy(ref uv1, aOther.uv1, aIndex);
            Copy(ref uv2, aOther.uv2, aIndex);
            Copy(ref uv3, aOther.uv3, aIndex);
            Copy(ref uv4, aOther.uv4, aIndex);
            Copy(ref normals, aOther.normals, aIndex);
            Copy(ref tangents, aOther.tangents, aIndex);
            Copy(ref colors, aOther.colors, aIndex);
            Copy(ref boneWeights, aOther.boneWeights, aIndex);
            return i;
         }

         public void AssignTo(Mesh aTarget) {
            aTarget.SetVertices(verts);
            if (uv1 != null) aTarget.SetUVs(0, uv1);
            if (uv2 != null) aTarget.SetUVs(1, uv2);
            if (uv3 != null) aTarget.SetUVs(2, uv3);
            if (uv4 != null) aTarget.SetUVs(3, uv4);
            if (normals != null) aTarget.SetNormals(normals);
            if (tangents != null) aTarget.SetTangents(tangents);
            if (colors != null) aTarget.SetColors(colors);
            if (boneWeights != null) aTarget.boneWeights = boneWeights.ToArray();
         }
      }

      public static Mesh GetSubmesh(this Mesh aMesh, int aSubMeshIndex) {
         if (aSubMeshIndex < 0 || aSubMeshIndex >= aMesh.subMeshCount)
            return null;
         int[] indices = aMesh.GetTriangles(aSubMeshIndex);
         Vertices source = new Vertices(aMesh);
         Vertices dest = new Vertices();
         Dictionary<int, int> map = new Dictionary<int, int>();
         int[] newIndices = new int[indices.Length];
         for (int i = 0; i < indices.Length; i++) {
            int o = indices[i];
            int n;
            if (!map.TryGetValue(o, out n)) {
               n = dest.Add(source, o);
               map.Add(o, n);
            }

            newIndices[i] = n;
         }

         Mesh m = new Mesh();
         dest.AssignTo(m);
         m.triangles = newIndices;
         return m;
      }
   }

   public struct MeshData {
      public Mesh mesh;
      public int id; // Represent the ID of the sub mesh from with the new 'mesh' has been created
   }
}