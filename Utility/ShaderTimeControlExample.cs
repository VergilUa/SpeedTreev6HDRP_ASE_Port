#if UNITY_EDITOR
using UnityEditor;
#endif
using UnityEngine;


namespace Utility {
   /// <summary>
   /// Component that controls shader global time values
   /// </summary>
   [ExecuteInEditMode]
   public class ShaderTimeControlExample : MonoBehaviour {
      /// <summary>
      /// Unity's implementation doesn't allow to change array length once passed by SetGlobalVectorArray.
      /// So, define this as high as timers may go. Restart is required to reapply the values. Yes. Even the editor.
      /// </summary>
      public const int MaximumTimerCount = 20;
      
      #region [Fields]

      /// <summary>
      /// Fed values to the shader is same as default ones, except they're taken from the GlobalTimers (in Runtime)
      /// Same in editor.
      ///
      /// Pre-multiplied to save some computation for the shaders
      /// Vector4(time / 20, time, time * 2, time * 3)
      /// </summary>
      private readonly Vector4[] _feedValues = new Vector4[MaximumTimerCount];
      
      public static readonly int GlobalTimers = Shader.PropertyToID("_GlobalTimers");

      #endregion

      private void Update() {
         SendTimeValues();
      }

      /// <summary>
      /// Sends existing timer.Total values to the shaders in ordered sequence as is in Eternal component
      /// </summary>
      private void SendTimeValues() {
         for (int i = 0; i < MaximumTimerCount; i++) {
            float time;

#if UNITY_EDITOR
            // Set fake values in editor, hence time.Total is not calculated there
            if (!Application.isPlaying) {
               time = (float) EditorApplication.timeSinceStartup;
            } else
#endif
               time = Time.time; // modify this if you need shader control

            float timeDiv20 = time / 20f;
            float timeMul2 = time * 2f;
            float timeMul3 = time * 3f;

            _feedValues[i] = new Vector4(timeDiv20, time, timeMul2, timeMul3);
         }

         Shader.SetGlobalVectorArray(GlobalTimers, _feedValues);
      }
   }
}