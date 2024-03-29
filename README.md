# SpeedTree v6 HDRP port (via Amplify Shader Editor)

As a temporary replacent for the HDRP missing shader solution.
<br>Note that there's SpeedTree v8 support included in HDRP 12 now. 
<br>Its adviced to use that shader instead if your project is on Unity v2021.2+.

Rationale behind this madness? -- I've needed a SpeedTree v6 shader for my trees to work with HDRP. 

Done by using [Amplify Shader Editor](https://assetstore.unity.com/packages/tools/visual-scripting/amplify-shader-editor-68570).
If you don't have one - you probably won't be able to edit the shader.

# Minimum Requirements:
Currently generated shader HDRP version is 10.5.0.
<br>Other versions can be potentially supported by re-saving / regenerating shader via Amplify Shader Editor.
- SpeedTree v6; (Other versions of trees untested)
- HDRP 7.1.8 package+; 
- Unity 2019.3.1.x+;
- For the wind to work - don't forget to add ShaderTimeControlExample.cs to the scene;
- (Optional) Amplify Shader Editor (for editing and tweaking the shader, and potential bugfixes. Also, its amazing)

(Other versions untested)

# Tech info
- Frag shader complete;
- Vertex shader complete;
- Most of the code is represented as ASE node graph / functions or custom expression injects. 
- Time is controlled via ShaderTimeControlExample;
- Smoothness and Metallic can be tweaked via inspector;
- Hue variation does not work (yet).
- No mask maps. Can be added pretty easily, swap output for the tex sampler.

ASE should (in theory) simplify heavylifting done to port / change shader for other pipelines (e.g. URP)

Contains GBuffer as main pass. (Depth, Meta and forward as autogen via ASE)

This shader is ported from the fork I've made in ~2017 to modify and inject custom time. 
Also, any changes to the SpeedTree v6 original shader changes is probably missing from that past time to current.

# This shader also supports custom time fed via float4 _GlobalTimers[] global array to control time 
(from C# script, checkout ShaderTimeControlExample)

Specify _GlobalTimerId to fetch according time from the array.

Or just override the **FetchEternityTime** function to the basic Time node and replace the output, that should feed
default Unity's wind time. (if you feel risky)

# Why override SpeedTreeMaterialInspector

It contains some parts of the code that doesn't translate to HDRP / ASE well.

Plus ASE doesn't have a built-in way to override _CullMode / _CullModeForward properties w/o overring templates atm.
<br>If your culling is broken, reapply _Cull property, it should override hidden _CullMode / _CullModeForward

# Other points
Don't expect everything to be 1:1 as in built-in SpeedTree v6 shader. 

Also, use official shaders from SpeedTree once they're released. Or don't.
Because you know. They don't support custom time :P

# FAQ:
```
Q: Tried editing shader via ASE and Alpha Clipping stopped working (hall of mirrors issue)
A: ASE no longer sets _ALPHATEST_ON define, but rather relies on editor / inspector to set it as a local keyword. (This is by design, based on ASE support)
Inspector should now have a workaround that automatically adds keyword _ALPHATEST_ON to the material. Just by selecting materials it should be automatically added. 
After that you should be able to re-save shader. 

Alternatively, using debug mode in inspector and manually adding _ALPHATEST_ON keyword to the material should work.
Also, after messing around with alpha clipping make sure that output is connected correctly (Alpha Cutoff (_Cutoff) to Alpha Clip Threshold).

Q: Vertex Position is incorrect after editing (trees too large)
A: Vertex position should be Absolute. Set it manually to Relative, then back to Absolute and update the shader. This is ASE bug.

Q: "As Is" errors in older shader versions.
A: Safe to ignore, but if in doubt - I've updated shader recently, use that as a base.

Q: Why not Shader Graph?
A: Because it sucks (compared to ASE) right now

Q: Why not port manually via templates and shader code?
A: I've tried and failed miserably. As of current time, due to the lack of low-level shader documentation of the HDRP, this task seems more than impossible for a single person to accomplish over short period of time.
```

# Packages available @ release section.

Feedback and bugfix requests please leave @ issues or [here](https://forum.unity.com/threads/an-almost-complete-hdrp-speedtree-v6-port-via-ase.840517/)

Pine is made with SpeedTree Modeler (in ~2017 with v6).

## License: **MIT** for my part of the code. 
**SpeedTree** and **Unity** license applies to the according parts / sources. 
**ASE license** applies for the ASE made shaders.

