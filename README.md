# SpeedTree v6 HDRP port (via Amplify Shader Editor)

(as a temporary replacent for the missing shader solution)

Rationale behind this madness? -- I've needed a SpeedTree v6 shader for my trees to work with HDRP. 


Done by using [Amplify Shader Editor](https://assetstore.unity.com/packages/tools/visual-scripting/amplify-shader-editor-68570)

So if you don't have one - you probably won't be able to edit it.

# Requirements:
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
- Smoothness and Metallic can be tweaked 
(No mask maps. Can be added pretty easily, just swap output for the tex sampler)

Which should (in theory) simplify heavylifting done to port / change shader for other pipelines (e.g. URP)

Contains GBuffer as main pass. (Depth, Meta and forward as autogen via ASE)

This shader is ported from the fork I've made in ~2017 to modify and inject custom time. 
Also, any changes to the SpeedTree v6 original shader changes is probably missing from that past time to current.

# This shader also supports custom time fed via float4 _GlobalTimers[] global array to control time 
(from C# script, checkout ShaderTimeControlExample)

Specify _GlobalTimerId to fetch according time from the array.

Or just override the **FetchEternityTime** function to the basic Time node and replace the output, that should feed
default Unity's wind time. (if you feel risky)

# Why override SpeedTreeMaterialInspector

Because it contains some parts of the code that doesn't translate to HDRP / ASE well.

Plus ASE doesn't have a built-in way to override _CullMode / _CullModeForward properties w/o overring templates atm.

So, if your culling is broken, reapply _Cull property, it should override hidden _CullMode / _CullModeForward

# Other points
Don't expect everything to be 1:1 as in built-in SpeedTree v6 shader. 

Also, use official shaders from SpeedTree once they're released. Or don't.
Because you know. They don't support custom time :P

# Potential FAQ:
```
Q: Why not Shader Graph?
A: Because it sucks (compared to ASE) right now

Q: Why not port manually via templates and shader code?
A: I've tried and failed miserably. 
```

As of current time, due to the lack of low-level shader documentation of the HDRP, this task seems more than impossible for a single person to accomplish over short period of time.

# Packages available @ release section.

Feedback and bugfix requests please leave @ issues or [here](https://forum.unity.com/threads/an-almost-complete-hdrp-speedtree-v6-port-via-ase.840517/)

Pine is made with SpeedTree Modeler (in ~2017 with v6).

## License: **MIT** for my part of the code. 
**SpeedTree** and **Unity** license applies to the according parts / sources. 
**ASE license** applies for the ASE made shaders.

