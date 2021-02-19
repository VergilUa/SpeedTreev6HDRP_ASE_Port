using System.Collections.Generic;
using System.Linq;
using UnityEngine;

// ReSharper disable once CheckNamespace -> Simplify ASE access
namespace UnityEditor {
   [CanEditMultipleObjects]
   public class SpeedTreeHDRPBranchMaterialInspector : MaterialEditor {
      #region [Fields]
      
      private static readonly int Cull = Shader.PropertyToID("_Cull");
      private static readonly int CullMode = Shader.PropertyToID("_CullMode");
      private static readonly int CullModeForward = Shader.PropertyToID("_CullModeForward");

      // ReSharper disable once InconsistentNaming -> Keyword
      private const string EFFECT_HUE_VARIATION = "EFFECT_HUE_VARIATION";

      private readonly List<Material> _selectedMaterials = new List<Material>();
      private readonly List<Material> _hueMats = new List<Material>();

      private readonly List<MaterialProperty> _properties = new List<MaterialProperty>();

      private const string BumpMap = "_BumpMap";
      
      #endregion

      private void PopulateSelection() {
         _selectedMaterials.Clear();
         _hueMats.Clear();

         foreach (Object obj in targets) {
            Material mat = obj as Material;
            if (mat == null) continue;

            _selectedMaterials.Add(mat);

            string[] keywords = mat.shaderKeywords;

            if (keywords.Contains(EFFECT_HUE_VARIATION)) {
               _hueMats.Add(mat);
            }
         }

         _properties.Clear();
         _properties.AddRange(GetMaterialProperties(targets));
      }

      public override void OnInspectorGUI() {
         PopulateSelection();

         serializedObject.Update();

         SerializedProperty shader = serializedObject.FindProperty("m_Shader");
         if (!isVisible || shader.hasMultipleDifferentValues || shader.objectReferenceValue == null)
            return;

         SetDefaultGUIWidths();

         var mainTex = _properties.Find(prop => prop.name == "_MainTex");
         if (mainTex != null) {
            _properties.Remove(mainTex);
            ShaderProperty(mainTex, mainTex.displayName);
         }

         var bumpMap = _properties.Find(prop => prop.name == BumpMap);
         if (bumpMap != null) {
            _properties.Remove(bumpMap);

            ShaderProperty(bumpMap, bumpMap.displayName);
         }

         var hueVariation = _properties.Find(prop => prop.name == "_HueVariation");

         if (hueVariation != null) {
            _properties.Remove(hueVariation);
            
            bool isEnabled = _hueMats.Count > 0;
            bool isChanged = ToggleShaderProperty(hueVariation, ref isEnabled, _hueMats.Count > 1);

            if (isChanged) {
               foreach (Material mat in _selectedMaterials) {
                  if (isEnabled)
                     mat.EnableKeyword(EFFECT_HUE_VARIATION);
                  else
                     mat.DisableKeyword(EFFECT_HUE_VARIATION);
               }
            }
         }

         MaterialProperty cull = _properties.Find(prop => prop.name == "_Cull");
         if (cull != null) {
            _properties.Remove(cull);

            EditorGUI.BeginChangeCheck();

            ShaderProperty(cull, cull.displayName);

            // TODO remove this once ASE supports Cull mode override for other passes
            // Sync material _CullMode & _CullModeForward to _Cull since ASE doesn't support this yet
            if (EditorGUI.EndChangeCheck()) {
               foreach (Material mat in _selectedMaterials) {
                  mat.renderQueue = (int) UnityEngine.Rendering.RenderQueue.Geometry;

                  int cullMode = mat.GetInt(Cull);
                  
                  mat.SetInt(Cull, cullMode);
                  mat.SetInt(CullMode, cullMode);
                  mat.SetInt(CullModeForward, cullMode);
               }
            }
         }

         //---------------------------------------------------------------
         foreach (var prop in _properties) {
            if ((prop.flags & MaterialProperty.PropFlags.HideInInspector) != 0)
               continue;
            
            ShaderProperty(prop, prop.displayName);
         }

         EditorGUILayout.Space();
         EditorGUILayout.Space();

         EnableInstancingField();
         DoubleSidedGIField();
      }

      private bool ToggleShaderProperty(MaterialProperty prop, ref bool enable, bool hasMultiple) {
         EditorGUI.BeginChangeCheck();
         EditorGUI.showMixedValue = hasMultiple;

         Rect controlRect = EditorGUILayout.GetControlRect(false, GUILayout.ExpandWidth(false));
         controlRect.xMax -= 64;

         enable = EditorGUI.ToggleLeft(controlRect, prop.displayName, enable);
         EditorGUI.showMixedValue = false;
         
         bool endChangeCheck = EditorGUI.EndChangeCheck();

         GUILayout.Space(-EditorGUIUtility.singleLineHeight);
         using (new EditorGUI.DisabledScope(!enable && !hasMultiple)) {
            EditorGUI.showMixedValue = prop.hasMixedValue;
            ShaderProperty(prop, " ");
            EditorGUI.showMixedValue = false;
         }

         return endChangeCheck;
      }
   }
}