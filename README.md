# SpeedTree v6 HDRP port (via Amplify Shader Editor)

# An (almost complete) attempt at porting SpeedTree v6 to the HDRP Unity SRP 
(as a temporary replacent for the missing shader solution)

Rationale behind this madness? -- I've needed a SpeedTree v6 shader for my trees to work with HDRP. 


Done by using [Amplify Shader Editor](https://assetstore.unity.com/packages/tools/visual-scripting/amplify-shader-editor-68570)

So if you don't have one - you probably won't be able to edit it.

# Requirements:
- SpeedTree v6; (Other versions of trees untested)
- HDRP 7.1.8 package;
- Unity 2019.3.1.x+;
- Amplify Shader Editor (for editing and tweaking, and potential bugfixes. Also, its amazing for every pipeline)

(Other versions untested)

# What's done, and what's missing:
- Frag shader is complete (at least I hope so);
- Vertex shader is complete (with exception of Global Wind, which for some reason don't translate correctly).
- Most of the code is represented as ASE node graph / functions. 
Which should (in theory) simplify heavylifting done to port / change shader for other pipelines (e.g. URP)

So everything except wind should work correctly (in theory, do a heavy testing first).
(Contains GBuffer as main pass. Depth, Meta and forward as autogen via ASE)

This shader is ported from the fork I've made in ~2017 to modify and inject custom time. 
So complicated wind is missing (only simple wind part is ported). 
Also, any changes to the SpeedTree v6 original shader changes is probably missing.

#This shader also supports custom time fed via float4 _GlobalTimers[] array to control time (from C# script).
Specify _GlobalTimerId to fetch according time from the array.

Or just override the **FetchEternityTime** function to the basic Time node and replace the output, that should feed
default Unity's wind time.

# Potential FAQ:
Q: Why not Shader Graph?
A: Because it sucks (compared to ASE) right now

Q: Why not port manually via templates and shader code?
A: I've tried and failed miserably. 
At the current low-level shader documentation of the HDRP this task seems more than impossible for a single person to accomplish over single weekend.

#Other points
This is in a no way complete, or bug free solution. No guarantees thing applies here. 
So don't expect everything to be 1:1 as in built-in SpeedTree v6 shader.

I've spent 10h+ on trying to figure out what's wrong with GlobalWind node. 
So if anyone got an idea why it doesn't work, please let me know.

Also, use official shaders from SpeedTree once they release them (or if they will do that).

#Packages available @ release section.

Pine is made with SpeedTree Modeler (in ~2017 with v6).

## License: **MIT** for my part of the code. 
**SpeedTree** and **Unity** license applies to the according parts. 
**ASE license** applies for the ASE made shaders.
