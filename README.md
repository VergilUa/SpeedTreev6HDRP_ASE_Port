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
- (Optional) Amplify Shader Editor (for editing and tweaking the shader, and potential bugfixes. Also, its amazing)

(Other versions untested)

# Tech info
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

# This shader also supports custom time fed via float4 _GlobalTimers[] global array to control time 
(from C# script, not included)

Specify _GlobalTimerId to fetch according time from the array.

Or just override the **FetchEternityTime** function to the basic Time node and replace the output, that should feed
default Unity's wind time.

# Why override SpeedTreeMaterialInspector

Because it contains some parts of the code that doesn't translate well.

Plus ASE doesn't have a built-in way to override _CullMode / _CullModeForward properties w/o overring templates atm.

So, if your culling is broken, reapply _Cull property, it should override hidden _CullMode / _CullModeForward

# Other points
This is in a no way complete, or bug free solution. No guarantees thing applies here. 
So don't expect everything to be 1:1 as in built-in SpeedTree v6 shader.

I've spent 10h+ on trying to figure out what's wrong with GlobalWind node. 

This is related part of the code:

Taken from official SpeedTreeWind.cginc:

``` 
float3 GlobalWind(float3 vPos, float3 vInstancePos, float3 vRotatedWindVector, float time) {
    float fLength = length(vPos.xyz);

    float4 windGlobal = UNITY_ACCESS_INSTANCED_PROP(SpeedTreeWind, _ST_WindGlobal);
    
    // compute how much the height contributes
    float fAdjust = max(vPos.y - (1.0 / windGlobal.z) * 0.25, 0.0) * windGlobal.z;

    if (fAdjust != 0.0)
        fAdjust = pow(fAdjust, windGlobal.w);

    // primary oscillation
    float4 vOscillations = TrigApproximate(float4(vInstancePos.x + time, vInstancePos.y + time * 0.8, 0.0, 0.0));
    float fOsc = vOscillations.x + (vOscillations.y * vOscillations.y);
    float fMoveAmount = windGlobal.y * fOsc;

    float4 windBranchAdherences = UNITY_ACCESS_INSTANCED_PROP(SpeedTreeWind, _ST_WindBranchAdherences);
    
    // move a minimum amount based on direction adherence
    fMoveAmount += windBranchAdherences.x / windGlobal.z;

    // adjust based on how high up the tree this vertex is
    fMoveAmount *= fAdjust;

    // xy component
    vPos.xz += vRotatedWindVector.xz * fMoveAmount;
    vPos.xyz = normalize(vPos.xyz) * fLength;

    return vPos;
}
```

Called from SpeedTreeVertex.cginc:

```
 #ifdef ENABLE_WIND
        float3 treePos = float3(unity_ObjectToWorld[0].w, unity_ObjectToWorld[1].w, unity_ObjectToWorld[2].w);

        #ifndef GEOM_TYPE_MESH
            if (windQuality >= WIND_QUALITY_BETTER)
            {
                // branch wind (applies to all 3D geometry)
                finalPosition = BranchWind(windQuality == WIND_QUALITY_PALM, finalPosition, treePos, float4(data.texcoord.zw, 0, 0), rotatedWindVector, rotatedBranchAnchor);
            }
        #endif

        if (windQuality > WIND_QUALITY_NONE)
        {
            // global wind
            // ... time
            
            finalPosition = GlobalWind(finalPosition, treePos, rotatedWindVector, time);
        }
    #endif
    
    ... output vertex pos here
```

So, if anyone got an idea why GlobalWind node doesn't work, please let me know.


Also, use official shaders from SpeedTree once they release them (or if they will do that).

# Potential FAQ:
```
Q: Why not Shader Graph?
A: Because it sucks (compared to ASE) right now

Q: Why not port manually via templates and shader code?
A: I've tried and failed miserably. 
```

At the current low-level shader documentation of the HDRP this task seems more than impossible for a single person to accomplish over single weekend.

# Packages available @ release section.

Pine is made with SpeedTree Modeler (in ~2017 with v6).

## License: **MIT** for my part of the code. 
**SpeedTree** and **Unity** license applies to the according parts / sources. 
**ASE license** applies for the ASE made shaders.
