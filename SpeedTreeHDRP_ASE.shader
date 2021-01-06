// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Nature/SpeedTreeHDRP_ASE"
{
	Properties
	{
		[HideInInspector] _EmissionColor("Emission Color", Color) = (1,1,1,1)
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		[HideInInspector]_ST_WindBranchWhip("_ST_WindBranchWhip", Vector) = (0,0,0,0)
		[HideInInspector]_ST_WindBranchTwitch("_ST_WindBranchTwitch", Vector) = (0,0,0,0)
		[HideInInspector]_ST_WindBranchAdherences("_ST_WindBranchAdherences", Vector) = (0,0,0,0)
		[HideInInspector]_ST_WindTurbulences("_ST_WindTurbulences", Vector) = (0,0,0,0)
		[HideInInspector]_ST_WindBranch("_ST_WindBranch", Vector) = (0,0,0,0)
		_GlobalTimerId("GlobalTimerId", Int) = 0
		[HideInInspector]_ST_WindFrondRipple("_ST_WindFrondRipple", Vector) = (0,0,0,0)
		_MainTex("Base (RGB) Trans (A)", 2D) = "white" {}
		_Color("Main Color", Color) = (1,1,1,1)
		_Cutoff("Alpha Cutoff", Range( 0 , 1)) = 0.333
		_DetailTex("Detail", 2D) = "white" {}
		_BumpMap("Normal Map", 2D) = "bump" {}
		_Metallic("Metallic", Range( 0 , 1)) = 1
		_Smoothness("Smoothness", Range( 0 , 1)) = 0
		[Enum(UnityEngine.Rendering.CullMode)]_Cull("Cull", Int) = 0
		[ASEEnd][Enum(None,0,Fastest,1,Fast,2,Better,3,Best,4,Palm,5)]_WindQuality("Wind Quality", Int) = 0
		[HideInInspector]_ST_WindLeaf2Twitch("_ST_WindLeaf2Twitch", Vector) = (0,0,0,0)
		[HideInInspector]_ST_WindLeaf2Tumble("_ST_WindLeaf2Tumble", Vector) = (0,0,0,0)
		[HideInInspector]_ST_WindLeaf2Ripple("_ST_WindLeaf2Ripple", Vector) = (0,0,0,0)
		[HideInInspector]_ST_WindLeaf1Twitch("_ST_WindLeaf1Twitch", Vector) = (0,0,0,0)
		[HideInInspector]_ST_WindLeaf1Tumble("_ST_WindLeaf1Tumble", Vector) = (0,0,0,0)
		[HideInInspector]_ST_WindLeaf1Ripple("_ST_WindLeaf1Ripple", Vector) = (0,0,0,0)
		[HideInInspector]_ST_WindBranchAnchor("_ST_WindBranchAnchor", Vector) = (0,0,0,0)
		[HideInInspector]_ST_WindAnimation("_ST_WindAnimation", Vector) = (0,0,0,0)
		[HideInInspector]_ST_WindGlobal("_ST_WindGlobal", Vector) = (0,0,0,0)
		[HideInInspector]_ST_WindVector("_ST_WindVector", Vector) = (0,0,0,0)

		[HideInInspector] _RenderQueueType("Render Queue Type", Float) = 1
		[HideInInspector] [ToggleUI] _AddPrecomputedVelocity("Add Precomputed Velocity", Float) = 1
		[HideInInspector] _StencilRef("Stencil Ref", Int) = 0
		[HideInInspector] _StencilWriteMask("Stencil Write Mask", Int) = 6
		[HideInInspector] _StencilRefDepth("Stencil Ref Depth", Int) = 8
		[HideInInspector] _StencilWriteMaskDepth("Stencil Write Mask Depth", Int) = 8
		[HideInInspector] _StencilRefMV("Stencil Ref MV", Int) = 40
		[HideInInspector] _StencilWriteMaskMV("Stencil Write Mask MV", Int) = 40
		[HideInInspector] _StencilRefDistortionVec("Stencil Ref Distortion Vec", Int) = 4
		[HideInInspector] _StencilWriteMaskDistortionVec("Stencil Write Mask Distortion Vec", Int) = 4
		[HideInInspector] _StencilWriteMaskGBuffer("Stencil Write Mask GBuffer", Int) = 14
		[HideInInspector] _StencilRefGBuffer("Stencil Ref GBuffer", Int) = 10
		[HideInInspector] _ZTestGBuffer("ZTest GBuffer", Int) = 4
		[HideInInspector] [ToggleUI] _RequireSplitLighting("Require Split Lighting", Float) = 0
		[HideInInspector] [ToggleUI] _ReceivesSSR("Receives SSR", Float) = 1
		[HideInInspector] _SurfaceType("Surface Type", Float) = 0
		[HideInInspector] _BlendMode("Blend Mode", Float) = 0
		[HideInInspector] _SrcBlend("Src Blend", Float) = 1
		[HideInInspector] _DstBlend("Dst Blend", Float) = 0
		[HideInInspector] _AlphaSrcBlend("Alpha Src Blend", Float) = 1
		[HideInInspector] _AlphaDstBlend("Alpha Dst Blend", Float) = 0
		[HideInInspector] [ToggleUI] _ZWrite("ZWrite", Float) = 1
		[HideInInspector] [ToggleUI] _TransparentZWrite("Transparent ZWrite", Float) = 1
		[HideInInspector] _CullMode("Cull Mode", Float) = 2
		[HideInInspector] _TransparentSortPriority("Transparent Sort Priority", Int) = 0
		[HideInInspector] [ToggleUI] _EnableFogOnTransparent("Enable Fog On Transparent", Float) = 1
		[HideInInspector] _CullModeForward("Cull Mode Forward", Float) = 2
		[HideInInspector] [Enum(Front, 1, Back, 2)] _TransparentCullMode("Transparent Cull Mode", Float) = 2
		[HideInInspector] _ZTestDepthEqualForOpaque("ZTest Depth Equal For Opaque", Int) = 4
		[HideInInspector] [Enum(UnityEngine.Rendering.CompareFunction)] _ZTestTransparent("ZTest Transparent", Float) = 4
		[HideInInspector] [ToggleUI] _TransparentBackfaceEnable("Transparent Backface Enable", Float) = 0
		[HideInInspector] [ToggleUI] _AlphaCutoffEnable("Alpha Cutoff Enable", Float) = 1
		[HideInInspector] [ToggleUI] _UseShadowThreshold("Use Shadow Threshold", Float) = 0
		[HideInInspector] [ToggleUI] _DoubleSidedEnable("Double Sided Enable", Float) = 0
		[HideInInspector] [Enum(Flip, 0, Mirror, 1, None, 2)] _DoubleSidedNormalMode("Double Sided Normal Mode", Float) = 2
		[HideInInspector] _DoubleSidedConstants("DoubleSidedConstants", Vector) = (1,1,-1,0)
		//_TessPhongStrength( "Tess Phong Strength", Range( 0, 1 ) ) = 0.5
		//_TessValue( "Tess Max Tessellation", Range( 1, 32 ) ) = 16
		//_TessMin( "Tess Min Distance", Float ) = 10
		//_TessMax( "Tess Max Distance", Float ) = 25
		//_TessEdgeLength ( "Tess Edge length", Range( 2, 50 ) ) = 16
		//_TessMaxDisp( "Tess Max Displacement", Float ) = 25
	}

	SubShader
	{
		LOD 0

		

		Tags { "RenderPipeline"="HDRenderPipeline" "RenderType"="Opaque" "Queue"="Geometry" }

		HLSLINCLUDE
		#pragma target 4.5
		#pragma only_renderers d3d11 ps4 xboxone vulkan metal switch
		#pragma multi_compile_instancing
		#pragma instancing_options renderinglayer

		struct GlobalSurfaceDescription // GBuffer Forward META TransparentBackface
		{
			float3 Albedo;
			float3 Normal;
			float3 BentNormal;
			float3 Specular;
			float CoatMask;
			float Metallic;
			float3 Emission;
			float Smoothness;
			float Occlusion;
			float Alpha;
			float AlphaClipThreshold;
			float AlphaClipThresholdShadow;
			float AlphaClipThresholdDepthPrepass;
			float AlphaClipThresholdDepthPostpass;
			float SpecularAAScreenSpaceVariance;
			float SpecularAAThreshold;
			float SpecularOcclusion;
			float DepthOffset;
			//Refraction
			float RefractionIndex;
			float3 RefractionColor;
			float RefractionDistance;
			//SSS/Translucent
			float Thickness;
			float SubsurfaceMask;
			float DiffusionProfile;
			//Anisotropy
			float Anisotropy;
			float3 Tangent;
			//Iridescent
			float IridescenceMask;
			float IridescenceThickness;
			//BakedGI
			float3 BakedGI;
			float3 BakedBackGI;
		};

		struct AlphaSurfaceDescription // ShadowCaster
		{
			float Alpha;
			float AlphaClipThreshold;
			float AlphaClipThresholdShadow;
			float DepthOffset;
		};

		struct SceneSurfaceDescription // SceneSelection
		{
			float Alpha;
			float AlphaClipThreshold;
			float DepthOffset;
		};

		struct PrePassSurfaceDescription // DepthPrePass
		{
			float Alpha;
			float AlphaClipThresholdDepthPrepass;
			float DepthOffset;
		};

		struct PostPassSurfaceDescription //DepthPostPass
		{
			float Alpha;
			float AlphaClipThresholdDepthPostpass;
			float DepthOffset;
		};

		struct SmoothSurfaceDescription // MotionVectors DepthOnly
		{
			float3 Normal;
			float Smoothness;
			float Alpha;
			float AlphaClipThreshold;
			float DepthOffset;
		};

		struct DistortionSurfaceDescription //Distortion
		{
			float Alpha;
			float2 Distortion;
			float DistortionBlur;
			float AlphaClipThreshold;
		};

		float4 FixedTess( float tessValue )
		{
			return tessValue;
		}
		
		float CalcDistanceTessFactor (float4 vertex, float minDist, float maxDist, float tess, float4x4 o2w, float3 cameraPos )
		{
			float3 wpos = mul(o2w,vertex).xyz;
			float dist = distance (wpos, cameraPos);
			float f = clamp(1.0 - (dist - minDist) / (maxDist - minDist), 0.01, 1.0) * tess;
			return f;
		}

		float4 CalcTriEdgeTessFactors (float3 triVertexFactors)
		{
			float4 tess;
			tess.x = 0.5 * (triVertexFactors.y + triVertexFactors.z);
			tess.y = 0.5 * (triVertexFactors.x + triVertexFactors.z);
			tess.z = 0.5 * (triVertexFactors.x + triVertexFactors.y);
			tess.w = (triVertexFactors.x + triVertexFactors.y + triVertexFactors.z) / 3.0f;
			return tess;
		}

		float CalcEdgeTessFactor (float3 wpos0, float3 wpos1, float edgeLen, float3 cameraPos, float4 scParams )
		{
			float dist = distance (0.5 * (wpos0+wpos1), cameraPos);
			float len = distance(wpos0, wpos1);
			float f = max(len * scParams.y / (edgeLen * dist), 1.0);
			return f;
		}

		float DistanceFromPlaneASE (float3 pos, float4 plane)
		{
			return dot (float4(pos,1.0f), plane);
		}

		bool WorldViewFrustumCull (float3 wpos0, float3 wpos1, float3 wpos2, float cullEps, float4 planes[6] )
		{
			float4 planeTest;
			planeTest.x = (( DistanceFromPlaneASE(wpos0, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[0]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.y = (( DistanceFromPlaneASE(wpos0, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[1]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.z = (( DistanceFromPlaneASE(wpos0, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[2]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.w = (( DistanceFromPlaneASE(wpos0, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[3]) > -cullEps) ? 1.0f : 0.0f );
			return !all (planeTest);
		}

		float4 DistanceBasedTess( float4 v0, float4 v1, float4 v2, float tess, float minDist, float maxDist, float4x4 o2w, float3 cameraPos )
		{
			float3 f;
			f.x = CalcDistanceTessFactor (v0,minDist,maxDist,tess,o2w,cameraPos);
			f.y = CalcDistanceTessFactor (v1,minDist,maxDist,tess,o2w,cameraPos);
			f.z = CalcDistanceTessFactor (v2,minDist,maxDist,tess,o2w,cameraPos);

			return CalcTriEdgeTessFactors (f);
		}

		float4 EdgeLengthBasedTess( float4 v0, float4 v1, float4 v2, float edgeLength, float4x4 o2w, float3 cameraPos, float4 scParams )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;
			tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
			tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
			tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
			tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			return tess;
		}

		float4 EdgeLengthBasedTessCull( float4 v0, float4 v1, float4 v2, float edgeLength, float maxDisplacement, float4x4 o2w, float3 cameraPos, float4 scParams, float4 planes[6] )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;

			if (WorldViewFrustumCull(pos0, pos1, pos2, maxDisplacement, planes))
			{
				tess = 0.0f;
			}
			else
			{
				tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
				tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
				tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
				tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			}
			return tess;
		}
		ENDHLSL
		
		Pass
		{
			
			Name "GBuffer"
			Tags { "LightMode"="GBuffer" }

			Cull [_Cull]
			ZTest [_ZTestGBuffer]

			Stencil
			{
				Ref [_StencilRefGBuffer]
				WriteMask [_StencilWriteMaskGBuffer]
				Comp Always
				Pass Replace
				Fail Keep
				ZFail Keep
			}


			HLSLPROGRAM

			#define _SPECULAR_OCCLUSION_FROM_AO 1
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define HAVE_MESH_MODIFICATION
			#define ASE_SRP_VERSION 100202


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _ALPHATEST_ON

			#if !defined(DEBUG_DISPLAY) && defined(_ALPHATEST_ON)
			#define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
			#endif

			#define SHADERPASS SHADERPASS_GBUFFER
			#pragma multi_compile _ DEBUG_DISPLAY
			#pragma multi_compile _ LIGHTMAP_ON
			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ DYNAMICLIGHTMAP_ON
			#pragma multi_compile _ SHADOWS_SHADOWMASK
			#pragma multi_compile DECALS_OFF DECALS_3RT DECALS_4RT
			#pragma multi_compile _ LIGHT_LAYERS

			#pragma vertex Vert
			#pragma fragment Frag

			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#ifdef DEBUG_DISPLAY
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#endif

			CBUFFER_START( UnityPerMaterial )
			float4 _ST_WindBranchTwitch;
			float4 _ST_WindBranchAnchor;
			float4 _ST_WindVector;
			float4 _Color;
			float4 _ST_WindLeaf1Tumble;
			float4 _ST_WindTurbulences;
			float4 _ST_WindFrondRipple;
			float4 _ST_WindBranchAdherences;
			float4 _ST_WindAnimation;
			float4 _ST_WindLeaf2Twitch;
			float4 _ST_WindBranchWhip;
			float4 _ST_WindLeaf1Ripple;
			float4 _ST_WindLeaf2Tumble;
			float4 _ST_WindBranch;
			float4 _ST_WindLeaf2Ripple;
			float4 _ST_WindLeaf1Twitch;
			float4 _ST_WindGlobal;
			float _Metallic;
			int _Cull;
			int _WindQuality;
			int _GlobalTimerId;
			float _Cutoff;
			float _Smoothness;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			float4 _GlobalTimers[100];
			sampler2D _MainTex;
			sampler2D _DetailTex;
			sampler2D _BumpMap;


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_NORMAL
			#define ASE_NEEDS_FRAG_COLOR
			#pragma shader_feature_local GEOM_TYPE_BRANCH GEOM_TYPE_FROND GEOM_TYPE_LEAF GEOM_TYPE_BRANCH_DETAIL
			#pragma shader_feature_local EFFECT_HUE_VARIATION
			#pragma shader_feature_local GEOM_TYPE_BRANCH_DETAIL
			#pragma shader_feature_local EFFECT_BUMP


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
				#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				float4 ase_texcoord3 : TEXCOORD3;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 interp00 : TEXCOORD0;
				float3 interp01 : TEXCOORD1;
				float4 interp02 : TEXCOORD2;
				float4 interp03 : TEXCOORD3;
				float4 interp04 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_color : COLOR;
				float4 ase_texcoord6 : TEXCOORD6;
				float3 ase_normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};


			float3 OffsetLeavesVertex( float3 VertexPos, float ColorAlpha, float3 texcoord1, float2 texcoord3 )
			{
				float lodValue = unity_LODFade.x;
				VertexPos -= texcoord1.xyz;
				bool isFacingLeaf = ColorAlpha == 0;
				if (isFacingLeaf) {
				    #ifdef LOD_FADE_PERCENTAGE
				        VertexPos *= lerp(1.0, texcoord1.w, lodValue);
				    #endif
				    
				    // face camera-facing leaf to camera
				    float offsetLen = length(VertexPos);
				    VertexPos = mul(VertexPos.xyz, (float3x3) transpose(mul(UNITY_MATRIX_I_M, UNITY_MATRIX_I_V))); // inv(MV) * finalPosition
				    VertexPos = normalize(VertexPos) * offsetLen; // make sure the offset vector is still scaled
				}
				else
				{
				    #ifdef LOD_FADE_PERCENTAGE
				        float3 lodPosition = float3(texcoord1.w, texcoord3.x, texcoord3.y);
				        VertexPos = lerp(VertexPos, lodPosition, lodValue);
				    #endif
				}
				return VertexPos;
			}
			
			void CalculateWindInputs( float windQuality, out float3 rotatedWindVector, out float3 rotatedBranchAnchor, float4 windVector, float4 windBranchAnchor )
			{
				if (windQuality <= 0) // WIND_QUALITY_NONE
				{
				    rotatedWindVector = float3(0.0f, 0.0f, 0.0f);
				    rotatedBranchAnchor = float3(0.0f, 0.0f, 0.0f);
				}
				else
				{
				    // compute rotated wind parameters
				    if (length(windVector) > 0) {
				        rotatedWindVector = normalize(mul(windVector.xyz, (float3x3)UNITY_MATRIX_M));
				    } else {
				        rotatedWindVector = 0;
				    }
				    rotatedBranchAnchor = normalize(mul(windBranchAnchor.xyz, (float3x3)UNITY_MATRIX_M)) * windBranchAnchor.w;
				}
			}
			
			float4 CubicSmooth( float4 vData )
			{
				return vData * vData * (3.0 - 2.0 * vData);
			}
			
			float4 TriangleWave( float4 vData )
			{
				return abs((frac(vData + 0.5) * 2.0) - 1.0);
			}
			
			float3 UnpackNormalFromFloat( float3 fValue )
			{
				     float3 vDecodeKey = float3(16.0, 1.0, 0.0625);
				    // decode into [0,1] range
				    float3 vDecodedValue = frac(fValue / vDecodeKey);
				    // move back into [-1,1] range & normalize
				    return (vDecodedValue * 2.0 - 1.0);
			}
			
			float3 ClampToNonZero( float3 data )
			{
				if (length(data) > 0) {
				    return data;
				} else {
				    return float3(0.0001, 0.0001, 0.0001);
				}
			}
			
			float4 ComplexOscillationInputs( float fTime, float fOffset, float fTwitchFreqScale, float fWeight, int bWhip )
			{
				if (bWhip > 0) {
				    return float4(fTime + fOffset, fTime * fTwitchFreqScale + fOffset, fTwitchFreqScale * 0.5 * (fTime + fOffset), fTime + fOffset + (1.0 - fWeight));
				} else {
				    return float4(fTime + fOffset, fTime * fTwitchFreqScale + fOffset, fTwitchFreqScale * 0.5 * (fTime + fOffset), 0.0);
				}
			}
			
			float4 SimpleOscillationInputs( float fTime, float fOffset, float fWeight, int bWhip )
			{
				if (bWhip)
				  return float4(fTime + fOffset, fTime * 0.689 + fOffset, 0.0, fTime + fOffset + (1.0 - fWeight));
				else
				  return float4(fTime + fOffset, fTime * 0.689 + fOffset, 0.0, 0.0);
			}
			
			float3 GetInstancePos(  )
			{
				 return GetAbsolutePositionWS(float3(UNITY_MATRIX_M[0].w, UNITY_MATRIX_M[1].w, UNITY_MATRIX_M[2].w));
			}
			
			float ComputeWindAdjust( float3 vPos, float4 windGlobal )
			{
				    // compute how much the height contributes
				    float fAdjust = max(vPos.y - (1.0 / windGlobal.z) * 0.25, 0.0) * windGlobal.z;
				    if (fAdjust != 0.0) {
				        float s = sign(fAdjust);
				        fAdjust = pow(abs(fAdjust), windGlobal.w) * s;
				    }
				    return fAdjust;
			}
			
			float3 SwizzleCombineMoveAmount( float3 vPos, float3 vRotatedWindVector, float fMoveAmount )
			{
				    float fLength = length(vPos);
				 
				    vPos.xz += vRotatedWindVector.xz * fMoveAmount;
				    vPos.xyz = normalize(vPos.xyz) * fLength;
				    return vPos;
			}
			
			float3x3 RotationMatrix( float3 vAxis, float fAngle )
			{
				    // compute sin/cos of fAngle
				    float2 vSinCos;
				    #ifdef OPENGL
				        vSinCos.x = sin(fAngle);
				        vSinCos.y = cos(fAngle);
				    #else
				        sincos(fAngle, vSinCos.x, vSinCos.y);
				    #endif
				    const float c = vSinCos.y;
				    const float s = vSinCos.x;
				    const float t = 1.0 - c;
				    const float x = vAxis.x;
				    const float y = vAxis.y;
				    const float z = vAxis.z;
				    return float3x3(t * x * x + c,      t * x * y - s * z,  t * x * z + s * y,
				                    t * x * y + s * z,  t * y * y + c,      t * y * z - s * x,
				                    t * x * z - s * y,  t * y * z + s * x,  t * z * z + c);
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout GlobalSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data
				surfaceData.baseColor =					surfaceDescription.Albedo;
				surfaceData.perceptualSmoothness =		surfaceDescription.Smoothness;
				surfaceData.ambientOcclusion =			surfaceDescription.Occlusion;
				surfaceData.metallic =					surfaceDescription.Metallic;
				surfaceData.coatMask =					surfaceDescription.CoatMask;

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceData.specularOcclusion =			surfaceDescription.SpecularOcclusion;
				#endif
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.subsurfaceMask =			surfaceDescription.SubsurfaceMask;
				#endif
				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceData.thickness =					surfaceDescription.Thickness;
				#endif
				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceData.diffusionProfileHash =		asuint(surfaceDescription.DiffusionProfile);
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.specularColor =				surfaceDescription.Specular;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.anisotropy =				surfaceDescription.Anisotropy;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.iridescenceMask =			surfaceDescription.IridescenceMask;
				surfaceData.iridescenceThickness =		surfaceDescription.IridescenceThickness;
				#endif

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.ior = surfaceDescription.RefractionIndex;
					surfaceData.transmittanceColor = surfaceDescription.RefractionColor;
					surfaceData.atDistance = surfaceDescription.RefractionDistance;

					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif
				#ifdef ASE_LIT_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				normalTS = surfaceDescription.Normal;
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];

				bentNormalWS = surfaceData.normalWS;
				#ifdef ASE_BENT_NORMAL
				GetNormalWS( fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants );
				#endif

				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.tangentWS = TransformTangentToWorld( surfaceDescription.Tangent, fragInputs.tangentToWorld );
				#endif
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs.tangentToWorld[2], surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceData.perceptualSmoothness = GeometricNormalFiltering( surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[ 2 ], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold );
				#endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(GlobalSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				#ifdef _ASE_BAKEDGI
				builtinData.bakeDiffuseLighting = surfaceDescription.BakedGI;
				#endif
				#ifdef _ASE_BAKEDBACKGI
				builtinData.backBakeDiffuseLighting = surfaceDescription.BakedBackGI;
				#endif

				builtinData.emissiveColor = surfaceDescription.Emission;

				#if (SHADERPASS == SHADERPASS_DISTORTION)
				builtinData.distortion = surfaceDescription.Distortion;
				builtinData.distortionBlur = surfaceDescription.DistortionBlur;
				#else
				builtinData.distortion = float2(0.0, 0.0);
				builtinData.distortionBlur = 0.0;
				#endif

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				float3 temp_output_1_0_g4 = inputMesh.positionOS;
				float3 appendResult213 = (float3(inputMesh.uv1.xyz));
				float3 lerpResult13_g4 = lerp( temp_output_1_0_g4 , appendResult213 , unity_LODFade.x);
				#ifdef LOD_FADE_PERCENTAGE
				float3 staticSwitch14_g4 = lerpResult13_g4;
				#else
				float3 staticSwitch14_g4 = temp_output_1_0_g4;
				#endif
				float3 temp_output_344_0 = staticSwitch14_g4;
				float3 appendResult331 = (float3(inputMesh.uv2.xyz));
				float2 appendResult336 = (float2(inputMesh.ase_texcoord.xy));
				float2 break10_g314 = appendResult336;
				float ifLocalVar11_g314 = 0;
				UNITY_BRANCH 
				if( break10_g314.x >= 0.75 )
				ifLocalVar11_g314 = break10_g314.x;
				else
				ifLocalVar11_g314 = 0.75;
				float4 temp_cast_3 = (( ifLocalVar11_g314 + ( ( _GlobalTimers[_GlobalTimerId].y + break10_g314.y ) * _ST_WindFrondRipple.z ) )).xxxx;
				float4 vData7_g316 = temp_cast_3;
				float4 localTriangleWave7_g316 = TriangleWave( vData7_g316 );
				float4 vData6_g316 = localTriangleWave7_g316;
				float4 localCubicSmooth6_g316 = CubicSmooth( vData6_g316 );
				#ifdef GEOM_TYPE_FROND
				float3 staticSwitch343 = ( temp_output_344_0 + ( appendResult331.y * ( ( localCubicSmooth6_g316 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) ).x * _ST_WindFrondRipple.y * inputMesh.normalOS ) );
				#else
				float3 staticSwitch343 = temp_output_344_0;
				#endif
				int temp_output_40_0_g300 = _WindQuality;
				float3 VertexPos286 = inputMesh.positionOS;
				float3 appendResult112 = (float3(_Color.r , _Color.g , _Color.b));
				float4 appendResult281 = (float4(( appendResult112 * inputMesh.ase_color.r ) , _Color.a));
				float4 appendResult243 = (float4(appendResult281));
				float ColorAlpha286 = appendResult243.a;
				float3 texcoord1286 = appendResult213;
				float2 texcoord3286 = inputMesh.ase_texcoord3.xy;
				float3 localOffsetLeavesVertex286 = OffsetLeavesVertex( VertexPos286 , ColorAlpha286 , texcoord1286 , texcoord3286 );
				float3 temp_output_6_0_g300 = localOffsetLeavesVertex286;
				int temp_output_2_0_g301 = temp_output_40_0_g300;
				float4 break25_g300 = inputMesh.uv2;
				float3 temp_cast_5 = (break25_g300.z).xxx;
				float3 fValue10_g305 = temp_cast_5;
				float3 localUnpackNormalFromFloat10_g305 = UnpackNormalFromFloat( fValue10_g305 );
				float temp_output_4_0_g301 = break25_g300.w;
				float ifLocalVar19_g301 = 0;
				if( temp_output_4_0_g301 <= 0.0 )
				ifLocalVar19_g301 = _ST_WindLeaf1Ripple.y;
				else
				ifLocalVar19_g301 = _ST_WindLeaf2Ripple.y;
				float2 break24_g300 = appendResult213.xy;
				float4 break18_g301 = _GlobalTimers[_GlobalTimerId];
				float4 appendResult10_g303 = (float4(( ( break24_g300.x + break24_g300.y ) + break18_g301.y ) , 0.0 , 0.0 , 0.0));
				float4 vData7_g304 = appendResult10_g303;
				float4 localTriangleWave7_g304 = TriangleWave( vData7_g304 );
				float4 vData6_g304 = localTriangleWave7_g304;
				float4 localCubicSmooth6_g304 = CubicSmooth( vData6_g304 );
				float temp_output_8_0_g301 = break25_g300.x;
				float3 temp_output_52_0_g301 = ( temp_output_6_0_g300 + ( localUnpackNormalFromFloat10_g305 * ( ifLocalVar19_g301 * ( ( localCubicSmooth6_g304 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) ).x ) * temp_output_8_0_g301 ) );
				float temp_output_10_0_g301 = break25_g300.y;
				float3 temp_cast_7 = (temp_output_10_0_g301).xxx;
				float3 fValue10_g313 = temp_cast_7;
				float3 localUnpackNormalFromFloat10_g313 = UnpackNormalFromFloat( fValue10_g313 );
				float3 temp_output_5_0_g306 = localUnpackNormalFromFloat10_g313;
				float3 vAxis6_g309 = temp_output_5_0_g306;
				float temp_output_3_0_g306 = temp_output_8_0_g301;
				float4 ifLocalVar32_g301 = 0;
				if( temp_output_4_0_g301 <= 0.0 )
				ifLocalVar32_g301 = _ST_WindLeaf1Tumble;
				else
				ifLocalVar32_g301 = _ST_WindLeaf2Tumble;
				float4 break34_g301 = ifLocalVar32_g301;
				float temp_output_22_0_g306 = frac( ( temp_output_10_0_g301 * 30.3 ) );
				float temp_output_25_0_g306 = ( temp_output_22_0_g306 + temp_output_22_0_g306 + temp_output_22_0_g306 );
				float temp_output_7_0_g306 = break18_g301.z;
				float4 appendResult34_g306 = (float4(( temp_output_25_0_g306 + temp_output_7_0_g306 ) , ( ( temp_output_7_0_g306 * 0.75 ) + ( temp_output_25_0_g306 * -1.0 ) ) , ( ( temp_output_7_0_g306 * 0.01 ) + temp_output_25_0_g306 ) , ( temp_output_25_0_g306 + ( temp_output_7_0_g306 * 1.0 ) )));
				float4 vData7_g308 = appendResult34_g306;
				float4 localTriangleWave7_g308 = TriangleWave( vData7_g308 );
				float4 vData6_g308 = localTriangleWave7_g308;
				float4 localCubicSmooth6_g308 = CubicSmooth( vData6_g308 );
				float4 temp_output_27_0_g306 = ( ( localCubicSmooth6_g308 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break47_g306 = temp_output_27_0_g306;
				float fAngle6_g309 = ( temp_output_3_0_g306 * break34_g301.z * ( break47_g306.x + ( break47_g306.y * break47_g306.y ) ) );
				float3x3 localRotationMatrix6_g309 = RotationMatrix( vAxis6_g309 , fAngle6_g309 );
				int localCalculateWindInputs291 = ( 0 );
				float windQuality291 = (float)_WindQuality;
				float3 rotatedWindVector291 = float3( 0,0,0 );
				float3 rotatedBranchAnchor291 = float3( 0,0,0 );
				float4 windVector291 = _ST_WindVector;
				float4 windBranchAnchor291 = _ST_WindBranchAnchor;
				{
				if (windQuality291 <= 0) // WIND_QUALITY_NONE
				{
				    rotatedWindVector291 = float3(0.0f, 0.0f, 0.0f);
				    rotatedBranchAnchor291 = float3(0.0f, 0.0f, 0.0f);
				}
				else
				{
				    // compute rotated wind parameters
				    if (length(windVector291) > 0) {
				        rotatedWindVector291 = normalize(mul(windVector291.xyz, (float3x3)UNITY_MATRIX_M));
				    } else {
				        rotatedWindVector291 = 0;
				    }
				    rotatedBranchAnchor291 = normalize(mul(windBranchAnchor291.xyz, (float3x3)UNITY_MATRIX_M)) * windBranchAnchor291.w;
				}
				}
				float3 data116_g306 = rotatedWindVector291;
				float3 localClampToNonZero116_g306 = ClampToNonZero( data116_g306 );
				float3 break57_g306 = cross( temp_output_5_0_g306 , localClampToNonZero116_g306 );
				float dotResult55_g306 = dot( float3( 0,0,0 ) , temp_output_5_0_g306 );
				float clampResult56_g306 = clamp( dotResult55_g306 , -1.0 , 1.0 );
				float3 appendResult59_g306 = (float3(break57_g306.x , ( clampResult56_g306 + break57_g306.y ) , break57_g306.z));
				float3 normalizeResult60_g306 = normalize( appendResult59_g306 );
				float3 vAxis6_g312 = normalizeResult60_g306;
				float3 break9_g310 = float3( 0,0,0 );
				float temp_output_4_0_g310 = ( _GlobalTimers[_GlobalTimerId].y + temp_output_25_0_g306 );
				float4 appendResult12_g310 = (float4(( break9_g310.x + break9_g310.z + temp_output_4_0_g310 ) , ( ( 0.87 * temp_output_4_0_g310 ) + break9_g310.y ) , 0.0 , 0.0));
				float4 vData7_g311 = appendResult12_g310;
				float4 localTriangleWave7_g311 = TriangleWave( vData7_g311 );
				float4 vData6_g311 = localTriangleWave7_g311;
				float4 localCubicSmooth6_g311 = CubicSmooth( vData6_g311 );
				float4 break14_g310 = ( ( localCubicSmooth6_g311 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 ifLocalVar35_g301 = 0;
				if( temp_output_4_0_g301 <= 0.0 )
				ifLocalVar35_g301 = _ST_WindLeaf1Twitch;
				else
				ifLocalVar35_g301 = _ST_WindLeaf2Twitch;
				float3 appendResult37_g301 = (float3(ifLocalVar35_g301.xyz));
				float3 break76_g306 = appendResult37_g301;
				float4 break109_g306 = temp_output_27_0_g306;
				float fAngle6_g312 = ( temp_output_3_0_g306 * ( ( acos( clampResult56_g306 ) * break34_g301.w ) + ( pow( saturate( ( ( ( break14_g310.x * break14_g310.y * break14_g310.y ) + 1.0 ) * 0.5 ) ) , break76_g306.y ) * break76_g306.x ) + ( ( break109_g306.y + ( ( break109_g306.x * break109_g306.x ) * -1.0 ) ) * break34_g301.y ) ) );
				float3x3 localRotationMatrix6_g312 = RotationMatrix( vAxis6_g312 , fAngle6_g312 );
				float3x3 temp_output_86_0_g306 = mul( localRotationMatrix6_g309, localRotationMatrix6_g312 );
				float3 temp_output_1_0_g306 = temp_output_52_0_g301;
				float3 normalizeResult91_g306 = normalize( mul( temp_output_86_0_g306, temp_output_1_0_g306 ) );
				float3 ifLocalVar27_g301 = 0;
				if( temp_output_2_0_g301 == 4 )
				ifLocalVar27_g301 = ( normalizeResult91_g306 * length( temp_output_1_0_g306 ) );
				else
				ifLocalVar27_g301 = temp_output_52_0_g301;
				float3 ifLocalVar2_g300 = 0;
				if( temp_output_40_0_g300 <= 1.0 )
				ifLocalVar2_g300 = temp_output_6_0_g300;
				else
				ifLocalVar2_g300 = ifLocalVar27_g301;
				float3 ifLocalVar1_g300 = 0;
				if( temp_output_40_0_g300 >= 5.0 )
				ifLocalVar1_g300 = temp_output_6_0_g300;
				else
				ifLocalVar1_g300 = ifLocalVar2_g300;
				#if defined(GEOM_TYPE_BRANCH)
				float3 staticSwitch214 = staticSwitch343;
				#elif defined(GEOM_TYPE_FROND)
				float3 staticSwitch214 = staticSwitch343;
				#elif defined(GEOM_TYPE_LEAF)
				float3 staticSwitch214 = ( appendResult213 + ifLocalVar1_g300 );
				#elif defined(GEOM_TYPE_BRANCH_DETAIL)
				float3 staticSwitch214 = staticSwitch343;
				#else
				float3 staticSwitch214 = staticSwitch343;
				#endif
				float3 temp_output_3_0_g844 = staticSwitch214;
				int temp_output_24_0_g844 = _WindQuality;
				float4 break32_g844 = inputMesh.ase_texcoord;
				float2 appendResult31_g844 = (float2(break32_g844.z , break32_g844.w));
				float2 break34_g844 = appendResult31_g844;
				float temp_output_5_0_g845 = break34_g844.y;
				float3 temp_cast_10 = (temp_output_5_0_g845).xxx;
				float3 fValue10_g846 = temp_cast_10;
				float3 localUnpackNormalFromFloat10_g846 = UnpackNormalFromFloat( fValue10_g846 );
				float temp_output_4_0_g845 = break34_g844.x;
				int temp_output_7_0_g847 = 0;
				int temp_output_10_0_g847 = 1;
				float3 localGetInstancePos40_g844 = GetInstancePos();
				float3 break17_g845 = localGetInstancePos40_g844;
				float temp_output_3_0_g847 = ( break17_g845.x + break17_g845.y + _GlobalTimers[_GlobalTimerId].y );
				float fTime28_g847 = temp_output_3_0_g847;
				float temp_output_4_0_g847 = temp_output_5_0_g845;
				float fOffset28_g847 = temp_output_4_0_g847;
				float fTwitchFreqScale28_g847 = _ST_WindBranchTwitch.y;
				float temp_output_5_0_g847 = temp_output_4_0_g845;
				float fWeight28_g847 = temp_output_5_0_g847;
				int bWhip28_g847 = temp_output_7_0_g847;
				float4 localComplexOscillationInputs28_g847 = ComplexOscillationInputs( fTime28_g847 , fOffset28_g847 , fTwitchFreqScale28_g847 , fWeight28_g847 , bWhip28_g847 );
				float4 vData7_g849 = localComplexOscillationInputs28_g847;
				float4 localTriangleWave7_g849 = TriangleWave( vData7_g849 );
				float4 vData6_g849 = localTriangleWave7_g849;
				float4 localCubicSmooth6_g849 = CubicSmooth( vData6_g849 );
				float4 temp_output_29_0_g847 = ( ( localCubicSmooth6_g849 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break30_g847 = temp_output_29_0_g847;
				float temp_output_31_0_g847 = ( break30_g847.y * break30_g847.z );
				float ifLocalVar36_g847 = 0;
				if( temp_output_31_0_g847 >= 0.0 )
				ifLocalVar36_g847 = 1.0;
				else
				ifLocalVar36_g847 = ( 1.0 * -1.0 );
				float ifLocalVar35_g847 = 0;
				if( temp_output_31_0_g847 >= 0.0 )
				ifLocalVar35_g847 = temp_output_31_0_g847;
				else
				ifLocalVar35_g847 = ( temp_output_31_0_g847 * -1.0 );
				float lerpResult41_g847 = lerp( temp_output_31_0_g847 , ifLocalVar36_g847 , ifLocalVar35_g847);
				float lerpResult42_g847 = lerp( lerpResult41_g847 , ifLocalVar36_g847 , ifLocalVar35_g847);
				float temp_output_11_0_g847 = _ST_WindBranchTwitch.x;
				float fTime61_g847 = temp_output_3_0_g847;
				float fOffset61_g847 = temp_output_4_0_g847;
				float fWeight61_g847 = temp_output_5_0_g847;
				int bWhip61_g847 = temp_output_7_0_g847;
				float4 localSimpleOscillationInputs61_g847 = SimpleOscillationInputs( fTime61_g847 , fOffset61_g847 , fWeight61_g847 , bWhip61_g847 );
				float4 vData7_g848 = localSimpleOscillationInputs61_g847;
				float4 localTriangleWave7_g848 = TriangleWave( vData7_g848 );
				float4 vData6_g848 = localTriangleWave7_g848;
				float4 localCubicSmooth6_g848 = CubicSmooth( vData6_g848 );
				float4 temp_output_66_0_g847 = ( ( localCubicSmooth6_g848 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break62_g847 = temp_output_66_0_g847;
				float temp_output_64_0_g847 = ( break62_g847.x + ( break62_g847.x * break62_g847.y ) );
				float ifLocalVar17_g847 = 0;
				if( temp_output_10_0_g847 <= 0.0 )
				ifLocalVar17_g847 = temp_output_64_0_g847;
				else
				ifLocalVar17_g847 = ( ( lerpResult42_g847 * temp_output_11_0_g847 * ( 1.0 - _ST_WindVector.w ) ) + ( break30_g847.x * ( 1.0 - temp_output_11_0_g847 ) ) );
				float ifLocalVar52_g847 = 0;
				if( temp_output_7_0_g847 <= 0.0 )
				ifLocalVar52_g847 = ifLocalVar17_g847;
				else
				ifLocalVar52_g847 = ( ifLocalVar17_g847 * ( 1.0 + ( break30_g847.w * (int)_ST_WindBranchWhip.x ) ) );
				float3 temp_output_45_0_g844 = ( temp_output_3_0_g844 + ( ( localUnpackNormalFromFloat10_g846 * temp_output_4_0_g845 ) * ifLocalVar52_g847 * _ST_WindBranch.y ) );
				float temp_output_4_0_g851 = break34_g844.y;
				float3 temp_cast_12 = (temp_output_4_0_g851).xxx;
				float3 fValue10_g854 = temp_cast_12;
				float3 localUnpackNormalFromFloat10_g854 = UnpackNormalFromFloat( fValue10_g854 );
				float temp_output_3_0_g851 = break34_g844.x;
				int temp_output_7_0_g855 = 1;
				int temp_output_10_0_g855 = 1;
				float3 break17_g851 = localGetInstancePos40_g844;
				float temp_output_16_0_g851 = ( _GlobalTimers[_GlobalTimerId].y + break17_g851.x + break17_g851.y );
				float temp_output_3_0_g855 = temp_output_16_0_g851;
				float fTime28_g855 = temp_output_3_0_g855;
				float temp_output_4_0_g855 = temp_output_4_0_g851;
				float fOffset28_g855 = temp_output_4_0_g855;
				float fTwitchFreqScale28_g855 = _ST_WindBranchTwitch.y;
				float temp_output_5_0_g855 = temp_output_3_0_g851;
				float fWeight28_g855 = temp_output_5_0_g855;
				int bWhip28_g855 = temp_output_7_0_g855;
				float4 localComplexOscillationInputs28_g855 = ComplexOscillationInputs( fTime28_g855 , fOffset28_g855 , fTwitchFreqScale28_g855 , fWeight28_g855 , bWhip28_g855 );
				float4 vData7_g857 = localComplexOscillationInputs28_g855;
				float4 localTriangleWave7_g857 = TriangleWave( vData7_g857 );
				float4 vData6_g857 = localTriangleWave7_g857;
				float4 localCubicSmooth6_g857 = CubicSmooth( vData6_g857 );
				float4 temp_output_29_0_g855 = ( ( localCubicSmooth6_g857 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break30_g855 = temp_output_29_0_g855;
				float temp_output_31_0_g855 = ( break30_g855.y * break30_g855.z );
				float ifLocalVar36_g855 = 0;
				if( temp_output_31_0_g855 >= 0.0 )
				ifLocalVar36_g855 = 1.0;
				else
				ifLocalVar36_g855 = ( 1.0 * -1.0 );
				float ifLocalVar35_g855 = 0;
				if( temp_output_31_0_g855 >= 0.0 )
				ifLocalVar35_g855 = temp_output_31_0_g855;
				else
				ifLocalVar35_g855 = ( temp_output_31_0_g855 * -1.0 );
				float lerpResult41_g855 = lerp( temp_output_31_0_g855 , ifLocalVar36_g855 , ifLocalVar35_g855);
				float lerpResult42_g855 = lerp( lerpResult41_g855 , ifLocalVar36_g855 , ifLocalVar35_g855);
				float temp_output_11_0_g855 = _ST_WindBranchTwitch.x;
				float fTime61_g855 = temp_output_3_0_g855;
				float fOffset61_g855 = temp_output_4_0_g855;
				float fWeight61_g855 = temp_output_5_0_g855;
				int bWhip61_g855 = temp_output_7_0_g855;
				float4 localSimpleOscillationInputs61_g855 = SimpleOscillationInputs( fTime61_g855 , fOffset61_g855 , fWeight61_g855 , bWhip61_g855 );
				float4 vData7_g856 = localSimpleOscillationInputs61_g855;
				float4 localTriangleWave7_g856 = TriangleWave( vData7_g856 );
				float4 vData6_g856 = localTriangleWave7_g856;
				float4 localCubicSmooth6_g856 = CubicSmooth( vData6_g856 );
				float4 temp_output_66_0_g855 = ( ( localCubicSmooth6_g856 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break62_g855 = temp_output_66_0_g855;
				float temp_output_64_0_g855 = ( break62_g855.x + ( break62_g855.x * break62_g855.y ) );
				float ifLocalVar17_g855 = 0;
				if( temp_output_10_0_g855 <= 0.0 )
				ifLocalVar17_g855 = temp_output_64_0_g855;
				else
				ifLocalVar17_g855 = ( ( lerpResult42_g855 * temp_output_11_0_g855 * ( 1.0 - _ST_WindVector.w ) ) + ( break30_g855.x * ( 1.0 - temp_output_11_0_g855 ) ) );
				float temp_output_11_0_g851 = _ST_WindBranchWhip.x;
				float ifLocalVar52_g855 = 0;
				if( temp_output_7_0_g855 <= 0.0 )
				ifLocalVar52_g855 = ifLocalVar17_g855;
				else
				ifLocalVar52_g855 = ( ifLocalVar17_g855 * ( 1.0 + ( break30_g855.w * (int)temp_output_11_0_g851 ) ) );
				float3 temp_output_23_0_g851 = ( temp_output_3_0_g844 + ( ( localUnpackNormalFromFloat10_g854 * temp_output_3_0_g851 ) * ifLocalVar52_g855 * _ST_WindBranch.y ) );
				float temp_output_3_0_g852 = temp_output_4_0_g851;
				float temp_output_6_0_g852 = _ST_WindTurbulences.y;
				float4 appendResult9_g852 = (float4(( ( temp_output_16_0_g851 * 0.1 ) + temp_output_3_0_g852 ) , ( ( _ST_WindAnimation.x * temp_output_6_0_g852 * 0.1 ) + temp_output_3_0_g852 ) , 0.0 , 0.0));
				float4 vData7_g853 = appendResult9_g852;
				float4 localTriangleWave7_g853 = TriangleWave( vData7_g853 );
				float4 vData6_g853 = localTriangleWave7_g853;
				float4 localCubicSmooth6_g853 = CubicSmooth( vData6_g853 );
				float4 break16_g852 = ( ( localCubicSmooth6_g853 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 ifLocalVar59_g855 = 0;
				if( temp_output_10_0_g855 <= 0.0 )
				ifLocalVar59_g855 = temp_output_66_0_g855;
				else
				ifLocalVar59_g855 = temp_output_29_0_g855;
				float3 ifLocalVar29_g844 = 0;
				if( temp_output_24_0_g844 == 5 )
				ifLocalVar29_g844 = ( ( ( rotatedBranchAnchor291 + ( temp_output_23_0_g851 * float3( -1,0,0 ) ) ) * _ST_WindBranchAdherences.y * ( ( 1.0 - ( break16_g852.x * break16_g852.y * break16_g852.x * break16_g852.y * temp_output_6_0_g852 ) ) + ( ifLocalVar59_g855.w * _ST_WindVector.w * temp_output_11_0_g851 ) ) * temp_output_3_0_g851 ) + temp_output_23_0_g851 );
				else
				ifLocalVar29_g844 = temp_output_45_0_g844;
				float3 ifLocalVar26_g844 = 0;
				if( temp_output_24_0_g844 >= 3 )
				ifLocalVar26_g844 = ifLocalVar29_g844;
				else
				ifLocalVar26_g844 = temp_output_3_0_g844;
				#ifdef GEOM_TYPE_MESH
				float3 staticSwitch9_g844 = ifLocalVar26_g844;
				#else
				float3 staticSwitch9_g844 = temp_output_3_0_g844;
				#endif
				float3 temp_output_111_0_g858 = staticSwitch9_g844;
				float3 vPos140_g858 = temp_output_111_0_g858;
				float3 vRotatedWindVector140_g858 = rotatedWindVector291;
				float3 vPos145_g858 = temp_output_111_0_g858;
				float4 windGlobal145_g858 = _ST_WindGlobal;
				float localComputeWindAdjust145_g858 = ComputeWindAdjust( vPos145_g858 , windGlobal145_g858 );
				float3 break122_g858 = localGetInstancePos40_g844;
				float temp_output_125_0_g858 = _GlobalTimers[_GlobalTimerId].x;
				float4 appendResult126_g858 = (float4(( break122_g858.x + temp_output_125_0_g858 ) , ( break122_g858.y + ( temp_output_125_0_g858 * 0.8 ) ) , 0.0 , 0.0));
				float4 vData7_g859 = appendResult126_g858;
				float4 localTriangleWave7_g859 = TriangleWave( vData7_g859 );
				float4 vData6_g859 = localTriangleWave7_g859;
				float4 localCubicSmooth6_g859 = CubicSmooth( vData6_g859 );
				float4 break117_g858 = ( ( localCubicSmooth6_g859 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float temp_output_90_0_g858 = ( localComputeWindAdjust145_g858 * ( ( _ST_WindGlobal.y * ( break117_g858.x + ( break117_g858.y * break117_g858.y ) ) ) + ( _ST_WindBranchAdherences.x / _ST_WindGlobal.z ) ) );
				float ifLocalVar142_g858 = 0;
				if( _ST_WindGlobal.w == 0.0 )
				ifLocalVar142_g858 = 0.0;
				else
				ifLocalVar142_g858 = temp_output_90_0_g858;
				float fMoveAmount140_g858 = ifLocalVar142_g858;
				float3 localSwizzleCombineMoveAmount140_g858 = SwizzleCombineMoveAmount( vPos140_g858 , vRotatedWindVector140_g858 , fMoveAmount140_g858 );
				float3 ifLocalVar132_g858 = 0;
				if( _WindQuality <= 0 )
				ifLocalVar132_g858 = temp_output_111_0_g858;
				else
				ifLocalVar132_g858 = localSwizzleCombineMoveAmount140_g858;
				
				float3 temp_output_9_0_g300 = inputMesh.normalOS;
				float3 temp_output_7_0_g301 = temp_output_9_0_g300;
				float3 ifLocalVar30_g301 = 0;
				if( temp_output_2_0_g301 == 4 )
				ifLocalVar30_g301 = mul( temp_output_86_0_g306, temp_output_7_0_g301 );
				else
				ifLocalVar30_g301 = temp_output_7_0_g301;
				float3 ifLocalVar10_g300 = 0;
				if( temp_output_40_0_g300 <= 1.0 )
				ifLocalVar10_g300 = temp_output_9_0_g300;
				else
				ifLocalVar10_g300 = ifLocalVar30_g301;
				float3 ifLocalVar14_g300 = 0;
				if( temp_output_40_0_g300 >= 5.0 )
				ifLocalVar14_g300 = temp_output_9_0_g300;
				else
				ifLocalVar14_g300 = ifLocalVar10_g300;
				#if defined(GEOM_TYPE_BRANCH)
				float3 staticSwitch348 = inputMesh.normalOS;
				#elif defined(GEOM_TYPE_FROND)
				float3 staticSwitch348 = inputMesh.normalOS;
				#elif defined(GEOM_TYPE_LEAF)
				float3 staticSwitch348 = ifLocalVar14_g300;
				#elif defined(GEOM_TYPE_BRANCH_DETAIL)
				float3 staticSwitch348 = inputMesh.normalOS;
				#else
				float3 staticSwitch348 = inputMesh.normalOS;
				#endif
				
				outputPackedVaryingsMeshToPS.ase_texcoord5 = inputMesh.ase_texcoord;
				outputPackedVaryingsMeshToPS.ase_color = inputMesh.ase_color;
				outputPackedVaryingsMeshToPS.ase_texcoord6 = float4(inputMesh.positionOS,1);
				outputPackedVaryingsMeshToPS.ase_normal = inputMesh.normalOS;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = ifLocalVar132_g858;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS = staticSwitch348;
				inputMesh.tangentOS =  inputMesh.tangentOS ;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normalOS);
				float4 tangentWS = float4(TransformObjectToWorldDir(inputMesh.tangentOS.xyz), inputMesh.tangentOS.w);

				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.interp00.xyz = positionRWS;
				outputPackedVaryingsMeshToPS.interp01.xyz = normalWS;
				outputPackedVaryingsMeshToPS.interp02.xyzw = tangentWS;
				outputPackedVaryingsMeshToPS.interp03.xyzw = inputMesh.uv1;
				outputPackedVaryingsMeshToPS.interp04.xyzw = inputMesh.uv2;
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				float4 ase_texcoord3 : TEXCOORD3;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.uv1 = v.uv1;
				o.uv2 = v.uv2;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_color = v.ase_color;
				o.ase_texcoord3 = v.ase_texcoord3;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.uv1 = patch[0].uv1 * bary.x + patch[1].uv1 * bary.y + patch[2].uv1 * bary.z;
				o.uv2 = patch[0].uv2 * bary.x + patch[1].uv2 * bary.y + patch[2].uv2 * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			void Frag( PackedVaryingsMeshToPS packedInput,
						OUTPUT_GBUFFER(outGBuffer)
						#ifdef _DEPTHOFFSET_ON
						, out float outputDepth : SV_Depth
						#endif
						
						)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );
				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				float3 positionRWS = packedInput.interp00.xyz;
				float3 normalWS = packedInput.interp01.xyz;
				float4 tangentWS = packedInput.interp02.xyzw;

				input.positionSS = packedInput.positionCS;
				input.positionRWS = positionRWS;
				input.tangentToWorld = BuildTangentToWorld(tangentWS, normalWS);
				input.texCoord1 = packedInput.interp03.xyzw;
				input.texCoord2 = packedInput.interp04.xyzw;

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false );
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);
				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);
				SurfaceData surfaceData;
				BuiltinData builtinData;

				GlobalSurfaceDescription surfaceDescription = (GlobalSurfaceDescription)0;
				float4 appendResult170 = (float4(packedInput.ase_texcoord5.x , packedInput.ase_texcoord5.y , 0.0 , 0.0));
				float4 tex2DNode91 = tex2D( _MainTex, appendResult170.xy );
				float temp_output_93_0 = ( tex2DNode91.a * _Color.a );
				clip( temp_output_93_0 - _Cutoff);
				float ifLocalVar88 = 0;
				UNITY_BRANCH 
				if( packedInput.ase_color.a == 0.0 )
				ifLocalVar88 = packedInput.interp04.z;
				else
				ifLocalVar88 = 2.5;
				float4 appendResult86 = (float4(packedInput.interp04.x , packedInput.interp04.y , ifLocalVar88 , 0.0));
				float4 break98 = appendResult86;
				float2 appendResult99 = (float2(break98.x , break98.y));
				float4 tex2DNode97 = tex2D( _DetailTex, appendResult99 );
				float3 appendResult108 = (float3(tex2DNode97.r , tex2DNode97.g , tex2DNode97.b));
				float4 break103 = tex2DNode91;
				float3 appendResult104 = (float3(break103.r , break103.g , break103.b));
				float ifLocalVar109 = 0;
				UNITY_BRANCH 
				if( break98.z >= 2.0 )
				ifLocalVar109 = tex2DNode97.a;
				else
				ifLocalVar109 = saturate( break98.z );
				float3 lerpResult102 = lerp( appendResult108 , appendResult104 , ifLocalVar109);
				float4 appendResult106 = (float4(lerpResult102 , break103.a));
				#ifdef GEOM_TYPE_BRANCH_DETAIL
				float4 staticSwitch101 = appendResult106;
				#else
				float4 staticSwitch101 = tex2DNode91;
				#endif
				float4 break124 = staticSwitch101;
				float3 appendResult125 = (float3(break124.r , break124.g , break124.b));
				float4 color77 = IsGammaSpace() ? float4(1,0.5,0,0.1019608) : float4(1,0.2140411,0,0.1019608);
				float3 appendResult126 = (float3(color77.r , color77.g , color77.b));
				#ifdef EFFECT_HUE_VARIATION
				float staticSwitch76 = saturate( ( color77.a * ( frac( ( GetObjectToWorldMatrix()[0].w + GetObjectToWorldMatrix()[1].w + GetObjectToWorldMatrix()[2].w ) ) + ( ( frac( ( packedInput.ase_texcoord6.xyz.x + packedInput.ase_normal.x + packedInput.ase_normal.y ) ) * 0.0 ) + -0.3 ) ) ) );
				#else
				float staticSwitch76 = 0.0;
				#endif
				float3 lerpResult123 = lerp( appendResult125 , appendResult126 , staticSwitch76);
				float3 break134 = lerpResult123;
				float4 appendResult149 = (float4(saturate( ( lerpResult123 * ( ( ( max( break124.r , max( break124.g , break124.b ) ) / max( break134.x , max( break134.y , break134.z ) ) ) * 0.5 ) + 0.5 ) ) ) , staticSwitch101.a));
				#ifdef EFFECT_HUE_VARIATION
				float4 staticSwitch143 = appendResult149;
				#else
				float4 staticSwitch143 = staticSwitch101;
				#endif
				float4 appendResult151 = (float4(staticSwitch143.rgb , 0.0));
				float3 appendResult112 = (float3(_Color.r , _Color.g , _Color.b));
				float4 appendResult281 = (float4(( appendResult112 * packedInput.ase_color.r ) , _Color.a));
				float4 break158 = ( appendResult151 * appendResult281 );
				float4 appendResult155 = (float4(break158.r , break158.g , break158.b , staticSwitch143.r));
				
				float3 _ZNormal = float3(0,0,1);
				float3 tex2DNode166 = UnpackNormalScale( tex2D( _BumpMap, appendResult170.xy ), 1.0f );
				float3 lerpResult184 = lerp( tex2DNode166 , UnpackNormalScale( tex2D( _BumpMap, appendResult99 ), 1.0f ) , ifLocalVar109);
				#ifdef GEOM_TYPE_BRANCH_DETAIL
				float3 staticSwitch183 = lerpResult184;
				#else
				float3 staticSwitch183 = tex2DNode166;
				#endif
				#ifdef LIGHTMAP_ON
				float3 staticSwitch167 = _ZNormal;
				#else
				float3 staticSwitch167 = staticSwitch183;
				#endif
				#ifdef EFFECT_BUMP
				float3 staticSwitch197 = staticSwitch167;
				#else
				float3 staticSwitch197 = _ZNormal;
				#endif
				
				surfaceDescription.Albedo = appendResult155.rgb;
				surfaceDescription.Normal = staticSwitch197;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = _Metallic;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = 0;
				#endif

				surfaceDescription.Emission = 0;
				surfaceDescription.Smoothness = _Smoothness;
				surfaceDescription.Occlusion = 1;
				surfaceDescription.Alpha = temp_output_93_0;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _Cutoff;
				#endif

				#ifdef _ALPHATEST_SHADOW_ON
				surfaceDescription.AlphaClipThresholdShadow = 0.5;
				#endif

				surfaceDescription.AlphaClipThresholdDepthPrepass = 0.5;
				surfaceDescription.AlphaClipThresholdDepthPostpass = 0.5;

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceDescription.SpecularAAScreenSpaceVariance = 0;
				surfaceDescription.SpecularAAThreshold = 0;
				#endif

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceDescription.SpecularOcclusion = 0;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceDescription.Thickness = 1;
				#endif

				#ifdef _HAS_REFRACTION
				surfaceDescription.RefractionIndex = 1;
				surfaceDescription.RefractionColor = float3( 1, 1, 1 );
				surfaceDescription.RefractionDistance = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceDescription.SubsurfaceMask = 1;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceDescription.DiffusionProfile = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceDescription.Anisotropy = 1;
				surfaceDescription.Tangent = float3( 1, 0, 0 );
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceDescription.IridescenceMask = 0;
				surfaceDescription.IridescenceThickness = 0;
				#endif

				#ifdef _ASE_DISTORTION
				surfaceDescription.Distortion = float2 ( 2, -1 );
				surfaceDescription.DistortionBlur = 1;
				#endif

				#ifdef _ASE_BAKEDGI
				surfaceDescription.BakedGI = 0;
				#endif
				#ifdef _ASE_BAKEDBACKGI
				surfaceDescription.BakedBackGI = 0;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				GetSurfaceAndBuiltinData( surfaceDescription, input, V, posInput, surfaceData, builtinData );
				ENCODE_INTO_GBUFFER( surfaceData, builtinData, posInput.positionSS, outGBuffer );
				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "META"
			Tags { "LightMode"="Meta" }

			Cull Off

			HLSLPROGRAM

			#define _SPECULAR_OCCLUSION_FROM_AO 1
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define HAVE_MESH_MODIFICATION
			#define ASE_SRP_VERSION 100202


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _ALPHATEST_ON

			#define SHADERPASS SHADERPASS_LIGHT_TRANSPORT

			#pragma vertex Vert
			#pragma fragment Frag

			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#ifdef DEBUG_DISPLAY
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#endif
			
			CBUFFER_START( UnityPerMaterial )
			float4 _ST_WindBranchTwitch;
			float4 _ST_WindBranchAnchor;
			float4 _ST_WindVector;
			float4 _Color;
			float4 _ST_WindLeaf1Tumble;
			float4 _ST_WindTurbulences;
			float4 _ST_WindFrondRipple;
			float4 _ST_WindBranchAdherences;
			float4 _ST_WindAnimation;
			float4 _ST_WindLeaf2Twitch;
			float4 _ST_WindBranchWhip;
			float4 _ST_WindLeaf1Ripple;
			float4 _ST_WindLeaf2Tumble;
			float4 _ST_WindBranch;
			float4 _ST_WindLeaf2Ripple;
			float4 _ST_WindLeaf1Twitch;
			float4 _ST_WindGlobal;
			float _Metallic;
			int _Cull;
			int _WindQuality;
			int _GlobalTimerId;
			float _Cutoff;
			float _Smoothness;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			float4 _GlobalTimers[100];
			sampler2D _MainTex;
			sampler2D _DetailTex;
			sampler2D _BumpMap;


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_NORMAL
			#define ASE_NEEDS_FRAG_COLOR
			#pragma shader_feature_local GEOM_TYPE_BRANCH GEOM_TYPE_FROND GEOM_TYPE_LEAF GEOM_TYPE_BRANCH_DETAIL
			#pragma shader_feature_local EFFECT_HUE_VARIATION
			#pragma shader_feature_local GEOM_TYPE_BRANCH_DETAIL
			#pragma shader_feature_local EFFECT_BUMP


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
				#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv0 : TEXCOORD0;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 ase_color : COLOR;
				float4 ase_texcoord3 : TEXCOORD3;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_color : COLOR;
				float4 ase_texcoord2 : TEXCOORD2;
				float3 ase_normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			float3 OffsetLeavesVertex( float3 VertexPos, float ColorAlpha, float3 texcoord1, float2 texcoord3 )
			{
				float lodValue = unity_LODFade.x;
				VertexPos -= texcoord1.xyz;
				bool isFacingLeaf = ColorAlpha == 0;
				if (isFacingLeaf) {
				    #ifdef LOD_FADE_PERCENTAGE
				        VertexPos *= lerp(1.0, texcoord1.w, lodValue);
				    #endif
				    
				    // face camera-facing leaf to camera
				    float offsetLen = length(VertexPos);
				    VertexPos = mul(VertexPos.xyz, (float3x3) transpose(mul(UNITY_MATRIX_I_M, UNITY_MATRIX_I_V))); // inv(MV) * finalPosition
				    VertexPos = normalize(VertexPos) * offsetLen; // make sure the offset vector is still scaled
				}
				else
				{
				    #ifdef LOD_FADE_PERCENTAGE
				        float3 lodPosition = float3(texcoord1.w, texcoord3.x, texcoord3.y);
				        VertexPos = lerp(VertexPos, lodPosition, lodValue);
				    #endif
				}
				return VertexPos;
			}
			
			void CalculateWindInputs( float windQuality, out float3 rotatedWindVector, out float3 rotatedBranchAnchor, float4 windVector, float4 windBranchAnchor )
			{
				if (windQuality <= 0) // WIND_QUALITY_NONE
				{
				    rotatedWindVector = float3(0.0f, 0.0f, 0.0f);
				    rotatedBranchAnchor = float3(0.0f, 0.0f, 0.0f);
				}
				else
				{
				    // compute rotated wind parameters
				    if (length(windVector) > 0) {
				        rotatedWindVector = normalize(mul(windVector.xyz, (float3x3)UNITY_MATRIX_M));
				    } else {
				        rotatedWindVector = 0;
				    }
				    rotatedBranchAnchor = normalize(mul(windBranchAnchor.xyz, (float3x3)UNITY_MATRIX_M)) * windBranchAnchor.w;
				}
			}
			
			float4 CubicSmooth( float4 vData )
			{
				return vData * vData * (3.0 - 2.0 * vData);
			}
			
			float4 TriangleWave( float4 vData )
			{
				return abs((frac(vData + 0.5) * 2.0) - 1.0);
			}
			
			float3 UnpackNormalFromFloat( float3 fValue )
			{
				     float3 vDecodeKey = float3(16.0, 1.0, 0.0625);
				    // decode into [0,1] range
				    float3 vDecodedValue = frac(fValue / vDecodeKey);
				    // move back into [-1,1] range & normalize
				    return (vDecodedValue * 2.0 - 1.0);
			}
			
			float3 ClampToNonZero( float3 data )
			{
				if (length(data) > 0) {
				    return data;
				} else {
				    return float3(0.0001, 0.0001, 0.0001);
				}
			}
			
			float4 ComplexOscillationInputs( float fTime, float fOffset, float fTwitchFreqScale, float fWeight, int bWhip )
			{
				if (bWhip > 0) {
				    return float4(fTime + fOffset, fTime * fTwitchFreqScale + fOffset, fTwitchFreqScale * 0.5 * (fTime + fOffset), fTime + fOffset + (1.0 - fWeight));
				} else {
				    return float4(fTime + fOffset, fTime * fTwitchFreqScale + fOffset, fTwitchFreqScale * 0.5 * (fTime + fOffset), 0.0);
				}
			}
			
			float4 SimpleOscillationInputs( float fTime, float fOffset, float fWeight, int bWhip )
			{
				if (bWhip)
				  return float4(fTime + fOffset, fTime * 0.689 + fOffset, 0.0, fTime + fOffset + (1.0 - fWeight));
				else
				  return float4(fTime + fOffset, fTime * 0.689 + fOffset, 0.0, 0.0);
			}
			
			float3 GetInstancePos(  )
			{
				 return GetAbsolutePositionWS(float3(UNITY_MATRIX_M[0].w, UNITY_MATRIX_M[1].w, UNITY_MATRIX_M[2].w));
			}
			
			float ComputeWindAdjust( float3 vPos, float4 windGlobal )
			{
				    // compute how much the height contributes
				    float fAdjust = max(vPos.y - (1.0 / windGlobal.z) * 0.25, 0.0) * windGlobal.z;
				    if (fAdjust != 0.0) {
				        float s = sign(fAdjust);
				        fAdjust = pow(abs(fAdjust), windGlobal.w) * s;
				    }
				    return fAdjust;
			}
			
			float3 SwizzleCombineMoveAmount( float3 vPos, float3 vRotatedWindVector, float fMoveAmount )
			{
				    float fLength = length(vPos);
				 
				    vPos.xz += vRotatedWindVector.xz * fMoveAmount;
				    vPos.xyz = normalize(vPos.xyz) * fLength;
				    return vPos;
			}
			
			float3x3 RotationMatrix( float3 vAxis, float fAngle )
			{
				    // compute sin/cos of fAngle
				    float2 vSinCos;
				    #ifdef OPENGL
				        vSinCos.x = sin(fAngle);
				        vSinCos.y = cos(fAngle);
				    #else
				        sincos(fAngle, vSinCos.x, vSinCos.y);
				    #endif
				    const float c = vSinCos.y;
				    const float s = vSinCos.x;
				    const float t = 1.0 - c;
				    const float x = vAxis.x;
				    const float y = vAxis.y;
				    const float z = vAxis.z;
				    return float3x3(t * x * x + c,      t * x * y - s * z,  t * x * z + s * y,
				                    t * x * y + s * z,  t * y * y + c,      t * y * z - s * x,
				                    t * x * z - s * y,  t * y * z + s * x,  t * z * z + c);
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout GlobalSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data
				surfaceData.baseColor =					surfaceDescription.Albedo;
				surfaceData.perceptualSmoothness =		surfaceDescription.Smoothness;
				surfaceData.ambientOcclusion =			surfaceDescription.Occlusion;
				surfaceData.metallic =					surfaceDescription.Metallic;
				surfaceData.coatMask =					surfaceDescription.CoatMask;

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceData.specularOcclusion =			surfaceDescription.SpecularOcclusion;
				#endif
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.subsurfaceMask =			surfaceDescription.SubsurfaceMask;
				#endif
				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceData.thickness =					surfaceDescription.Thickness;
				#endif
				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceData.diffusionProfileHash =		asuint(surfaceDescription.DiffusionProfile);
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.specularColor =				surfaceDescription.Specular;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.anisotropy =				surfaceDescription.Anisotropy;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.iridescenceMask =			surfaceDescription.IridescenceMask;
				surfaceData.iridescenceThickness =		surfaceDescription.IridescenceThickness;
				#endif

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.ior = surfaceDescription.RefractionIndex;
					surfaceData.transmittanceColor = surfaceDescription.RefractionColor;
					surfaceData.atDistance = surfaceDescription.RefractionDistance;

					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif
				#ifdef ASE_LIT_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				normalTS = surfaceDescription.Normal;
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];

				bentNormalWS = surfaceData.normalWS;
				#ifdef ASE_BENT_NORMAL
				GetNormalWS( fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants );
				#endif

				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.tangentWS = TransformTangentToWorld( surfaceDescription.Tangent, fragInputs.tangentToWorld );
				#endif
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs.tangentToWorld[2], surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceData.perceptualSmoothness = GeometricNormalFiltering( surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[ 2 ], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold );
				#endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(GlobalSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				builtinData.emissiveColor = surfaceDescription.Emission;

				#if (SHADERPASS == SHADERPASS_DISTORTION)
				builtinData.distortion = surfaceDescription.Distortion;
				builtinData.distortionBlur = surfaceDescription.DistortionBlur;
				#else
				builtinData.distortion = float2(0.0, 0.0);
				builtinData.distortionBlur = 0.0;
				#endif

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			CBUFFER_START(UnityMetaPass)
			bool4 unity_MetaVertexControl;
			bool4 unity_MetaFragmentControl;
			CBUFFER_END

			float unity_OneOverOutputBoost;
			float unity_MaxOutputValue;

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh  )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);

				float3 temp_output_1_0_g4 = inputMesh.positionOS;
				float3 appendResult213 = (float3(inputMesh.uv1.xyz));
				float3 lerpResult13_g4 = lerp( temp_output_1_0_g4 , appendResult213 , unity_LODFade.x);
				#ifdef LOD_FADE_PERCENTAGE
				float3 staticSwitch14_g4 = lerpResult13_g4;
				#else
				float3 staticSwitch14_g4 = temp_output_1_0_g4;
				#endif
				float3 temp_output_344_0 = staticSwitch14_g4;
				float3 appendResult331 = (float3(inputMesh.uv2.xyz));
				float2 appendResult336 = (float2(inputMesh.uv0.xy));
				float2 break10_g314 = appendResult336;
				float ifLocalVar11_g314 = 0;
				UNITY_BRANCH 
				if( break10_g314.x >= 0.75 )
				ifLocalVar11_g314 = break10_g314.x;
				else
				ifLocalVar11_g314 = 0.75;
				float4 temp_cast_3 = (( ifLocalVar11_g314 + ( ( _GlobalTimers[_GlobalTimerId].y + break10_g314.y ) * _ST_WindFrondRipple.z ) )).xxxx;
				float4 vData7_g316 = temp_cast_3;
				float4 localTriangleWave7_g316 = TriangleWave( vData7_g316 );
				float4 vData6_g316 = localTriangleWave7_g316;
				float4 localCubicSmooth6_g316 = CubicSmooth( vData6_g316 );
				#ifdef GEOM_TYPE_FROND
				float3 staticSwitch343 = ( temp_output_344_0 + ( appendResult331.y * ( ( localCubicSmooth6_g316 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) ).x * _ST_WindFrondRipple.y * inputMesh.normalOS ) );
				#else
				float3 staticSwitch343 = temp_output_344_0;
				#endif
				int temp_output_40_0_g300 = _WindQuality;
				float3 VertexPos286 = inputMesh.positionOS;
				float3 appendResult112 = (float3(_Color.r , _Color.g , _Color.b));
				float4 appendResult281 = (float4(( appendResult112 * inputMesh.ase_color.r ) , _Color.a));
				float4 appendResult243 = (float4(appendResult281));
				float ColorAlpha286 = appendResult243.a;
				float3 texcoord1286 = appendResult213;
				float2 texcoord3286 = inputMesh.ase_texcoord3.xy;
				float3 localOffsetLeavesVertex286 = OffsetLeavesVertex( VertexPos286 , ColorAlpha286 , texcoord1286 , texcoord3286 );
				float3 temp_output_6_0_g300 = localOffsetLeavesVertex286;
				int temp_output_2_0_g301 = temp_output_40_0_g300;
				float4 break25_g300 = inputMesh.uv2;
				float3 temp_cast_5 = (break25_g300.z).xxx;
				float3 fValue10_g305 = temp_cast_5;
				float3 localUnpackNormalFromFloat10_g305 = UnpackNormalFromFloat( fValue10_g305 );
				float temp_output_4_0_g301 = break25_g300.w;
				float ifLocalVar19_g301 = 0;
				if( temp_output_4_0_g301 <= 0.0 )
				ifLocalVar19_g301 = _ST_WindLeaf1Ripple.y;
				else
				ifLocalVar19_g301 = _ST_WindLeaf2Ripple.y;
				float2 break24_g300 = appendResult213.xy;
				float4 break18_g301 = _GlobalTimers[_GlobalTimerId];
				float4 appendResult10_g303 = (float4(( ( break24_g300.x + break24_g300.y ) + break18_g301.y ) , 0.0 , 0.0 , 0.0));
				float4 vData7_g304 = appendResult10_g303;
				float4 localTriangleWave7_g304 = TriangleWave( vData7_g304 );
				float4 vData6_g304 = localTriangleWave7_g304;
				float4 localCubicSmooth6_g304 = CubicSmooth( vData6_g304 );
				float temp_output_8_0_g301 = break25_g300.x;
				float3 temp_output_52_0_g301 = ( temp_output_6_0_g300 + ( localUnpackNormalFromFloat10_g305 * ( ifLocalVar19_g301 * ( ( localCubicSmooth6_g304 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) ).x ) * temp_output_8_0_g301 ) );
				float temp_output_10_0_g301 = break25_g300.y;
				float3 temp_cast_7 = (temp_output_10_0_g301).xxx;
				float3 fValue10_g313 = temp_cast_7;
				float3 localUnpackNormalFromFloat10_g313 = UnpackNormalFromFloat( fValue10_g313 );
				float3 temp_output_5_0_g306 = localUnpackNormalFromFloat10_g313;
				float3 vAxis6_g309 = temp_output_5_0_g306;
				float temp_output_3_0_g306 = temp_output_8_0_g301;
				float4 ifLocalVar32_g301 = 0;
				if( temp_output_4_0_g301 <= 0.0 )
				ifLocalVar32_g301 = _ST_WindLeaf1Tumble;
				else
				ifLocalVar32_g301 = _ST_WindLeaf2Tumble;
				float4 break34_g301 = ifLocalVar32_g301;
				float temp_output_22_0_g306 = frac( ( temp_output_10_0_g301 * 30.3 ) );
				float temp_output_25_0_g306 = ( temp_output_22_0_g306 + temp_output_22_0_g306 + temp_output_22_0_g306 );
				float temp_output_7_0_g306 = break18_g301.z;
				float4 appendResult34_g306 = (float4(( temp_output_25_0_g306 + temp_output_7_0_g306 ) , ( ( temp_output_7_0_g306 * 0.75 ) + ( temp_output_25_0_g306 * -1.0 ) ) , ( ( temp_output_7_0_g306 * 0.01 ) + temp_output_25_0_g306 ) , ( temp_output_25_0_g306 + ( temp_output_7_0_g306 * 1.0 ) )));
				float4 vData7_g308 = appendResult34_g306;
				float4 localTriangleWave7_g308 = TriangleWave( vData7_g308 );
				float4 vData6_g308 = localTriangleWave7_g308;
				float4 localCubicSmooth6_g308 = CubicSmooth( vData6_g308 );
				float4 temp_output_27_0_g306 = ( ( localCubicSmooth6_g308 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break47_g306 = temp_output_27_0_g306;
				float fAngle6_g309 = ( temp_output_3_0_g306 * break34_g301.z * ( break47_g306.x + ( break47_g306.y * break47_g306.y ) ) );
				float3x3 localRotationMatrix6_g309 = RotationMatrix( vAxis6_g309 , fAngle6_g309 );
				int localCalculateWindInputs291 = ( 0 );
				float windQuality291 = (float)_WindQuality;
				float3 rotatedWindVector291 = float3( 0,0,0 );
				float3 rotatedBranchAnchor291 = float3( 0,0,0 );
				float4 windVector291 = _ST_WindVector;
				float4 windBranchAnchor291 = _ST_WindBranchAnchor;
				{
				if (windQuality291 <= 0) // WIND_QUALITY_NONE
				{
				    rotatedWindVector291 = float3(0.0f, 0.0f, 0.0f);
				    rotatedBranchAnchor291 = float3(0.0f, 0.0f, 0.0f);
				}
				else
				{
				    // compute rotated wind parameters
				    if (length(windVector291) > 0) {
				        rotatedWindVector291 = normalize(mul(windVector291.xyz, (float3x3)UNITY_MATRIX_M));
				    } else {
				        rotatedWindVector291 = 0;
				    }
				    rotatedBranchAnchor291 = normalize(mul(windBranchAnchor291.xyz, (float3x3)UNITY_MATRIX_M)) * windBranchAnchor291.w;
				}
				}
				float3 data116_g306 = rotatedWindVector291;
				float3 localClampToNonZero116_g306 = ClampToNonZero( data116_g306 );
				float3 break57_g306 = cross( temp_output_5_0_g306 , localClampToNonZero116_g306 );
				float dotResult55_g306 = dot( float3( 0,0,0 ) , temp_output_5_0_g306 );
				float clampResult56_g306 = clamp( dotResult55_g306 , -1.0 , 1.0 );
				float3 appendResult59_g306 = (float3(break57_g306.x , ( clampResult56_g306 + break57_g306.y ) , break57_g306.z));
				float3 normalizeResult60_g306 = normalize( appendResult59_g306 );
				float3 vAxis6_g312 = normalizeResult60_g306;
				float3 break9_g310 = float3( 0,0,0 );
				float temp_output_4_0_g310 = ( _GlobalTimers[_GlobalTimerId].y + temp_output_25_0_g306 );
				float4 appendResult12_g310 = (float4(( break9_g310.x + break9_g310.z + temp_output_4_0_g310 ) , ( ( 0.87 * temp_output_4_0_g310 ) + break9_g310.y ) , 0.0 , 0.0));
				float4 vData7_g311 = appendResult12_g310;
				float4 localTriangleWave7_g311 = TriangleWave( vData7_g311 );
				float4 vData6_g311 = localTriangleWave7_g311;
				float4 localCubicSmooth6_g311 = CubicSmooth( vData6_g311 );
				float4 break14_g310 = ( ( localCubicSmooth6_g311 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 ifLocalVar35_g301 = 0;
				if( temp_output_4_0_g301 <= 0.0 )
				ifLocalVar35_g301 = _ST_WindLeaf1Twitch;
				else
				ifLocalVar35_g301 = _ST_WindLeaf2Twitch;
				float3 appendResult37_g301 = (float3(ifLocalVar35_g301.xyz));
				float3 break76_g306 = appendResult37_g301;
				float4 break109_g306 = temp_output_27_0_g306;
				float fAngle6_g312 = ( temp_output_3_0_g306 * ( ( acos( clampResult56_g306 ) * break34_g301.w ) + ( pow( saturate( ( ( ( break14_g310.x * break14_g310.y * break14_g310.y ) + 1.0 ) * 0.5 ) ) , break76_g306.y ) * break76_g306.x ) + ( ( break109_g306.y + ( ( break109_g306.x * break109_g306.x ) * -1.0 ) ) * break34_g301.y ) ) );
				float3x3 localRotationMatrix6_g312 = RotationMatrix( vAxis6_g312 , fAngle6_g312 );
				float3x3 temp_output_86_0_g306 = mul( localRotationMatrix6_g309, localRotationMatrix6_g312 );
				float3 temp_output_1_0_g306 = temp_output_52_0_g301;
				float3 normalizeResult91_g306 = normalize( mul( temp_output_86_0_g306, temp_output_1_0_g306 ) );
				float3 ifLocalVar27_g301 = 0;
				if( temp_output_2_0_g301 == 4 )
				ifLocalVar27_g301 = ( normalizeResult91_g306 * length( temp_output_1_0_g306 ) );
				else
				ifLocalVar27_g301 = temp_output_52_0_g301;
				float3 ifLocalVar2_g300 = 0;
				if( temp_output_40_0_g300 <= 1.0 )
				ifLocalVar2_g300 = temp_output_6_0_g300;
				else
				ifLocalVar2_g300 = ifLocalVar27_g301;
				float3 ifLocalVar1_g300 = 0;
				if( temp_output_40_0_g300 >= 5.0 )
				ifLocalVar1_g300 = temp_output_6_0_g300;
				else
				ifLocalVar1_g300 = ifLocalVar2_g300;
				#if defined(GEOM_TYPE_BRANCH)
				float3 staticSwitch214 = staticSwitch343;
				#elif defined(GEOM_TYPE_FROND)
				float3 staticSwitch214 = staticSwitch343;
				#elif defined(GEOM_TYPE_LEAF)
				float3 staticSwitch214 = ( appendResult213 + ifLocalVar1_g300 );
				#elif defined(GEOM_TYPE_BRANCH_DETAIL)
				float3 staticSwitch214 = staticSwitch343;
				#else
				float3 staticSwitch214 = staticSwitch343;
				#endif
				float3 temp_output_3_0_g844 = staticSwitch214;
				int temp_output_24_0_g844 = _WindQuality;
				float4 break32_g844 = inputMesh.uv0;
				float2 appendResult31_g844 = (float2(break32_g844.z , break32_g844.w));
				float2 break34_g844 = appendResult31_g844;
				float temp_output_5_0_g845 = break34_g844.y;
				float3 temp_cast_10 = (temp_output_5_0_g845).xxx;
				float3 fValue10_g846 = temp_cast_10;
				float3 localUnpackNormalFromFloat10_g846 = UnpackNormalFromFloat( fValue10_g846 );
				float temp_output_4_0_g845 = break34_g844.x;
				int temp_output_7_0_g847 = 0;
				int temp_output_10_0_g847 = 1;
				float3 localGetInstancePos40_g844 = GetInstancePos();
				float3 break17_g845 = localGetInstancePos40_g844;
				float temp_output_3_0_g847 = ( break17_g845.x + break17_g845.y + _GlobalTimers[_GlobalTimerId].y );
				float fTime28_g847 = temp_output_3_0_g847;
				float temp_output_4_0_g847 = temp_output_5_0_g845;
				float fOffset28_g847 = temp_output_4_0_g847;
				float fTwitchFreqScale28_g847 = _ST_WindBranchTwitch.y;
				float temp_output_5_0_g847 = temp_output_4_0_g845;
				float fWeight28_g847 = temp_output_5_0_g847;
				int bWhip28_g847 = temp_output_7_0_g847;
				float4 localComplexOscillationInputs28_g847 = ComplexOscillationInputs( fTime28_g847 , fOffset28_g847 , fTwitchFreqScale28_g847 , fWeight28_g847 , bWhip28_g847 );
				float4 vData7_g849 = localComplexOscillationInputs28_g847;
				float4 localTriangleWave7_g849 = TriangleWave( vData7_g849 );
				float4 vData6_g849 = localTriangleWave7_g849;
				float4 localCubicSmooth6_g849 = CubicSmooth( vData6_g849 );
				float4 temp_output_29_0_g847 = ( ( localCubicSmooth6_g849 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break30_g847 = temp_output_29_0_g847;
				float temp_output_31_0_g847 = ( break30_g847.y * break30_g847.z );
				float ifLocalVar36_g847 = 0;
				if( temp_output_31_0_g847 >= 0.0 )
				ifLocalVar36_g847 = 1.0;
				else
				ifLocalVar36_g847 = ( 1.0 * -1.0 );
				float ifLocalVar35_g847 = 0;
				if( temp_output_31_0_g847 >= 0.0 )
				ifLocalVar35_g847 = temp_output_31_0_g847;
				else
				ifLocalVar35_g847 = ( temp_output_31_0_g847 * -1.0 );
				float lerpResult41_g847 = lerp( temp_output_31_0_g847 , ifLocalVar36_g847 , ifLocalVar35_g847);
				float lerpResult42_g847 = lerp( lerpResult41_g847 , ifLocalVar36_g847 , ifLocalVar35_g847);
				float temp_output_11_0_g847 = _ST_WindBranchTwitch.x;
				float fTime61_g847 = temp_output_3_0_g847;
				float fOffset61_g847 = temp_output_4_0_g847;
				float fWeight61_g847 = temp_output_5_0_g847;
				int bWhip61_g847 = temp_output_7_0_g847;
				float4 localSimpleOscillationInputs61_g847 = SimpleOscillationInputs( fTime61_g847 , fOffset61_g847 , fWeight61_g847 , bWhip61_g847 );
				float4 vData7_g848 = localSimpleOscillationInputs61_g847;
				float4 localTriangleWave7_g848 = TriangleWave( vData7_g848 );
				float4 vData6_g848 = localTriangleWave7_g848;
				float4 localCubicSmooth6_g848 = CubicSmooth( vData6_g848 );
				float4 temp_output_66_0_g847 = ( ( localCubicSmooth6_g848 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break62_g847 = temp_output_66_0_g847;
				float temp_output_64_0_g847 = ( break62_g847.x + ( break62_g847.x * break62_g847.y ) );
				float ifLocalVar17_g847 = 0;
				if( temp_output_10_0_g847 <= 0.0 )
				ifLocalVar17_g847 = temp_output_64_0_g847;
				else
				ifLocalVar17_g847 = ( ( lerpResult42_g847 * temp_output_11_0_g847 * ( 1.0 - _ST_WindVector.w ) ) + ( break30_g847.x * ( 1.0 - temp_output_11_0_g847 ) ) );
				float ifLocalVar52_g847 = 0;
				if( temp_output_7_0_g847 <= 0.0 )
				ifLocalVar52_g847 = ifLocalVar17_g847;
				else
				ifLocalVar52_g847 = ( ifLocalVar17_g847 * ( 1.0 + ( break30_g847.w * (int)_ST_WindBranchWhip.x ) ) );
				float3 temp_output_45_0_g844 = ( temp_output_3_0_g844 + ( ( localUnpackNormalFromFloat10_g846 * temp_output_4_0_g845 ) * ifLocalVar52_g847 * _ST_WindBranch.y ) );
				float temp_output_4_0_g851 = break34_g844.y;
				float3 temp_cast_12 = (temp_output_4_0_g851).xxx;
				float3 fValue10_g854 = temp_cast_12;
				float3 localUnpackNormalFromFloat10_g854 = UnpackNormalFromFloat( fValue10_g854 );
				float temp_output_3_0_g851 = break34_g844.x;
				int temp_output_7_0_g855 = 1;
				int temp_output_10_0_g855 = 1;
				float3 break17_g851 = localGetInstancePos40_g844;
				float temp_output_16_0_g851 = ( _GlobalTimers[_GlobalTimerId].y + break17_g851.x + break17_g851.y );
				float temp_output_3_0_g855 = temp_output_16_0_g851;
				float fTime28_g855 = temp_output_3_0_g855;
				float temp_output_4_0_g855 = temp_output_4_0_g851;
				float fOffset28_g855 = temp_output_4_0_g855;
				float fTwitchFreqScale28_g855 = _ST_WindBranchTwitch.y;
				float temp_output_5_0_g855 = temp_output_3_0_g851;
				float fWeight28_g855 = temp_output_5_0_g855;
				int bWhip28_g855 = temp_output_7_0_g855;
				float4 localComplexOscillationInputs28_g855 = ComplexOscillationInputs( fTime28_g855 , fOffset28_g855 , fTwitchFreqScale28_g855 , fWeight28_g855 , bWhip28_g855 );
				float4 vData7_g857 = localComplexOscillationInputs28_g855;
				float4 localTriangleWave7_g857 = TriangleWave( vData7_g857 );
				float4 vData6_g857 = localTriangleWave7_g857;
				float4 localCubicSmooth6_g857 = CubicSmooth( vData6_g857 );
				float4 temp_output_29_0_g855 = ( ( localCubicSmooth6_g857 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break30_g855 = temp_output_29_0_g855;
				float temp_output_31_0_g855 = ( break30_g855.y * break30_g855.z );
				float ifLocalVar36_g855 = 0;
				if( temp_output_31_0_g855 >= 0.0 )
				ifLocalVar36_g855 = 1.0;
				else
				ifLocalVar36_g855 = ( 1.0 * -1.0 );
				float ifLocalVar35_g855 = 0;
				if( temp_output_31_0_g855 >= 0.0 )
				ifLocalVar35_g855 = temp_output_31_0_g855;
				else
				ifLocalVar35_g855 = ( temp_output_31_0_g855 * -1.0 );
				float lerpResult41_g855 = lerp( temp_output_31_0_g855 , ifLocalVar36_g855 , ifLocalVar35_g855);
				float lerpResult42_g855 = lerp( lerpResult41_g855 , ifLocalVar36_g855 , ifLocalVar35_g855);
				float temp_output_11_0_g855 = _ST_WindBranchTwitch.x;
				float fTime61_g855 = temp_output_3_0_g855;
				float fOffset61_g855 = temp_output_4_0_g855;
				float fWeight61_g855 = temp_output_5_0_g855;
				int bWhip61_g855 = temp_output_7_0_g855;
				float4 localSimpleOscillationInputs61_g855 = SimpleOscillationInputs( fTime61_g855 , fOffset61_g855 , fWeight61_g855 , bWhip61_g855 );
				float4 vData7_g856 = localSimpleOscillationInputs61_g855;
				float4 localTriangleWave7_g856 = TriangleWave( vData7_g856 );
				float4 vData6_g856 = localTriangleWave7_g856;
				float4 localCubicSmooth6_g856 = CubicSmooth( vData6_g856 );
				float4 temp_output_66_0_g855 = ( ( localCubicSmooth6_g856 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break62_g855 = temp_output_66_0_g855;
				float temp_output_64_0_g855 = ( break62_g855.x + ( break62_g855.x * break62_g855.y ) );
				float ifLocalVar17_g855 = 0;
				if( temp_output_10_0_g855 <= 0.0 )
				ifLocalVar17_g855 = temp_output_64_0_g855;
				else
				ifLocalVar17_g855 = ( ( lerpResult42_g855 * temp_output_11_0_g855 * ( 1.0 - _ST_WindVector.w ) ) + ( break30_g855.x * ( 1.0 - temp_output_11_0_g855 ) ) );
				float temp_output_11_0_g851 = _ST_WindBranchWhip.x;
				float ifLocalVar52_g855 = 0;
				if( temp_output_7_0_g855 <= 0.0 )
				ifLocalVar52_g855 = ifLocalVar17_g855;
				else
				ifLocalVar52_g855 = ( ifLocalVar17_g855 * ( 1.0 + ( break30_g855.w * (int)temp_output_11_0_g851 ) ) );
				float3 temp_output_23_0_g851 = ( temp_output_3_0_g844 + ( ( localUnpackNormalFromFloat10_g854 * temp_output_3_0_g851 ) * ifLocalVar52_g855 * _ST_WindBranch.y ) );
				float temp_output_3_0_g852 = temp_output_4_0_g851;
				float temp_output_6_0_g852 = _ST_WindTurbulences.y;
				float4 appendResult9_g852 = (float4(( ( temp_output_16_0_g851 * 0.1 ) + temp_output_3_0_g852 ) , ( ( _ST_WindAnimation.x * temp_output_6_0_g852 * 0.1 ) + temp_output_3_0_g852 ) , 0.0 , 0.0));
				float4 vData7_g853 = appendResult9_g852;
				float4 localTriangleWave7_g853 = TriangleWave( vData7_g853 );
				float4 vData6_g853 = localTriangleWave7_g853;
				float4 localCubicSmooth6_g853 = CubicSmooth( vData6_g853 );
				float4 break16_g852 = ( ( localCubicSmooth6_g853 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 ifLocalVar59_g855 = 0;
				if( temp_output_10_0_g855 <= 0.0 )
				ifLocalVar59_g855 = temp_output_66_0_g855;
				else
				ifLocalVar59_g855 = temp_output_29_0_g855;
				float3 ifLocalVar29_g844 = 0;
				if( temp_output_24_0_g844 == 5 )
				ifLocalVar29_g844 = ( ( ( rotatedBranchAnchor291 + ( temp_output_23_0_g851 * float3( -1,0,0 ) ) ) * _ST_WindBranchAdherences.y * ( ( 1.0 - ( break16_g852.x * break16_g852.y * break16_g852.x * break16_g852.y * temp_output_6_0_g852 ) ) + ( ifLocalVar59_g855.w * _ST_WindVector.w * temp_output_11_0_g851 ) ) * temp_output_3_0_g851 ) + temp_output_23_0_g851 );
				else
				ifLocalVar29_g844 = temp_output_45_0_g844;
				float3 ifLocalVar26_g844 = 0;
				if( temp_output_24_0_g844 >= 3 )
				ifLocalVar26_g844 = ifLocalVar29_g844;
				else
				ifLocalVar26_g844 = temp_output_3_0_g844;
				#ifdef GEOM_TYPE_MESH
				float3 staticSwitch9_g844 = ifLocalVar26_g844;
				#else
				float3 staticSwitch9_g844 = temp_output_3_0_g844;
				#endif
				float3 temp_output_111_0_g858 = staticSwitch9_g844;
				float3 vPos140_g858 = temp_output_111_0_g858;
				float3 vRotatedWindVector140_g858 = rotatedWindVector291;
				float3 vPos145_g858 = temp_output_111_0_g858;
				float4 windGlobal145_g858 = _ST_WindGlobal;
				float localComputeWindAdjust145_g858 = ComputeWindAdjust( vPos145_g858 , windGlobal145_g858 );
				float3 break122_g858 = localGetInstancePos40_g844;
				float temp_output_125_0_g858 = _GlobalTimers[_GlobalTimerId].x;
				float4 appendResult126_g858 = (float4(( break122_g858.x + temp_output_125_0_g858 ) , ( break122_g858.y + ( temp_output_125_0_g858 * 0.8 ) ) , 0.0 , 0.0));
				float4 vData7_g859 = appendResult126_g858;
				float4 localTriangleWave7_g859 = TriangleWave( vData7_g859 );
				float4 vData6_g859 = localTriangleWave7_g859;
				float4 localCubicSmooth6_g859 = CubicSmooth( vData6_g859 );
				float4 break117_g858 = ( ( localCubicSmooth6_g859 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float temp_output_90_0_g858 = ( localComputeWindAdjust145_g858 * ( ( _ST_WindGlobal.y * ( break117_g858.x + ( break117_g858.y * break117_g858.y ) ) ) + ( _ST_WindBranchAdherences.x / _ST_WindGlobal.z ) ) );
				float ifLocalVar142_g858 = 0;
				if( _ST_WindGlobal.w == 0.0 )
				ifLocalVar142_g858 = 0.0;
				else
				ifLocalVar142_g858 = temp_output_90_0_g858;
				float fMoveAmount140_g858 = ifLocalVar142_g858;
				float3 localSwizzleCombineMoveAmount140_g858 = SwizzleCombineMoveAmount( vPos140_g858 , vRotatedWindVector140_g858 , fMoveAmount140_g858 );
				float3 ifLocalVar132_g858 = 0;
				if( _WindQuality <= 0 )
				ifLocalVar132_g858 = temp_output_111_0_g858;
				else
				ifLocalVar132_g858 = localSwizzleCombineMoveAmount140_g858;
				
				float3 temp_output_9_0_g300 = inputMesh.normalOS;
				float3 temp_output_7_0_g301 = temp_output_9_0_g300;
				float3 ifLocalVar30_g301 = 0;
				if( temp_output_2_0_g301 == 4 )
				ifLocalVar30_g301 = mul( temp_output_86_0_g306, temp_output_7_0_g301 );
				else
				ifLocalVar30_g301 = temp_output_7_0_g301;
				float3 ifLocalVar10_g300 = 0;
				if( temp_output_40_0_g300 <= 1.0 )
				ifLocalVar10_g300 = temp_output_9_0_g300;
				else
				ifLocalVar10_g300 = ifLocalVar30_g301;
				float3 ifLocalVar14_g300 = 0;
				if( temp_output_40_0_g300 >= 5.0 )
				ifLocalVar14_g300 = temp_output_9_0_g300;
				else
				ifLocalVar14_g300 = ifLocalVar10_g300;
				#if defined(GEOM_TYPE_BRANCH)
				float3 staticSwitch348 = inputMesh.normalOS;
				#elif defined(GEOM_TYPE_FROND)
				float3 staticSwitch348 = inputMesh.normalOS;
				#elif defined(GEOM_TYPE_LEAF)
				float3 staticSwitch348 = ifLocalVar14_g300;
				#elif defined(GEOM_TYPE_BRANCH_DETAIL)
				float3 staticSwitch348 = inputMesh.normalOS;
				#else
				float3 staticSwitch348 = inputMesh.normalOS;
				#endif
				
				outputPackedVaryingsMeshToPS.ase_texcoord = inputMesh.uv0;
				outputPackedVaryingsMeshToPS.ase_texcoord1 = inputMesh.uv2;
				outputPackedVaryingsMeshToPS.ase_color = inputMesh.ase_color;
				outputPackedVaryingsMeshToPS.ase_texcoord2 = float4(inputMesh.positionOS,1);
				outputPackedVaryingsMeshToPS.ase_normal = inputMesh.normalOS;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = ifLocalVar132_g858;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS = staticSwitch348;
				inputMesh.tangentOS =  inputMesh.tangentOS ;

				float2 uv = float2(0.0, 0.0);
				if (unity_MetaVertexControl.x)
				{
					uv = inputMesh.uv1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				}
				else if (unity_MetaVertexControl.y)
				{
					uv = inputMesh.uv2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				}

				outputPackedVaryingsMeshToPS.positionCS = float4(uv * 2.0 - 1.0, inputMesh.positionOS.z > 0 ? 1.0e-4 : 0.0, 1.0);
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv0 : TEXCOORD0;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 ase_color : COLOR;
				float4 ase_texcoord3 : TEXCOORD3;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.uv0 = v.uv0;
				o.uv1 = v.uv1;
				o.uv2 = v.uv2;
				o.ase_color = v.ase_color;
				o.ase_texcoord3 = v.ase_texcoord3;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.uv0 = patch[0].uv0 * bary.x + patch[1].uv0 * bary.y + patch[2].uv0 * bary.z;
				o.uv1 = patch[0].uv1 * bary.x + patch[1].uv1 * bary.y + patch[2].uv1 * bary.z;
				o.uv2 = patch[0].uv2 * bary.x + patch[1].uv2 * bary.y + patch[2].uv2 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			float4 Frag(PackedVaryingsMeshToPS packedInput  ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( packedInput );
				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE(packedInput.cullFace, true, false);
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);
				float3 V = float3(1.0, 1.0, 1.0);

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GlobalSurfaceDescription surfaceDescription = (GlobalSurfaceDescription)0;
				float4 appendResult170 = (float4(packedInput.ase_texcoord.x , packedInput.ase_texcoord.y , 0.0 , 0.0));
				float4 tex2DNode91 = tex2D( _MainTex, appendResult170.xy );
				float temp_output_93_0 = ( tex2DNode91.a * _Color.a );
				clip( temp_output_93_0 - _Cutoff);
				float ifLocalVar88 = 0;
				UNITY_BRANCH 
				if( packedInput.ase_color.a == 0.0 )
				ifLocalVar88 = packedInput.ase_texcoord1.z;
				else
				ifLocalVar88 = 2.5;
				float4 appendResult86 = (float4(packedInput.ase_texcoord1.x , packedInput.ase_texcoord1.y , ifLocalVar88 , 0.0));
				float4 break98 = appendResult86;
				float2 appendResult99 = (float2(break98.x , break98.y));
				float4 tex2DNode97 = tex2D( _DetailTex, appendResult99 );
				float3 appendResult108 = (float3(tex2DNode97.r , tex2DNode97.g , tex2DNode97.b));
				float4 break103 = tex2DNode91;
				float3 appendResult104 = (float3(break103.r , break103.g , break103.b));
				float ifLocalVar109 = 0;
				UNITY_BRANCH 
				if( break98.z >= 2.0 )
				ifLocalVar109 = tex2DNode97.a;
				else
				ifLocalVar109 = saturate( break98.z );
				float3 lerpResult102 = lerp( appendResult108 , appendResult104 , ifLocalVar109);
				float4 appendResult106 = (float4(lerpResult102 , break103.a));
				#ifdef GEOM_TYPE_BRANCH_DETAIL
				float4 staticSwitch101 = appendResult106;
				#else
				float4 staticSwitch101 = tex2DNode91;
				#endif
				float4 break124 = staticSwitch101;
				float3 appendResult125 = (float3(break124.r , break124.g , break124.b));
				float4 color77 = IsGammaSpace() ? float4(1,0.5,0,0.1019608) : float4(1,0.2140411,0,0.1019608);
				float3 appendResult126 = (float3(color77.r , color77.g , color77.b));
				#ifdef EFFECT_HUE_VARIATION
				float staticSwitch76 = saturate( ( color77.a * ( frac( ( GetObjectToWorldMatrix()[0].w + GetObjectToWorldMatrix()[1].w + GetObjectToWorldMatrix()[2].w ) ) + ( ( frac( ( packedInput.ase_texcoord2.xyz.x + packedInput.ase_normal.x + packedInput.ase_normal.y ) ) * 0.0 ) + -0.3 ) ) ) );
				#else
				float staticSwitch76 = 0.0;
				#endif
				float3 lerpResult123 = lerp( appendResult125 , appendResult126 , staticSwitch76);
				float3 break134 = lerpResult123;
				float4 appendResult149 = (float4(saturate( ( lerpResult123 * ( ( ( max( break124.r , max( break124.g , break124.b ) ) / max( break134.x , max( break134.y , break134.z ) ) ) * 0.5 ) + 0.5 ) ) ) , staticSwitch101.a));
				#ifdef EFFECT_HUE_VARIATION
				float4 staticSwitch143 = appendResult149;
				#else
				float4 staticSwitch143 = staticSwitch101;
				#endif
				float4 appendResult151 = (float4(staticSwitch143.rgb , 0.0));
				float3 appendResult112 = (float3(_Color.r , _Color.g , _Color.b));
				float4 appendResult281 = (float4(( appendResult112 * packedInput.ase_color.r ) , _Color.a));
				float4 break158 = ( appendResult151 * appendResult281 );
				float4 appendResult155 = (float4(break158.r , break158.g , break158.b , staticSwitch143.r));
				
				float3 _ZNormal = float3(0,0,1);
				float3 tex2DNode166 = UnpackNormalScale( tex2D( _BumpMap, appendResult170.xy ), 1.0f );
				float3 lerpResult184 = lerp( tex2DNode166 , UnpackNormalScale( tex2D( _BumpMap, appendResult99 ), 1.0f ) , ifLocalVar109);
				#ifdef GEOM_TYPE_BRANCH_DETAIL
				float3 staticSwitch183 = lerpResult184;
				#else
				float3 staticSwitch183 = tex2DNode166;
				#endif
				#ifdef LIGHTMAP_ON
				float3 staticSwitch167 = _ZNormal;
				#else
				float3 staticSwitch167 = staticSwitch183;
				#endif
				#ifdef EFFECT_BUMP
				float3 staticSwitch197 = staticSwitch167;
				#else
				float3 staticSwitch197 = _ZNormal;
				#endif
				
				surfaceDescription.Albedo = appendResult155.rgb;
				surfaceDescription.Normal = staticSwitch197;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = _Metallic;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = 0;
				#endif

				surfaceDescription.Emission = 0;
				surfaceDescription.Smoothness = _Smoothness;
				surfaceDescription.Occlusion = 1;
				surfaceDescription.Alpha = temp_output_93_0;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _Cutoff;
				#endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceDescription.SpecularAAScreenSpaceVariance = 0;
				surfaceDescription.SpecularAAThreshold = 0;
				#endif

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceDescription.SpecularOcclusion = 0;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceDescription.Thickness = 1;
				#endif

				#ifdef _HAS_REFRACTION
				surfaceDescription.RefractionIndex = 1;
				surfaceDescription.RefractionColor = float3( 1, 1, 1 );
				surfaceDescription.RefractionDistance = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceDescription.SubsurfaceMask = 1;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceDescription.DiffusionProfile = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceDescription.Anisotropy = 1;
				surfaceDescription.Tangent = float3( 1, 0, 0 );
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceDescription.IridescenceMask = 0;
				surfaceDescription.IridescenceThickness = 0;
				#endif

				GetSurfaceAndBuiltinData(surfaceDescription,input, V, posInput, surfaceData, builtinData);

				BSDFData bsdfData = ConvertSurfaceDataToBSDFData(input.positionSS.xy, surfaceData);
				LightTransportData lightTransportData = GetLightTransportData(surfaceData, builtinData, bsdfData);

				float4 res = float4(0.0, 0.0, 0.0, 1.0);
				if (unity_MetaFragmentControl.x)
				{
					res.rgb = clamp(pow(abs(lightTransportData.diffuseColor), saturate(unity_OneOverOutputBoost)), 0, unity_MaxOutputValue);
				}

				if (unity_MetaFragmentControl.y)
				{
					res.rgb = lightTransportData.emissiveColor;
				}

				return res;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }

			Cull [_CullMode]
			ZWrite On
			ZClip [_ZClip]
			ZTest LEqual
			ColorMask 0

			HLSLPROGRAM

			#define _SPECULAR_OCCLUSION_FROM_AO 1
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define HAVE_MESH_MODIFICATION
			#define ASE_SRP_VERSION 100202


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _ALPHATEST_ON

			#define SHADERPASS SHADERPASS_SHADOWS

			#pragma vertex Vert
			#pragma fragment Frag

			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			//#define USE_LEGACY_UNITY_MATRIX_VARIABLES

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#ifdef DEBUG_DISPLAY
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#endif

			CBUFFER_START( UnityPerMaterial )
			float4 _ST_WindBranchTwitch;
			float4 _ST_WindBranchAnchor;
			float4 _ST_WindVector;
			float4 _Color;
			float4 _ST_WindLeaf1Tumble;
			float4 _ST_WindTurbulences;
			float4 _ST_WindFrondRipple;
			float4 _ST_WindBranchAdherences;
			float4 _ST_WindAnimation;
			float4 _ST_WindLeaf2Twitch;
			float4 _ST_WindBranchWhip;
			float4 _ST_WindLeaf1Ripple;
			float4 _ST_WindLeaf2Tumble;
			float4 _ST_WindBranch;
			float4 _ST_WindLeaf2Ripple;
			float4 _ST_WindLeaf1Twitch;
			float4 _ST_WindGlobal;
			float _Metallic;
			int _Cull;
			int _WindQuality;
			int _GlobalTimerId;
			float _Cutoff;
			float _Smoothness;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			float4 _GlobalTimers[100];
			sampler2D _MainTex;


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#pragma shader_feature_local GEOM_TYPE_BRANCH GEOM_TYPE_FROND GEOM_TYPE_LEAF GEOM_TYPE_BRANCH_DETAIL


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
				#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				float4 ase_texcoord3 : TEXCOORD3;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 interp00 : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			float3 OffsetLeavesVertex( float3 VertexPos, float ColorAlpha, float3 texcoord1, float2 texcoord3 )
			{
				float lodValue = unity_LODFade.x;
				VertexPos -= texcoord1.xyz;
				bool isFacingLeaf = ColorAlpha == 0;
				if (isFacingLeaf) {
				    #ifdef LOD_FADE_PERCENTAGE
				        VertexPos *= lerp(1.0, texcoord1.w, lodValue);
				    #endif
				    
				    // face camera-facing leaf to camera
				    float offsetLen = length(VertexPos);
				    VertexPos = mul(VertexPos.xyz, (float3x3) transpose(mul(UNITY_MATRIX_I_M, UNITY_MATRIX_I_V))); // inv(MV) * finalPosition
				    VertexPos = normalize(VertexPos) * offsetLen; // make sure the offset vector is still scaled
				}
				else
				{
				    #ifdef LOD_FADE_PERCENTAGE
				        float3 lodPosition = float3(texcoord1.w, texcoord3.x, texcoord3.y);
				        VertexPos = lerp(VertexPos, lodPosition, lodValue);
				    #endif
				}
				return VertexPos;
			}
			
			void CalculateWindInputs( float windQuality, out float3 rotatedWindVector, out float3 rotatedBranchAnchor, float4 windVector, float4 windBranchAnchor )
			{
				if (windQuality <= 0) // WIND_QUALITY_NONE
				{
				    rotatedWindVector = float3(0.0f, 0.0f, 0.0f);
				    rotatedBranchAnchor = float3(0.0f, 0.0f, 0.0f);
				}
				else
				{
				    // compute rotated wind parameters
				    if (length(windVector) > 0) {
				        rotatedWindVector = normalize(mul(windVector.xyz, (float3x3)UNITY_MATRIX_M));
				    } else {
				        rotatedWindVector = 0;
				    }
				    rotatedBranchAnchor = normalize(mul(windBranchAnchor.xyz, (float3x3)UNITY_MATRIX_M)) * windBranchAnchor.w;
				}
			}
			
			float4 CubicSmooth( float4 vData )
			{
				return vData * vData * (3.0 - 2.0 * vData);
			}
			
			float4 TriangleWave( float4 vData )
			{
				return abs((frac(vData + 0.5) * 2.0) - 1.0);
			}
			
			float3 UnpackNormalFromFloat( float3 fValue )
			{
				     float3 vDecodeKey = float3(16.0, 1.0, 0.0625);
				    // decode into [0,1] range
				    float3 vDecodedValue = frac(fValue / vDecodeKey);
				    // move back into [-1,1] range & normalize
				    return (vDecodedValue * 2.0 - 1.0);
			}
			
			float3 ClampToNonZero( float3 data )
			{
				if (length(data) > 0) {
				    return data;
				} else {
				    return float3(0.0001, 0.0001, 0.0001);
				}
			}
			
			float4 ComplexOscillationInputs( float fTime, float fOffset, float fTwitchFreqScale, float fWeight, int bWhip )
			{
				if (bWhip > 0) {
				    return float4(fTime + fOffset, fTime * fTwitchFreqScale + fOffset, fTwitchFreqScale * 0.5 * (fTime + fOffset), fTime + fOffset + (1.0 - fWeight));
				} else {
				    return float4(fTime + fOffset, fTime * fTwitchFreqScale + fOffset, fTwitchFreqScale * 0.5 * (fTime + fOffset), 0.0);
				}
			}
			
			float4 SimpleOscillationInputs( float fTime, float fOffset, float fWeight, int bWhip )
			{
				if (bWhip)
				  return float4(fTime + fOffset, fTime * 0.689 + fOffset, 0.0, fTime + fOffset + (1.0 - fWeight));
				else
				  return float4(fTime + fOffset, fTime * 0.689 + fOffset, 0.0, 0.0);
			}
			
			float3 GetInstancePos(  )
			{
				 return GetAbsolutePositionWS(float3(UNITY_MATRIX_M[0].w, UNITY_MATRIX_M[1].w, UNITY_MATRIX_M[2].w));
			}
			
			float ComputeWindAdjust( float3 vPos, float4 windGlobal )
			{
				    // compute how much the height contributes
				    float fAdjust = max(vPos.y - (1.0 / windGlobal.z) * 0.25, 0.0) * windGlobal.z;
				    if (fAdjust != 0.0) {
				        float s = sign(fAdjust);
				        fAdjust = pow(abs(fAdjust), windGlobal.w) * s;
				    }
				    return fAdjust;
			}
			
			float3 SwizzleCombineMoveAmount( float3 vPos, float3 vRotatedWindVector, float fMoveAmount )
			{
				    float fLength = length(vPos);
				 
				    vPos.xz += vRotatedWindVector.xz * fMoveAmount;
				    vPos.xyz = normalize(vPos.xyz) * fLength;
				    return vPos;
			}
			
			float3x3 RotationMatrix( float3 vAxis, float fAngle )
			{
				    // compute sin/cos of fAngle
				    float2 vSinCos;
				    #ifdef OPENGL
				        vSinCos.x = sin(fAngle);
				        vSinCos.y = cos(fAngle);
				    #else
				        sincos(fAngle, vSinCos.x, vSinCos.y);
				    #endif
				    const float c = vSinCos.y;
				    const float s = vSinCos.x;
				    const float t = 1.0 - c;
				    const float x = vAxis.x;
				    const float y = vAxis.y;
				    const float z = vAxis.z;
				    return float3x3(t * x * x + c,      t * x * y - s * z,  t * x * z + s * y,
				                    t * x * y + s * z,  t * y * y + c,      t * y * z - s * x,
				                    t * x * z - s * y,  t * y * z + s * x,  t * z * z + c);
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout AlphaSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif
				#ifdef ASE_LIT_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];

				bentNormalWS = surfaceData.normalWS;

				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs.tangentToWorld[2], surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(AlphaSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				#ifdef _ALPHATEST_ON
				#ifdef _ALPHATEST_SHADOW_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdShadow );
				#else
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;
				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				float3 temp_output_1_0_g4 = inputMesh.positionOS;
				float3 appendResult213 = (float3(inputMesh.ase_texcoord1.xyz));
				float3 lerpResult13_g4 = lerp( temp_output_1_0_g4 , appendResult213 , unity_LODFade.x);
				#ifdef LOD_FADE_PERCENTAGE
				float3 staticSwitch14_g4 = lerpResult13_g4;
				#else
				float3 staticSwitch14_g4 = temp_output_1_0_g4;
				#endif
				float3 temp_output_344_0 = staticSwitch14_g4;
				float3 appendResult331 = (float3(inputMesh.ase_texcoord2.xyz));
				float2 appendResult336 = (float2(inputMesh.ase_texcoord.xy));
				float2 break10_g314 = appendResult336;
				float ifLocalVar11_g314 = 0;
				UNITY_BRANCH 
				if( break10_g314.x >= 0.75 )
				ifLocalVar11_g314 = break10_g314.x;
				else
				ifLocalVar11_g314 = 0.75;
				float4 temp_cast_3 = (( ifLocalVar11_g314 + ( ( _GlobalTimers[_GlobalTimerId].y + break10_g314.y ) * _ST_WindFrondRipple.z ) )).xxxx;
				float4 vData7_g316 = temp_cast_3;
				float4 localTriangleWave7_g316 = TriangleWave( vData7_g316 );
				float4 vData6_g316 = localTriangleWave7_g316;
				float4 localCubicSmooth6_g316 = CubicSmooth( vData6_g316 );
				#ifdef GEOM_TYPE_FROND
				float3 staticSwitch343 = ( temp_output_344_0 + ( appendResult331.y * ( ( localCubicSmooth6_g316 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) ).x * _ST_WindFrondRipple.y * inputMesh.normalOS ) );
				#else
				float3 staticSwitch343 = temp_output_344_0;
				#endif
				int temp_output_40_0_g300 = _WindQuality;
				float3 VertexPos286 = inputMesh.positionOS;
				float3 appendResult112 = (float3(_Color.r , _Color.g , _Color.b));
				float4 appendResult281 = (float4(( appendResult112 * inputMesh.ase_color.r ) , _Color.a));
				float4 appendResult243 = (float4(appendResult281));
				float ColorAlpha286 = appendResult243.a;
				float3 texcoord1286 = appendResult213;
				float2 texcoord3286 = inputMesh.ase_texcoord3.xy;
				float3 localOffsetLeavesVertex286 = OffsetLeavesVertex( VertexPos286 , ColorAlpha286 , texcoord1286 , texcoord3286 );
				float3 temp_output_6_0_g300 = localOffsetLeavesVertex286;
				int temp_output_2_0_g301 = temp_output_40_0_g300;
				float4 break25_g300 = inputMesh.ase_texcoord2;
				float3 temp_cast_5 = (break25_g300.z).xxx;
				float3 fValue10_g305 = temp_cast_5;
				float3 localUnpackNormalFromFloat10_g305 = UnpackNormalFromFloat( fValue10_g305 );
				float temp_output_4_0_g301 = break25_g300.w;
				float ifLocalVar19_g301 = 0;
				if( temp_output_4_0_g301 <= 0.0 )
				ifLocalVar19_g301 = _ST_WindLeaf1Ripple.y;
				else
				ifLocalVar19_g301 = _ST_WindLeaf2Ripple.y;
				float2 break24_g300 = appendResult213.xy;
				float4 break18_g301 = _GlobalTimers[_GlobalTimerId];
				float4 appendResult10_g303 = (float4(( ( break24_g300.x + break24_g300.y ) + break18_g301.y ) , 0.0 , 0.0 , 0.0));
				float4 vData7_g304 = appendResult10_g303;
				float4 localTriangleWave7_g304 = TriangleWave( vData7_g304 );
				float4 vData6_g304 = localTriangleWave7_g304;
				float4 localCubicSmooth6_g304 = CubicSmooth( vData6_g304 );
				float temp_output_8_0_g301 = break25_g300.x;
				float3 temp_output_52_0_g301 = ( temp_output_6_0_g300 + ( localUnpackNormalFromFloat10_g305 * ( ifLocalVar19_g301 * ( ( localCubicSmooth6_g304 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) ).x ) * temp_output_8_0_g301 ) );
				float temp_output_10_0_g301 = break25_g300.y;
				float3 temp_cast_7 = (temp_output_10_0_g301).xxx;
				float3 fValue10_g313 = temp_cast_7;
				float3 localUnpackNormalFromFloat10_g313 = UnpackNormalFromFloat( fValue10_g313 );
				float3 temp_output_5_0_g306 = localUnpackNormalFromFloat10_g313;
				float3 vAxis6_g309 = temp_output_5_0_g306;
				float temp_output_3_0_g306 = temp_output_8_0_g301;
				float4 ifLocalVar32_g301 = 0;
				if( temp_output_4_0_g301 <= 0.0 )
				ifLocalVar32_g301 = _ST_WindLeaf1Tumble;
				else
				ifLocalVar32_g301 = _ST_WindLeaf2Tumble;
				float4 break34_g301 = ifLocalVar32_g301;
				float temp_output_22_0_g306 = frac( ( temp_output_10_0_g301 * 30.3 ) );
				float temp_output_25_0_g306 = ( temp_output_22_0_g306 + temp_output_22_0_g306 + temp_output_22_0_g306 );
				float temp_output_7_0_g306 = break18_g301.z;
				float4 appendResult34_g306 = (float4(( temp_output_25_0_g306 + temp_output_7_0_g306 ) , ( ( temp_output_7_0_g306 * 0.75 ) + ( temp_output_25_0_g306 * -1.0 ) ) , ( ( temp_output_7_0_g306 * 0.01 ) + temp_output_25_0_g306 ) , ( temp_output_25_0_g306 + ( temp_output_7_0_g306 * 1.0 ) )));
				float4 vData7_g308 = appendResult34_g306;
				float4 localTriangleWave7_g308 = TriangleWave( vData7_g308 );
				float4 vData6_g308 = localTriangleWave7_g308;
				float4 localCubicSmooth6_g308 = CubicSmooth( vData6_g308 );
				float4 temp_output_27_0_g306 = ( ( localCubicSmooth6_g308 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break47_g306 = temp_output_27_0_g306;
				float fAngle6_g309 = ( temp_output_3_0_g306 * break34_g301.z * ( break47_g306.x + ( break47_g306.y * break47_g306.y ) ) );
				float3x3 localRotationMatrix6_g309 = RotationMatrix( vAxis6_g309 , fAngle6_g309 );
				int localCalculateWindInputs291 = ( 0 );
				float windQuality291 = (float)_WindQuality;
				float3 rotatedWindVector291 = float3( 0,0,0 );
				float3 rotatedBranchAnchor291 = float3( 0,0,0 );
				float4 windVector291 = _ST_WindVector;
				float4 windBranchAnchor291 = _ST_WindBranchAnchor;
				{
				if (windQuality291 <= 0) // WIND_QUALITY_NONE
				{
				    rotatedWindVector291 = float3(0.0f, 0.0f, 0.0f);
				    rotatedBranchAnchor291 = float3(0.0f, 0.0f, 0.0f);
				}
				else
				{
				    // compute rotated wind parameters
				    if (length(windVector291) > 0) {
				        rotatedWindVector291 = normalize(mul(windVector291.xyz, (float3x3)UNITY_MATRIX_M));
				    } else {
				        rotatedWindVector291 = 0;
				    }
				    rotatedBranchAnchor291 = normalize(mul(windBranchAnchor291.xyz, (float3x3)UNITY_MATRIX_M)) * windBranchAnchor291.w;
				}
				}
				float3 data116_g306 = rotatedWindVector291;
				float3 localClampToNonZero116_g306 = ClampToNonZero( data116_g306 );
				float3 break57_g306 = cross( temp_output_5_0_g306 , localClampToNonZero116_g306 );
				float dotResult55_g306 = dot( float3( 0,0,0 ) , temp_output_5_0_g306 );
				float clampResult56_g306 = clamp( dotResult55_g306 , -1.0 , 1.0 );
				float3 appendResult59_g306 = (float3(break57_g306.x , ( clampResult56_g306 + break57_g306.y ) , break57_g306.z));
				float3 normalizeResult60_g306 = normalize( appendResult59_g306 );
				float3 vAxis6_g312 = normalizeResult60_g306;
				float3 break9_g310 = float3( 0,0,0 );
				float temp_output_4_0_g310 = ( _GlobalTimers[_GlobalTimerId].y + temp_output_25_0_g306 );
				float4 appendResult12_g310 = (float4(( break9_g310.x + break9_g310.z + temp_output_4_0_g310 ) , ( ( 0.87 * temp_output_4_0_g310 ) + break9_g310.y ) , 0.0 , 0.0));
				float4 vData7_g311 = appendResult12_g310;
				float4 localTriangleWave7_g311 = TriangleWave( vData7_g311 );
				float4 vData6_g311 = localTriangleWave7_g311;
				float4 localCubicSmooth6_g311 = CubicSmooth( vData6_g311 );
				float4 break14_g310 = ( ( localCubicSmooth6_g311 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 ifLocalVar35_g301 = 0;
				if( temp_output_4_0_g301 <= 0.0 )
				ifLocalVar35_g301 = _ST_WindLeaf1Twitch;
				else
				ifLocalVar35_g301 = _ST_WindLeaf2Twitch;
				float3 appendResult37_g301 = (float3(ifLocalVar35_g301.xyz));
				float3 break76_g306 = appendResult37_g301;
				float4 break109_g306 = temp_output_27_0_g306;
				float fAngle6_g312 = ( temp_output_3_0_g306 * ( ( acos( clampResult56_g306 ) * break34_g301.w ) + ( pow( saturate( ( ( ( break14_g310.x * break14_g310.y * break14_g310.y ) + 1.0 ) * 0.5 ) ) , break76_g306.y ) * break76_g306.x ) + ( ( break109_g306.y + ( ( break109_g306.x * break109_g306.x ) * -1.0 ) ) * break34_g301.y ) ) );
				float3x3 localRotationMatrix6_g312 = RotationMatrix( vAxis6_g312 , fAngle6_g312 );
				float3x3 temp_output_86_0_g306 = mul( localRotationMatrix6_g309, localRotationMatrix6_g312 );
				float3 temp_output_1_0_g306 = temp_output_52_0_g301;
				float3 normalizeResult91_g306 = normalize( mul( temp_output_86_0_g306, temp_output_1_0_g306 ) );
				float3 ifLocalVar27_g301 = 0;
				if( temp_output_2_0_g301 == 4 )
				ifLocalVar27_g301 = ( normalizeResult91_g306 * length( temp_output_1_0_g306 ) );
				else
				ifLocalVar27_g301 = temp_output_52_0_g301;
				float3 ifLocalVar2_g300 = 0;
				if( temp_output_40_0_g300 <= 1.0 )
				ifLocalVar2_g300 = temp_output_6_0_g300;
				else
				ifLocalVar2_g300 = ifLocalVar27_g301;
				float3 ifLocalVar1_g300 = 0;
				if( temp_output_40_0_g300 >= 5.0 )
				ifLocalVar1_g300 = temp_output_6_0_g300;
				else
				ifLocalVar1_g300 = ifLocalVar2_g300;
				#if defined(GEOM_TYPE_BRANCH)
				float3 staticSwitch214 = staticSwitch343;
				#elif defined(GEOM_TYPE_FROND)
				float3 staticSwitch214 = staticSwitch343;
				#elif defined(GEOM_TYPE_LEAF)
				float3 staticSwitch214 = ( appendResult213 + ifLocalVar1_g300 );
				#elif defined(GEOM_TYPE_BRANCH_DETAIL)
				float3 staticSwitch214 = staticSwitch343;
				#else
				float3 staticSwitch214 = staticSwitch343;
				#endif
				float3 temp_output_3_0_g844 = staticSwitch214;
				int temp_output_24_0_g844 = _WindQuality;
				float4 break32_g844 = inputMesh.ase_texcoord;
				float2 appendResult31_g844 = (float2(break32_g844.z , break32_g844.w));
				float2 break34_g844 = appendResult31_g844;
				float temp_output_5_0_g845 = break34_g844.y;
				float3 temp_cast_10 = (temp_output_5_0_g845).xxx;
				float3 fValue10_g846 = temp_cast_10;
				float3 localUnpackNormalFromFloat10_g846 = UnpackNormalFromFloat( fValue10_g846 );
				float temp_output_4_0_g845 = break34_g844.x;
				int temp_output_7_0_g847 = 0;
				int temp_output_10_0_g847 = 1;
				float3 localGetInstancePos40_g844 = GetInstancePos();
				float3 break17_g845 = localGetInstancePos40_g844;
				float temp_output_3_0_g847 = ( break17_g845.x + break17_g845.y + _GlobalTimers[_GlobalTimerId].y );
				float fTime28_g847 = temp_output_3_0_g847;
				float temp_output_4_0_g847 = temp_output_5_0_g845;
				float fOffset28_g847 = temp_output_4_0_g847;
				float fTwitchFreqScale28_g847 = _ST_WindBranchTwitch.y;
				float temp_output_5_0_g847 = temp_output_4_0_g845;
				float fWeight28_g847 = temp_output_5_0_g847;
				int bWhip28_g847 = temp_output_7_0_g847;
				float4 localComplexOscillationInputs28_g847 = ComplexOscillationInputs( fTime28_g847 , fOffset28_g847 , fTwitchFreqScale28_g847 , fWeight28_g847 , bWhip28_g847 );
				float4 vData7_g849 = localComplexOscillationInputs28_g847;
				float4 localTriangleWave7_g849 = TriangleWave( vData7_g849 );
				float4 vData6_g849 = localTriangleWave7_g849;
				float4 localCubicSmooth6_g849 = CubicSmooth( vData6_g849 );
				float4 temp_output_29_0_g847 = ( ( localCubicSmooth6_g849 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break30_g847 = temp_output_29_0_g847;
				float temp_output_31_0_g847 = ( break30_g847.y * break30_g847.z );
				float ifLocalVar36_g847 = 0;
				if( temp_output_31_0_g847 >= 0.0 )
				ifLocalVar36_g847 = 1.0;
				else
				ifLocalVar36_g847 = ( 1.0 * -1.0 );
				float ifLocalVar35_g847 = 0;
				if( temp_output_31_0_g847 >= 0.0 )
				ifLocalVar35_g847 = temp_output_31_0_g847;
				else
				ifLocalVar35_g847 = ( temp_output_31_0_g847 * -1.0 );
				float lerpResult41_g847 = lerp( temp_output_31_0_g847 , ifLocalVar36_g847 , ifLocalVar35_g847);
				float lerpResult42_g847 = lerp( lerpResult41_g847 , ifLocalVar36_g847 , ifLocalVar35_g847);
				float temp_output_11_0_g847 = _ST_WindBranchTwitch.x;
				float fTime61_g847 = temp_output_3_0_g847;
				float fOffset61_g847 = temp_output_4_0_g847;
				float fWeight61_g847 = temp_output_5_0_g847;
				int bWhip61_g847 = temp_output_7_0_g847;
				float4 localSimpleOscillationInputs61_g847 = SimpleOscillationInputs( fTime61_g847 , fOffset61_g847 , fWeight61_g847 , bWhip61_g847 );
				float4 vData7_g848 = localSimpleOscillationInputs61_g847;
				float4 localTriangleWave7_g848 = TriangleWave( vData7_g848 );
				float4 vData6_g848 = localTriangleWave7_g848;
				float4 localCubicSmooth6_g848 = CubicSmooth( vData6_g848 );
				float4 temp_output_66_0_g847 = ( ( localCubicSmooth6_g848 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break62_g847 = temp_output_66_0_g847;
				float temp_output_64_0_g847 = ( break62_g847.x + ( break62_g847.x * break62_g847.y ) );
				float ifLocalVar17_g847 = 0;
				if( temp_output_10_0_g847 <= 0.0 )
				ifLocalVar17_g847 = temp_output_64_0_g847;
				else
				ifLocalVar17_g847 = ( ( lerpResult42_g847 * temp_output_11_0_g847 * ( 1.0 - _ST_WindVector.w ) ) + ( break30_g847.x * ( 1.0 - temp_output_11_0_g847 ) ) );
				float ifLocalVar52_g847 = 0;
				if( temp_output_7_0_g847 <= 0.0 )
				ifLocalVar52_g847 = ifLocalVar17_g847;
				else
				ifLocalVar52_g847 = ( ifLocalVar17_g847 * ( 1.0 + ( break30_g847.w * (int)_ST_WindBranchWhip.x ) ) );
				float3 temp_output_45_0_g844 = ( temp_output_3_0_g844 + ( ( localUnpackNormalFromFloat10_g846 * temp_output_4_0_g845 ) * ifLocalVar52_g847 * _ST_WindBranch.y ) );
				float temp_output_4_0_g851 = break34_g844.y;
				float3 temp_cast_12 = (temp_output_4_0_g851).xxx;
				float3 fValue10_g854 = temp_cast_12;
				float3 localUnpackNormalFromFloat10_g854 = UnpackNormalFromFloat( fValue10_g854 );
				float temp_output_3_0_g851 = break34_g844.x;
				int temp_output_7_0_g855 = 1;
				int temp_output_10_0_g855 = 1;
				float3 break17_g851 = localGetInstancePos40_g844;
				float temp_output_16_0_g851 = ( _GlobalTimers[_GlobalTimerId].y + break17_g851.x + break17_g851.y );
				float temp_output_3_0_g855 = temp_output_16_0_g851;
				float fTime28_g855 = temp_output_3_0_g855;
				float temp_output_4_0_g855 = temp_output_4_0_g851;
				float fOffset28_g855 = temp_output_4_0_g855;
				float fTwitchFreqScale28_g855 = _ST_WindBranchTwitch.y;
				float temp_output_5_0_g855 = temp_output_3_0_g851;
				float fWeight28_g855 = temp_output_5_0_g855;
				int bWhip28_g855 = temp_output_7_0_g855;
				float4 localComplexOscillationInputs28_g855 = ComplexOscillationInputs( fTime28_g855 , fOffset28_g855 , fTwitchFreqScale28_g855 , fWeight28_g855 , bWhip28_g855 );
				float4 vData7_g857 = localComplexOscillationInputs28_g855;
				float4 localTriangleWave7_g857 = TriangleWave( vData7_g857 );
				float4 vData6_g857 = localTriangleWave7_g857;
				float4 localCubicSmooth6_g857 = CubicSmooth( vData6_g857 );
				float4 temp_output_29_0_g855 = ( ( localCubicSmooth6_g857 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break30_g855 = temp_output_29_0_g855;
				float temp_output_31_0_g855 = ( break30_g855.y * break30_g855.z );
				float ifLocalVar36_g855 = 0;
				if( temp_output_31_0_g855 >= 0.0 )
				ifLocalVar36_g855 = 1.0;
				else
				ifLocalVar36_g855 = ( 1.0 * -1.0 );
				float ifLocalVar35_g855 = 0;
				if( temp_output_31_0_g855 >= 0.0 )
				ifLocalVar35_g855 = temp_output_31_0_g855;
				else
				ifLocalVar35_g855 = ( temp_output_31_0_g855 * -1.0 );
				float lerpResult41_g855 = lerp( temp_output_31_0_g855 , ifLocalVar36_g855 , ifLocalVar35_g855);
				float lerpResult42_g855 = lerp( lerpResult41_g855 , ifLocalVar36_g855 , ifLocalVar35_g855);
				float temp_output_11_0_g855 = _ST_WindBranchTwitch.x;
				float fTime61_g855 = temp_output_3_0_g855;
				float fOffset61_g855 = temp_output_4_0_g855;
				float fWeight61_g855 = temp_output_5_0_g855;
				int bWhip61_g855 = temp_output_7_0_g855;
				float4 localSimpleOscillationInputs61_g855 = SimpleOscillationInputs( fTime61_g855 , fOffset61_g855 , fWeight61_g855 , bWhip61_g855 );
				float4 vData7_g856 = localSimpleOscillationInputs61_g855;
				float4 localTriangleWave7_g856 = TriangleWave( vData7_g856 );
				float4 vData6_g856 = localTriangleWave7_g856;
				float4 localCubicSmooth6_g856 = CubicSmooth( vData6_g856 );
				float4 temp_output_66_0_g855 = ( ( localCubicSmooth6_g856 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break62_g855 = temp_output_66_0_g855;
				float temp_output_64_0_g855 = ( break62_g855.x + ( break62_g855.x * break62_g855.y ) );
				float ifLocalVar17_g855 = 0;
				if( temp_output_10_0_g855 <= 0.0 )
				ifLocalVar17_g855 = temp_output_64_0_g855;
				else
				ifLocalVar17_g855 = ( ( lerpResult42_g855 * temp_output_11_0_g855 * ( 1.0 - _ST_WindVector.w ) ) + ( break30_g855.x * ( 1.0 - temp_output_11_0_g855 ) ) );
				float temp_output_11_0_g851 = _ST_WindBranchWhip.x;
				float ifLocalVar52_g855 = 0;
				if( temp_output_7_0_g855 <= 0.0 )
				ifLocalVar52_g855 = ifLocalVar17_g855;
				else
				ifLocalVar52_g855 = ( ifLocalVar17_g855 * ( 1.0 + ( break30_g855.w * (int)temp_output_11_0_g851 ) ) );
				float3 temp_output_23_0_g851 = ( temp_output_3_0_g844 + ( ( localUnpackNormalFromFloat10_g854 * temp_output_3_0_g851 ) * ifLocalVar52_g855 * _ST_WindBranch.y ) );
				float temp_output_3_0_g852 = temp_output_4_0_g851;
				float temp_output_6_0_g852 = _ST_WindTurbulences.y;
				float4 appendResult9_g852 = (float4(( ( temp_output_16_0_g851 * 0.1 ) + temp_output_3_0_g852 ) , ( ( _ST_WindAnimation.x * temp_output_6_0_g852 * 0.1 ) + temp_output_3_0_g852 ) , 0.0 , 0.0));
				float4 vData7_g853 = appendResult9_g852;
				float4 localTriangleWave7_g853 = TriangleWave( vData7_g853 );
				float4 vData6_g853 = localTriangleWave7_g853;
				float4 localCubicSmooth6_g853 = CubicSmooth( vData6_g853 );
				float4 break16_g852 = ( ( localCubicSmooth6_g853 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 ifLocalVar59_g855 = 0;
				if( temp_output_10_0_g855 <= 0.0 )
				ifLocalVar59_g855 = temp_output_66_0_g855;
				else
				ifLocalVar59_g855 = temp_output_29_0_g855;
				float3 ifLocalVar29_g844 = 0;
				if( temp_output_24_0_g844 == 5 )
				ifLocalVar29_g844 = ( ( ( rotatedBranchAnchor291 + ( temp_output_23_0_g851 * float3( -1,0,0 ) ) ) * _ST_WindBranchAdherences.y * ( ( 1.0 - ( break16_g852.x * break16_g852.y * break16_g852.x * break16_g852.y * temp_output_6_0_g852 ) ) + ( ifLocalVar59_g855.w * _ST_WindVector.w * temp_output_11_0_g851 ) ) * temp_output_3_0_g851 ) + temp_output_23_0_g851 );
				else
				ifLocalVar29_g844 = temp_output_45_0_g844;
				float3 ifLocalVar26_g844 = 0;
				if( temp_output_24_0_g844 >= 3 )
				ifLocalVar26_g844 = ifLocalVar29_g844;
				else
				ifLocalVar26_g844 = temp_output_3_0_g844;
				#ifdef GEOM_TYPE_MESH
				float3 staticSwitch9_g844 = ifLocalVar26_g844;
				#else
				float3 staticSwitch9_g844 = temp_output_3_0_g844;
				#endif
				float3 temp_output_111_0_g858 = staticSwitch9_g844;
				float3 vPos140_g858 = temp_output_111_0_g858;
				float3 vRotatedWindVector140_g858 = rotatedWindVector291;
				float3 vPos145_g858 = temp_output_111_0_g858;
				float4 windGlobal145_g858 = _ST_WindGlobal;
				float localComputeWindAdjust145_g858 = ComputeWindAdjust( vPos145_g858 , windGlobal145_g858 );
				float3 break122_g858 = localGetInstancePos40_g844;
				float temp_output_125_0_g858 = _GlobalTimers[_GlobalTimerId].x;
				float4 appendResult126_g858 = (float4(( break122_g858.x + temp_output_125_0_g858 ) , ( break122_g858.y + ( temp_output_125_0_g858 * 0.8 ) ) , 0.0 , 0.0));
				float4 vData7_g859 = appendResult126_g858;
				float4 localTriangleWave7_g859 = TriangleWave( vData7_g859 );
				float4 vData6_g859 = localTriangleWave7_g859;
				float4 localCubicSmooth6_g859 = CubicSmooth( vData6_g859 );
				float4 break117_g858 = ( ( localCubicSmooth6_g859 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float temp_output_90_0_g858 = ( localComputeWindAdjust145_g858 * ( ( _ST_WindGlobal.y * ( break117_g858.x + ( break117_g858.y * break117_g858.y ) ) ) + ( _ST_WindBranchAdherences.x / _ST_WindGlobal.z ) ) );
				float ifLocalVar142_g858 = 0;
				if( _ST_WindGlobal.w == 0.0 )
				ifLocalVar142_g858 = 0.0;
				else
				ifLocalVar142_g858 = temp_output_90_0_g858;
				float fMoveAmount140_g858 = ifLocalVar142_g858;
				float3 localSwizzleCombineMoveAmount140_g858 = SwizzleCombineMoveAmount( vPos140_g858 , vRotatedWindVector140_g858 , fMoveAmount140_g858 );
				float3 ifLocalVar132_g858 = 0;
				if( _WindQuality <= 0 )
				ifLocalVar132_g858 = temp_output_111_0_g858;
				else
				ifLocalVar132_g858 = localSwizzleCombineMoveAmount140_g858;
				
				float3 temp_output_9_0_g300 = inputMesh.normalOS;
				float3 temp_output_7_0_g301 = temp_output_9_0_g300;
				float3 ifLocalVar30_g301 = 0;
				if( temp_output_2_0_g301 == 4 )
				ifLocalVar30_g301 = mul( temp_output_86_0_g306, temp_output_7_0_g301 );
				else
				ifLocalVar30_g301 = temp_output_7_0_g301;
				float3 ifLocalVar10_g300 = 0;
				if( temp_output_40_0_g300 <= 1.0 )
				ifLocalVar10_g300 = temp_output_9_0_g300;
				else
				ifLocalVar10_g300 = ifLocalVar30_g301;
				float3 ifLocalVar14_g300 = 0;
				if( temp_output_40_0_g300 >= 5.0 )
				ifLocalVar14_g300 = temp_output_9_0_g300;
				else
				ifLocalVar14_g300 = ifLocalVar10_g300;
				#if defined(GEOM_TYPE_BRANCH)
				float3 staticSwitch348 = inputMesh.normalOS;
				#elif defined(GEOM_TYPE_FROND)
				float3 staticSwitch348 = inputMesh.normalOS;
				#elif defined(GEOM_TYPE_LEAF)
				float3 staticSwitch348 = ifLocalVar14_g300;
				#elif defined(GEOM_TYPE_BRANCH_DETAIL)
				float3 staticSwitch348 = inputMesh.normalOS;
				#else
				float3 staticSwitch348 = inputMesh.normalOS;
				#endif
				
				outputPackedVaryingsMeshToPS.ase_texcoord1 = inputMesh.ase_texcoord;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = ifLocalVar132_g858;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS = staticSwitch348;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.interp00.xyz = positionRWS;
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				float4 ase_texcoord3 : TEXCOORD3;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.ase_texcoord1 = v.ase_texcoord1;
				o.ase_texcoord2 = v.ase_texcoord2;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_color = v.ase_color;
				o.ase_texcoord3 = v.ase_texcoord3;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.ase_texcoord1 = patch[0].ase_texcoord1 * bary.x + patch[1].ase_texcoord1 * bary.y + patch[2].ase_texcoord1 * bary.z;
				o.ase_texcoord2 = patch[0].ase_texcoord2 * bary.x + patch[1].ase_texcoord2 * bary.y + patch[2].ase_texcoord2 * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif
			
			void Frag( PackedVaryingsMeshToPS packedInput
						#ifdef WRITE_NORMAL_BUFFER
						, out float4 outNormalBuffer : SV_Target0
							#ifdef WRITE_MSAA_DEPTH
							, out float1 depthColor : SV_Target1
							#endif
						#elif defined(WRITE_MSAA_DEPTH)
						, out float4 outNormalBuffer : SV_Target0
						, out float1 depthColor : SV_Target1
						#elif defined(SCENESELECTIONPASS)
						, out float4 outColor : SV_Target0
						#endif
						#ifdef _DEPTHOFFSET_ON
						, out float outputDepth : SV_Depth
						#endif
						
					)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );

				float3 positionRWS = packedInput.interp00.xyz;

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);

				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				input.positionRWS = positionRWS;

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false );
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				AlphaSurfaceDescription surfaceDescription = (AlphaSurfaceDescription)0;
				float4 appendResult170 = (float4(packedInput.ase_texcoord1.x , packedInput.ase_texcoord1.y , 0.0 , 0.0));
				float4 tex2DNode91 = tex2D( _MainTex, appendResult170.xy );
				float temp_output_93_0 = ( tex2DNode91.a * _Color.a );
				
				surfaceDescription.Alpha = temp_output_93_0;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _Cutoff;
				#endif

				#ifdef _ALPHATEST_SHADOW_ON
				surfaceDescription.AlphaClipThresholdShadow = 0.5;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription, input, V, posInput, surfaceData, builtinData);

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif

				#ifdef WRITE_NORMAL_BUFFER
				EncodeIntoNormalBuffer( ConvertSurfaceDataToNormalData( surfaceData ), posInput.positionSS, outNormalBuffer );
				#ifdef WRITE_MSAA_DEPTH
				depthColor = packedInput.positionCS.z;
				#endif
				#elif defined(WRITE_MSAA_DEPTH)
				outNormalBuffer = float4( 0.0, 0.0, 0.0, 1.0 );
				depthColor = packedInput.positionCS.z;
				#elif defined(SCENESELECTIONPASS)
				outColor = float4( _ObjectId, _PassValue, 1.0, 1.0 );
				#endif
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "SceneSelectionPass"
			Tags { "LightMode"="SceneSelectionPass" }
			ColorMask 0

			HLSLPROGRAM

			#define _SPECULAR_OCCLUSION_FROM_AO 1
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define HAVE_MESH_MODIFICATION
			#define ASE_SRP_VERSION 100202


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _ALPHATEST_ON

			#define SHADERPASS SHADERPASS_DEPTH_ONLY
			#define SCENESELECTIONPASS
			#pragma editor_sync_compilation

			#pragma vertex Vert
			#pragma fragment Frag

			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#ifdef DEBUG_DISPLAY
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#endif

			CBUFFER_START( UnityPerMaterial )
			float4 _ST_WindBranchTwitch;
			float4 _ST_WindBranchAnchor;
			float4 _ST_WindVector;
			float4 _Color;
			float4 _ST_WindLeaf1Tumble;
			float4 _ST_WindTurbulences;
			float4 _ST_WindFrondRipple;
			float4 _ST_WindBranchAdherences;
			float4 _ST_WindAnimation;
			float4 _ST_WindLeaf2Twitch;
			float4 _ST_WindBranchWhip;
			float4 _ST_WindLeaf1Ripple;
			float4 _ST_WindLeaf2Tumble;
			float4 _ST_WindBranch;
			float4 _ST_WindLeaf2Ripple;
			float4 _ST_WindLeaf1Twitch;
			float4 _ST_WindGlobal;
			float _Metallic;
			int _Cull;
			int _WindQuality;
			int _GlobalTimerId;
			float _Cutoff;
			float _Smoothness;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			float4 _GlobalTimers[100];
			sampler2D _MainTex;


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#pragma shader_feature_local GEOM_TYPE_BRANCH GEOM_TYPE_FROND GEOM_TYPE_LEAF GEOM_TYPE_BRANCH_DETAIL


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
				#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				float4 ase_texcoord3 : TEXCOORD3;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 interp00 : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			int _ObjectId;
			int _PassValue;

			float3 OffsetLeavesVertex( float3 VertexPos, float ColorAlpha, float3 texcoord1, float2 texcoord3 )
			{
				float lodValue = unity_LODFade.x;
				VertexPos -= texcoord1.xyz;
				bool isFacingLeaf = ColorAlpha == 0;
				if (isFacingLeaf) {
				    #ifdef LOD_FADE_PERCENTAGE
				        VertexPos *= lerp(1.0, texcoord1.w, lodValue);
				    #endif
				    
				    // face camera-facing leaf to camera
				    float offsetLen = length(VertexPos);
				    VertexPos = mul(VertexPos.xyz, (float3x3) transpose(mul(UNITY_MATRIX_I_M, UNITY_MATRIX_I_V))); // inv(MV) * finalPosition
				    VertexPos = normalize(VertexPos) * offsetLen; // make sure the offset vector is still scaled
				}
				else
				{
				    #ifdef LOD_FADE_PERCENTAGE
				        float3 lodPosition = float3(texcoord1.w, texcoord3.x, texcoord3.y);
				        VertexPos = lerp(VertexPos, lodPosition, lodValue);
				    #endif
				}
				return VertexPos;
			}
			
			void CalculateWindInputs( float windQuality, out float3 rotatedWindVector, out float3 rotatedBranchAnchor, float4 windVector, float4 windBranchAnchor )
			{
				if (windQuality <= 0) // WIND_QUALITY_NONE
				{
				    rotatedWindVector = float3(0.0f, 0.0f, 0.0f);
				    rotatedBranchAnchor = float3(0.0f, 0.0f, 0.0f);
				}
				else
				{
				    // compute rotated wind parameters
				    if (length(windVector) > 0) {
				        rotatedWindVector = normalize(mul(windVector.xyz, (float3x3)UNITY_MATRIX_M));
				    } else {
				        rotatedWindVector = 0;
				    }
				    rotatedBranchAnchor = normalize(mul(windBranchAnchor.xyz, (float3x3)UNITY_MATRIX_M)) * windBranchAnchor.w;
				}
			}
			
			float4 CubicSmooth( float4 vData )
			{
				return vData * vData * (3.0 - 2.0 * vData);
			}
			
			float4 TriangleWave( float4 vData )
			{
				return abs((frac(vData + 0.5) * 2.0) - 1.0);
			}
			
			float3 UnpackNormalFromFloat( float3 fValue )
			{
				     float3 vDecodeKey = float3(16.0, 1.0, 0.0625);
				    // decode into [0,1] range
				    float3 vDecodedValue = frac(fValue / vDecodeKey);
				    // move back into [-1,1] range & normalize
				    return (vDecodedValue * 2.0 - 1.0);
			}
			
			float3 ClampToNonZero( float3 data )
			{
				if (length(data) > 0) {
				    return data;
				} else {
				    return float3(0.0001, 0.0001, 0.0001);
				}
			}
			
			float4 ComplexOscillationInputs( float fTime, float fOffset, float fTwitchFreqScale, float fWeight, int bWhip )
			{
				if (bWhip > 0) {
				    return float4(fTime + fOffset, fTime * fTwitchFreqScale + fOffset, fTwitchFreqScale * 0.5 * (fTime + fOffset), fTime + fOffset + (1.0 - fWeight));
				} else {
				    return float4(fTime + fOffset, fTime * fTwitchFreqScale + fOffset, fTwitchFreqScale * 0.5 * (fTime + fOffset), 0.0);
				}
			}
			
			float4 SimpleOscillationInputs( float fTime, float fOffset, float fWeight, int bWhip )
			{
				if (bWhip)
				  return float4(fTime + fOffset, fTime * 0.689 + fOffset, 0.0, fTime + fOffset + (1.0 - fWeight));
				else
				  return float4(fTime + fOffset, fTime * 0.689 + fOffset, 0.0, 0.0);
			}
			
			float3 GetInstancePos(  )
			{
				 return GetAbsolutePositionWS(float3(UNITY_MATRIX_M[0].w, UNITY_MATRIX_M[1].w, UNITY_MATRIX_M[2].w));
			}
			
			float ComputeWindAdjust( float3 vPos, float4 windGlobal )
			{
				    // compute how much the height contributes
				    float fAdjust = max(vPos.y - (1.0 / windGlobal.z) * 0.25, 0.0) * windGlobal.z;
				    if (fAdjust != 0.0) {
				        float s = sign(fAdjust);
				        fAdjust = pow(abs(fAdjust), windGlobal.w) * s;
				    }
				    return fAdjust;
			}
			
			float3 SwizzleCombineMoveAmount( float3 vPos, float3 vRotatedWindVector, float fMoveAmount )
			{
				    float fLength = length(vPos);
				 
				    vPos.xz += vRotatedWindVector.xz * fMoveAmount;
				    vPos.xyz = normalize(vPos.xyz) * fLength;
				    return vPos;
			}
			
			float3x3 RotationMatrix( float3 vAxis, float fAngle )
			{
				    // compute sin/cos of fAngle
				    float2 vSinCos;
				    #ifdef OPENGL
				        vSinCos.x = sin(fAngle);
				        vSinCos.y = cos(fAngle);
				    #else
				        sincos(fAngle, vSinCos.x, vSinCos.y);
				    #endif
				    const float c = vSinCos.y;
				    const float s = vSinCos.x;
				    const float t = 1.0 - c;
				    const float x = vAxis.x;
				    const float y = vAxis.y;
				    const float z = vAxis.z;
				    return float3x3(t * x * x + c,      t * x * y - s * z,  t * x * z + s * y,
				                    t * x * y + s * z,  t * y * y + c,      t * y * z - s * x,
				                    t * x * z - s * y,  t * y * z + s * x,  t * z * z + c);
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout SceneSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif
				#ifdef ASE_LIT_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];

				bentNormalWS = surfaceData.normalWS;

				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs.tangentToWorld[2], surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(SceneSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;
				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				float3 temp_output_1_0_g4 = inputMesh.positionOS;
				float3 appendResult213 = (float3(inputMesh.ase_texcoord1.xyz));
				float3 lerpResult13_g4 = lerp( temp_output_1_0_g4 , appendResult213 , unity_LODFade.x);
				#ifdef LOD_FADE_PERCENTAGE
				float3 staticSwitch14_g4 = lerpResult13_g4;
				#else
				float3 staticSwitch14_g4 = temp_output_1_0_g4;
				#endif
				float3 temp_output_344_0 = staticSwitch14_g4;
				float3 appendResult331 = (float3(inputMesh.ase_texcoord2.xyz));
				float2 appendResult336 = (float2(inputMesh.ase_texcoord.xy));
				float2 break10_g314 = appendResult336;
				float ifLocalVar11_g314 = 0;
				UNITY_BRANCH 
				if( break10_g314.x >= 0.75 )
				ifLocalVar11_g314 = break10_g314.x;
				else
				ifLocalVar11_g314 = 0.75;
				float4 temp_cast_3 = (( ifLocalVar11_g314 + ( ( _GlobalTimers[_GlobalTimerId].y + break10_g314.y ) * _ST_WindFrondRipple.z ) )).xxxx;
				float4 vData7_g316 = temp_cast_3;
				float4 localTriangleWave7_g316 = TriangleWave( vData7_g316 );
				float4 vData6_g316 = localTriangleWave7_g316;
				float4 localCubicSmooth6_g316 = CubicSmooth( vData6_g316 );
				#ifdef GEOM_TYPE_FROND
				float3 staticSwitch343 = ( temp_output_344_0 + ( appendResult331.y * ( ( localCubicSmooth6_g316 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) ).x * _ST_WindFrondRipple.y * inputMesh.normalOS ) );
				#else
				float3 staticSwitch343 = temp_output_344_0;
				#endif
				int temp_output_40_0_g300 = _WindQuality;
				float3 VertexPos286 = inputMesh.positionOS;
				float3 appendResult112 = (float3(_Color.r , _Color.g , _Color.b));
				float4 appendResult281 = (float4(( appendResult112 * inputMesh.ase_color.r ) , _Color.a));
				float4 appendResult243 = (float4(appendResult281));
				float ColorAlpha286 = appendResult243.a;
				float3 texcoord1286 = appendResult213;
				float2 texcoord3286 = inputMesh.ase_texcoord3.xy;
				float3 localOffsetLeavesVertex286 = OffsetLeavesVertex( VertexPos286 , ColorAlpha286 , texcoord1286 , texcoord3286 );
				float3 temp_output_6_0_g300 = localOffsetLeavesVertex286;
				int temp_output_2_0_g301 = temp_output_40_0_g300;
				float4 break25_g300 = inputMesh.ase_texcoord2;
				float3 temp_cast_5 = (break25_g300.z).xxx;
				float3 fValue10_g305 = temp_cast_5;
				float3 localUnpackNormalFromFloat10_g305 = UnpackNormalFromFloat( fValue10_g305 );
				float temp_output_4_0_g301 = break25_g300.w;
				float ifLocalVar19_g301 = 0;
				if( temp_output_4_0_g301 <= 0.0 )
				ifLocalVar19_g301 = _ST_WindLeaf1Ripple.y;
				else
				ifLocalVar19_g301 = _ST_WindLeaf2Ripple.y;
				float2 break24_g300 = appendResult213.xy;
				float4 break18_g301 = _GlobalTimers[_GlobalTimerId];
				float4 appendResult10_g303 = (float4(( ( break24_g300.x + break24_g300.y ) + break18_g301.y ) , 0.0 , 0.0 , 0.0));
				float4 vData7_g304 = appendResult10_g303;
				float4 localTriangleWave7_g304 = TriangleWave( vData7_g304 );
				float4 vData6_g304 = localTriangleWave7_g304;
				float4 localCubicSmooth6_g304 = CubicSmooth( vData6_g304 );
				float temp_output_8_0_g301 = break25_g300.x;
				float3 temp_output_52_0_g301 = ( temp_output_6_0_g300 + ( localUnpackNormalFromFloat10_g305 * ( ifLocalVar19_g301 * ( ( localCubicSmooth6_g304 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) ).x ) * temp_output_8_0_g301 ) );
				float temp_output_10_0_g301 = break25_g300.y;
				float3 temp_cast_7 = (temp_output_10_0_g301).xxx;
				float3 fValue10_g313 = temp_cast_7;
				float3 localUnpackNormalFromFloat10_g313 = UnpackNormalFromFloat( fValue10_g313 );
				float3 temp_output_5_0_g306 = localUnpackNormalFromFloat10_g313;
				float3 vAxis6_g309 = temp_output_5_0_g306;
				float temp_output_3_0_g306 = temp_output_8_0_g301;
				float4 ifLocalVar32_g301 = 0;
				if( temp_output_4_0_g301 <= 0.0 )
				ifLocalVar32_g301 = _ST_WindLeaf1Tumble;
				else
				ifLocalVar32_g301 = _ST_WindLeaf2Tumble;
				float4 break34_g301 = ifLocalVar32_g301;
				float temp_output_22_0_g306 = frac( ( temp_output_10_0_g301 * 30.3 ) );
				float temp_output_25_0_g306 = ( temp_output_22_0_g306 + temp_output_22_0_g306 + temp_output_22_0_g306 );
				float temp_output_7_0_g306 = break18_g301.z;
				float4 appendResult34_g306 = (float4(( temp_output_25_0_g306 + temp_output_7_0_g306 ) , ( ( temp_output_7_0_g306 * 0.75 ) + ( temp_output_25_0_g306 * -1.0 ) ) , ( ( temp_output_7_0_g306 * 0.01 ) + temp_output_25_0_g306 ) , ( temp_output_25_0_g306 + ( temp_output_7_0_g306 * 1.0 ) )));
				float4 vData7_g308 = appendResult34_g306;
				float4 localTriangleWave7_g308 = TriangleWave( vData7_g308 );
				float4 vData6_g308 = localTriangleWave7_g308;
				float4 localCubicSmooth6_g308 = CubicSmooth( vData6_g308 );
				float4 temp_output_27_0_g306 = ( ( localCubicSmooth6_g308 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break47_g306 = temp_output_27_0_g306;
				float fAngle6_g309 = ( temp_output_3_0_g306 * break34_g301.z * ( break47_g306.x + ( break47_g306.y * break47_g306.y ) ) );
				float3x3 localRotationMatrix6_g309 = RotationMatrix( vAxis6_g309 , fAngle6_g309 );
				int localCalculateWindInputs291 = ( 0 );
				float windQuality291 = (float)_WindQuality;
				float3 rotatedWindVector291 = float3( 0,0,0 );
				float3 rotatedBranchAnchor291 = float3( 0,0,0 );
				float4 windVector291 = _ST_WindVector;
				float4 windBranchAnchor291 = _ST_WindBranchAnchor;
				{
				if (windQuality291 <= 0) // WIND_QUALITY_NONE
				{
				    rotatedWindVector291 = float3(0.0f, 0.0f, 0.0f);
				    rotatedBranchAnchor291 = float3(0.0f, 0.0f, 0.0f);
				}
				else
				{
				    // compute rotated wind parameters
				    if (length(windVector291) > 0) {
				        rotatedWindVector291 = normalize(mul(windVector291.xyz, (float3x3)UNITY_MATRIX_M));
				    } else {
				        rotatedWindVector291 = 0;
				    }
				    rotatedBranchAnchor291 = normalize(mul(windBranchAnchor291.xyz, (float3x3)UNITY_MATRIX_M)) * windBranchAnchor291.w;
				}
				}
				float3 data116_g306 = rotatedWindVector291;
				float3 localClampToNonZero116_g306 = ClampToNonZero( data116_g306 );
				float3 break57_g306 = cross( temp_output_5_0_g306 , localClampToNonZero116_g306 );
				float dotResult55_g306 = dot( float3( 0,0,0 ) , temp_output_5_0_g306 );
				float clampResult56_g306 = clamp( dotResult55_g306 , -1.0 , 1.0 );
				float3 appendResult59_g306 = (float3(break57_g306.x , ( clampResult56_g306 + break57_g306.y ) , break57_g306.z));
				float3 normalizeResult60_g306 = normalize( appendResult59_g306 );
				float3 vAxis6_g312 = normalizeResult60_g306;
				float3 break9_g310 = float3( 0,0,0 );
				float temp_output_4_0_g310 = ( _GlobalTimers[_GlobalTimerId].y + temp_output_25_0_g306 );
				float4 appendResult12_g310 = (float4(( break9_g310.x + break9_g310.z + temp_output_4_0_g310 ) , ( ( 0.87 * temp_output_4_0_g310 ) + break9_g310.y ) , 0.0 , 0.0));
				float4 vData7_g311 = appendResult12_g310;
				float4 localTriangleWave7_g311 = TriangleWave( vData7_g311 );
				float4 vData6_g311 = localTriangleWave7_g311;
				float4 localCubicSmooth6_g311 = CubicSmooth( vData6_g311 );
				float4 break14_g310 = ( ( localCubicSmooth6_g311 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 ifLocalVar35_g301 = 0;
				if( temp_output_4_0_g301 <= 0.0 )
				ifLocalVar35_g301 = _ST_WindLeaf1Twitch;
				else
				ifLocalVar35_g301 = _ST_WindLeaf2Twitch;
				float3 appendResult37_g301 = (float3(ifLocalVar35_g301.xyz));
				float3 break76_g306 = appendResult37_g301;
				float4 break109_g306 = temp_output_27_0_g306;
				float fAngle6_g312 = ( temp_output_3_0_g306 * ( ( acos( clampResult56_g306 ) * break34_g301.w ) + ( pow( saturate( ( ( ( break14_g310.x * break14_g310.y * break14_g310.y ) + 1.0 ) * 0.5 ) ) , break76_g306.y ) * break76_g306.x ) + ( ( break109_g306.y + ( ( break109_g306.x * break109_g306.x ) * -1.0 ) ) * break34_g301.y ) ) );
				float3x3 localRotationMatrix6_g312 = RotationMatrix( vAxis6_g312 , fAngle6_g312 );
				float3x3 temp_output_86_0_g306 = mul( localRotationMatrix6_g309, localRotationMatrix6_g312 );
				float3 temp_output_1_0_g306 = temp_output_52_0_g301;
				float3 normalizeResult91_g306 = normalize( mul( temp_output_86_0_g306, temp_output_1_0_g306 ) );
				float3 ifLocalVar27_g301 = 0;
				if( temp_output_2_0_g301 == 4 )
				ifLocalVar27_g301 = ( normalizeResult91_g306 * length( temp_output_1_0_g306 ) );
				else
				ifLocalVar27_g301 = temp_output_52_0_g301;
				float3 ifLocalVar2_g300 = 0;
				if( temp_output_40_0_g300 <= 1.0 )
				ifLocalVar2_g300 = temp_output_6_0_g300;
				else
				ifLocalVar2_g300 = ifLocalVar27_g301;
				float3 ifLocalVar1_g300 = 0;
				if( temp_output_40_0_g300 >= 5.0 )
				ifLocalVar1_g300 = temp_output_6_0_g300;
				else
				ifLocalVar1_g300 = ifLocalVar2_g300;
				#if defined(GEOM_TYPE_BRANCH)
				float3 staticSwitch214 = staticSwitch343;
				#elif defined(GEOM_TYPE_FROND)
				float3 staticSwitch214 = staticSwitch343;
				#elif defined(GEOM_TYPE_LEAF)
				float3 staticSwitch214 = ( appendResult213 + ifLocalVar1_g300 );
				#elif defined(GEOM_TYPE_BRANCH_DETAIL)
				float3 staticSwitch214 = staticSwitch343;
				#else
				float3 staticSwitch214 = staticSwitch343;
				#endif
				float3 temp_output_3_0_g844 = staticSwitch214;
				int temp_output_24_0_g844 = _WindQuality;
				float4 break32_g844 = inputMesh.ase_texcoord;
				float2 appendResult31_g844 = (float2(break32_g844.z , break32_g844.w));
				float2 break34_g844 = appendResult31_g844;
				float temp_output_5_0_g845 = break34_g844.y;
				float3 temp_cast_10 = (temp_output_5_0_g845).xxx;
				float3 fValue10_g846 = temp_cast_10;
				float3 localUnpackNormalFromFloat10_g846 = UnpackNormalFromFloat( fValue10_g846 );
				float temp_output_4_0_g845 = break34_g844.x;
				int temp_output_7_0_g847 = 0;
				int temp_output_10_0_g847 = 1;
				float3 localGetInstancePos40_g844 = GetInstancePos();
				float3 break17_g845 = localGetInstancePos40_g844;
				float temp_output_3_0_g847 = ( break17_g845.x + break17_g845.y + _GlobalTimers[_GlobalTimerId].y );
				float fTime28_g847 = temp_output_3_0_g847;
				float temp_output_4_0_g847 = temp_output_5_0_g845;
				float fOffset28_g847 = temp_output_4_0_g847;
				float fTwitchFreqScale28_g847 = _ST_WindBranchTwitch.y;
				float temp_output_5_0_g847 = temp_output_4_0_g845;
				float fWeight28_g847 = temp_output_5_0_g847;
				int bWhip28_g847 = temp_output_7_0_g847;
				float4 localComplexOscillationInputs28_g847 = ComplexOscillationInputs( fTime28_g847 , fOffset28_g847 , fTwitchFreqScale28_g847 , fWeight28_g847 , bWhip28_g847 );
				float4 vData7_g849 = localComplexOscillationInputs28_g847;
				float4 localTriangleWave7_g849 = TriangleWave( vData7_g849 );
				float4 vData6_g849 = localTriangleWave7_g849;
				float4 localCubicSmooth6_g849 = CubicSmooth( vData6_g849 );
				float4 temp_output_29_0_g847 = ( ( localCubicSmooth6_g849 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break30_g847 = temp_output_29_0_g847;
				float temp_output_31_0_g847 = ( break30_g847.y * break30_g847.z );
				float ifLocalVar36_g847 = 0;
				if( temp_output_31_0_g847 >= 0.0 )
				ifLocalVar36_g847 = 1.0;
				else
				ifLocalVar36_g847 = ( 1.0 * -1.0 );
				float ifLocalVar35_g847 = 0;
				if( temp_output_31_0_g847 >= 0.0 )
				ifLocalVar35_g847 = temp_output_31_0_g847;
				else
				ifLocalVar35_g847 = ( temp_output_31_0_g847 * -1.0 );
				float lerpResult41_g847 = lerp( temp_output_31_0_g847 , ifLocalVar36_g847 , ifLocalVar35_g847);
				float lerpResult42_g847 = lerp( lerpResult41_g847 , ifLocalVar36_g847 , ifLocalVar35_g847);
				float temp_output_11_0_g847 = _ST_WindBranchTwitch.x;
				float fTime61_g847 = temp_output_3_0_g847;
				float fOffset61_g847 = temp_output_4_0_g847;
				float fWeight61_g847 = temp_output_5_0_g847;
				int bWhip61_g847 = temp_output_7_0_g847;
				float4 localSimpleOscillationInputs61_g847 = SimpleOscillationInputs( fTime61_g847 , fOffset61_g847 , fWeight61_g847 , bWhip61_g847 );
				float4 vData7_g848 = localSimpleOscillationInputs61_g847;
				float4 localTriangleWave7_g848 = TriangleWave( vData7_g848 );
				float4 vData6_g848 = localTriangleWave7_g848;
				float4 localCubicSmooth6_g848 = CubicSmooth( vData6_g848 );
				float4 temp_output_66_0_g847 = ( ( localCubicSmooth6_g848 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break62_g847 = temp_output_66_0_g847;
				float temp_output_64_0_g847 = ( break62_g847.x + ( break62_g847.x * break62_g847.y ) );
				float ifLocalVar17_g847 = 0;
				if( temp_output_10_0_g847 <= 0.0 )
				ifLocalVar17_g847 = temp_output_64_0_g847;
				else
				ifLocalVar17_g847 = ( ( lerpResult42_g847 * temp_output_11_0_g847 * ( 1.0 - _ST_WindVector.w ) ) + ( break30_g847.x * ( 1.0 - temp_output_11_0_g847 ) ) );
				float ifLocalVar52_g847 = 0;
				if( temp_output_7_0_g847 <= 0.0 )
				ifLocalVar52_g847 = ifLocalVar17_g847;
				else
				ifLocalVar52_g847 = ( ifLocalVar17_g847 * ( 1.0 + ( break30_g847.w * (int)_ST_WindBranchWhip.x ) ) );
				float3 temp_output_45_0_g844 = ( temp_output_3_0_g844 + ( ( localUnpackNormalFromFloat10_g846 * temp_output_4_0_g845 ) * ifLocalVar52_g847 * _ST_WindBranch.y ) );
				float temp_output_4_0_g851 = break34_g844.y;
				float3 temp_cast_12 = (temp_output_4_0_g851).xxx;
				float3 fValue10_g854 = temp_cast_12;
				float3 localUnpackNormalFromFloat10_g854 = UnpackNormalFromFloat( fValue10_g854 );
				float temp_output_3_0_g851 = break34_g844.x;
				int temp_output_7_0_g855 = 1;
				int temp_output_10_0_g855 = 1;
				float3 break17_g851 = localGetInstancePos40_g844;
				float temp_output_16_0_g851 = ( _GlobalTimers[_GlobalTimerId].y + break17_g851.x + break17_g851.y );
				float temp_output_3_0_g855 = temp_output_16_0_g851;
				float fTime28_g855 = temp_output_3_0_g855;
				float temp_output_4_0_g855 = temp_output_4_0_g851;
				float fOffset28_g855 = temp_output_4_0_g855;
				float fTwitchFreqScale28_g855 = _ST_WindBranchTwitch.y;
				float temp_output_5_0_g855 = temp_output_3_0_g851;
				float fWeight28_g855 = temp_output_5_0_g855;
				int bWhip28_g855 = temp_output_7_0_g855;
				float4 localComplexOscillationInputs28_g855 = ComplexOscillationInputs( fTime28_g855 , fOffset28_g855 , fTwitchFreqScale28_g855 , fWeight28_g855 , bWhip28_g855 );
				float4 vData7_g857 = localComplexOscillationInputs28_g855;
				float4 localTriangleWave7_g857 = TriangleWave( vData7_g857 );
				float4 vData6_g857 = localTriangleWave7_g857;
				float4 localCubicSmooth6_g857 = CubicSmooth( vData6_g857 );
				float4 temp_output_29_0_g855 = ( ( localCubicSmooth6_g857 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break30_g855 = temp_output_29_0_g855;
				float temp_output_31_0_g855 = ( break30_g855.y * break30_g855.z );
				float ifLocalVar36_g855 = 0;
				if( temp_output_31_0_g855 >= 0.0 )
				ifLocalVar36_g855 = 1.0;
				else
				ifLocalVar36_g855 = ( 1.0 * -1.0 );
				float ifLocalVar35_g855 = 0;
				if( temp_output_31_0_g855 >= 0.0 )
				ifLocalVar35_g855 = temp_output_31_0_g855;
				else
				ifLocalVar35_g855 = ( temp_output_31_0_g855 * -1.0 );
				float lerpResult41_g855 = lerp( temp_output_31_0_g855 , ifLocalVar36_g855 , ifLocalVar35_g855);
				float lerpResult42_g855 = lerp( lerpResult41_g855 , ifLocalVar36_g855 , ifLocalVar35_g855);
				float temp_output_11_0_g855 = _ST_WindBranchTwitch.x;
				float fTime61_g855 = temp_output_3_0_g855;
				float fOffset61_g855 = temp_output_4_0_g855;
				float fWeight61_g855 = temp_output_5_0_g855;
				int bWhip61_g855 = temp_output_7_0_g855;
				float4 localSimpleOscillationInputs61_g855 = SimpleOscillationInputs( fTime61_g855 , fOffset61_g855 , fWeight61_g855 , bWhip61_g855 );
				float4 vData7_g856 = localSimpleOscillationInputs61_g855;
				float4 localTriangleWave7_g856 = TriangleWave( vData7_g856 );
				float4 vData6_g856 = localTriangleWave7_g856;
				float4 localCubicSmooth6_g856 = CubicSmooth( vData6_g856 );
				float4 temp_output_66_0_g855 = ( ( localCubicSmooth6_g856 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break62_g855 = temp_output_66_0_g855;
				float temp_output_64_0_g855 = ( break62_g855.x + ( break62_g855.x * break62_g855.y ) );
				float ifLocalVar17_g855 = 0;
				if( temp_output_10_0_g855 <= 0.0 )
				ifLocalVar17_g855 = temp_output_64_0_g855;
				else
				ifLocalVar17_g855 = ( ( lerpResult42_g855 * temp_output_11_0_g855 * ( 1.0 - _ST_WindVector.w ) ) + ( break30_g855.x * ( 1.0 - temp_output_11_0_g855 ) ) );
				float temp_output_11_0_g851 = _ST_WindBranchWhip.x;
				float ifLocalVar52_g855 = 0;
				if( temp_output_7_0_g855 <= 0.0 )
				ifLocalVar52_g855 = ifLocalVar17_g855;
				else
				ifLocalVar52_g855 = ( ifLocalVar17_g855 * ( 1.0 + ( break30_g855.w * (int)temp_output_11_0_g851 ) ) );
				float3 temp_output_23_0_g851 = ( temp_output_3_0_g844 + ( ( localUnpackNormalFromFloat10_g854 * temp_output_3_0_g851 ) * ifLocalVar52_g855 * _ST_WindBranch.y ) );
				float temp_output_3_0_g852 = temp_output_4_0_g851;
				float temp_output_6_0_g852 = _ST_WindTurbulences.y;
				float4 appendResult9_g852 = (float4(( ( temp_output_16_0_g851 * 0.1 ) + temp_output_3_0_g852 ) , ( ( _ST_WindAnimation.x * temp_output_6_0_g852 * 0.1 ) + temp_output_3_0_g852 ) , 0.0 , 0.0));
				float4 vData7_g853 = appendResult9_g852;
				float4 localTriangleWave7_g853 = TriangleWave( vData7_g853 );
				float4 vData6_g853 = localTriangleWave7_g853;
				float4 localCubicSmooth6_g853 = CubicSmooth( vData6_g853 );
				float4 break16_g852 = ( ( localCubicSmooth6_g853 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 ifLocalVar59_g855 = 0;
				if( temp_output_10_0_g855 <= 0.0 )
				ifLocalVar59_g855 = temp_output_66_0_g855;
				else
				ifLocalVar59_g855 = temp_output_29_0_g855;
				float3 ifLocalVar29_g844 = 0;
				if( temp_output_24_0_g844 == 5 )
				ifLocalVar29_g844 = ( ( ( rotatedBranchAnchor291 + ( temp_output_23_0_g851 * float3( -1,0,0 ) ) ) * _ST_WindBranchAdherences.y * ( ( 1.0 - ( break16_g852.x * break16_g852.y * break16_g852.x * break16_g852.y * temp_output_6_0_g852 ) ) + ( ifLocalVar59_g855.w * _ST_WindVector.w * temp_output_11_0_g851 ) ) * temp_output_3_0_g851 ) + temp_output_23_0_g851 );
				else
				ifLocalVar29_g844 = temp_output_45_0_g844;
				float3 ifLocalVar26_g844 = 0;
				if( temp_output_24_0_g844 >= 3 )
				ifLocalVar26_g844 = ifLocalVar29_g844;
				else
				ifLocalVar26_g844 = temp_output_3_0_g844;
				#ifdef GEOM_TYPE_MESH
				float3 staticSwitch9_g844 = ifLocalVar26_g844;
				#else
				float3 staticSwitch9_g844 = temp_output_3_0_g844;
				#endif
				float3 temp_output_111_0_g858 = staticSwitch9_g844;
				float3 vPos140_g858 = temp_output_111_0_g858;
				float3 vRotatedWindVector140_g858 = rotatedWindVector291;
				float3 vPos145_g858 = temp_output_111_0_g858;
				float4 windGlobal145_g858 = _ST_WindGlobal;
				float localComputeWindAdjust145_g858 = ComputeWindAdjust( vPos145_g858 , windGlobal145_g858 );
				float3 break122_g858 = localGetInstancePos40_g844;
				float temp_output_125_0_g858 = _GlobalTimers[_GlobalTimerId].x;
				float4 appendResult126_g858 = (float4(( break122_g858.x + temp_output_125_0_g858 ) , ( break122_g858.y + ( temp_output_125_0_g858 * 0.8 ) ) , 0.0 , 0.0));
				float4 vData7_g859 = appendResult126_g858;
				float4 localTriangleWave7_g859 = TriangleWave( vData7_g859 );
				float4 vData6_g859 = localTriangleWave7_g859;
				float4 localCubicSmooth6_g859 = CubicSmooth( vData6_g859 );
				float4 break117_g858 = ( ( localCubicSmooth6_g859 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float temp_output_90_0_g858 = ( localComputeWindAdjust145_g858 * ( ( _ST_WindGlobal.y * ( break117_g858.x + ( break117_g858.y * break117_g858.y ) ) ) + ( _ST_WindBranchAdherences.x / _ST_WindGlobal.z ) ) );
				float ifLocalVar142_g858 = 0;
				if( _ST_WindGlobal.w == 0.0 )
				ifLocalVar142_g858 = 0.0;
				else
				ifLocalVar142_g858 = temp_output_90_0_g858;
				float fMoveAmount140_g858 = ifLocalVar142_g858;
				float3 localSwizzleCombineMoveAmount140_g858 = SwizzleCombineMoveAmount( vPos140_g858 , vRotatedWindVector140_g858 , fMoveAmount140_g858 );
				float3 ifLocalVar132_g858 = 0;
				if( _WindQuality <= 0 )
				ifLocalVar132_g858 = temp_output_111_0_g858;
				else
				ifLocalVar132_g858 = localSwizzleCombineMoveAmount140_g858;
				
				float3 temp_output_9_0_g300 = inputMesh.normalOS;
				float3 temp_output_7_0_g301 = temp_output_9_0_g300;
				float3 ifLocalVar30_g301 = 0;
				if( temp_output_2_0_g301 == 4 )
				ifLocalVar30_g301 = mul( temp_output_86_0_g306, temp_output_7_0_g301 );
				else
				ifLocalVar30_g301 = temp_output_7_0_g301;
				float3 ifLocalVar10_g300 = 0;
				if( temp_output_40_0_g300 <= 1.0 )
				ifLocalVar10_g300 = temp_output_9_0_g300;
				else
				ifLocalVar10_g300 = ifLocalVar30_g301;
				float3 ifLocalVar14_g300 = 0;
				if( temp_output_40_0_g300 >= 5.0 )
				ifLocalVar14_g300 = temp_output_9_0_g300;
				else
				ifLocalVar14_g300 = ifLocalVar10_g300;
				#if defined(GEOM_TYPE_BRANCH)
				float3 staticSwitch348 = inputMesh.normalOS;
				#elif defined(GEOM_TYPE_FROND)
				float3 staticSwitch348 = inputMesh.normalOS;
				#elif defined(GEOM_TYPE_LEAF)
				float3 staticSwitch348 = ifLocalVar14_g300;
				#elif defined(GEOM_TYPE_BRANCH_DETAIL)
				float3 staticSwitch348 = inputMesh.normalOS;
				#else
				float3 staticSwitch348 = inputMesh.normalOS;
				#endif
				
				outputPackedVaryingsMeshToPS.ase_texcoord1 = inputMesh.ase_texcoord;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = ifLocalVar132_g858;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS = staticSwitch348;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.interp00.xyz = positionRWS;
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				float4 ase_texcoord3 : TEXCOORD3;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.ase_texcoord1 = v.ase_texcoord1;
				o.ase_texcoord2 = v.ase_texcoord2;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_color = v.ase_color;
				o.ase_texcoord3 = v.ase_texcoord3;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.ase_texcoord1 = patch[0].ase_texcoord1 * bary.x + patch[1].ase_texcoord1 * bary.y + patch[2].ase_texcoord1 * bary.z;
				o.ase_texcoord2 = patch[0].ase_texcoord2 * bary.x + patch[1].ase_texcoord2 * bary.y + patch[2].ase_texcoord2 * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			void Frag( PackedVaryingsMeshToPS packedInput
						#ifdef WRITE_NORMAL_BUFFER
						, out float4 outNormalBuffer : SV_Target0
							#ifdef WRITE_MSAA_DEPTH
							, out float1 depthColor : SV_Target1
							#endif
						#elif defined(WRITE_MSAA_DEPTH)
						, out float4 outNormalBuffer : SV_Target0
						, out float1 depthColor : SV_Target1
						#elif defined(SCENESELECTIONPASS)
						, out float4 outColor : SV_Target0
						#endif
						#ifdef _DEPTHOFFSET_ON
						, out float outputDepth : SV_Depth
						#endif
						
					)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );

				float3 positionRWS = packedInput.interp00.xyz;

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);

				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				input.positionRWS = positionRWS;

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false );
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				SceneSurfaceDescription surfaceDescription = (SceneSurfaceDescription)0;
				float4 appendResult170 = (float4(packedInput.ase_texcoord1.x , packedInput.ase_texcoord1.y , 0.0 , 0.0));
				float4 tex2DNode91 = tex2D( _MainTex, appendResult170.xy );
				float temp_output_93_0 = ( tex2DNode91.a * _Color.a );
				
				surfaceDescription.Alpha = temp_output_93_0;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _Cutoff;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription, input, V, posInput, surfaceData, builtinData);

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif

				#ifdef WRITE_NORMAL_BUFFER
				EncodeIntoNormalBuffer( ConvertSurfaceDataToNormalData( surfaceData ), posInput.positionSS, outNormalBuffer );
				#ifdef WRITE_MSAA_DEPTH
				depthColor = packedInput.positionCS.z;
				#endif
				#elif defined(WRITE_MSAA_DEPTH)
				outNormalBuffer = float4( 0.0, 0.0, 0.0, 1.0 );
				depthColor = packedInput.positionCS.z;
				#elif defined(SCENESELECTIONPASS)
				outColor = float4( _ObjectId, _PassValue, 1.0, 1.0 );
				#endif
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthOnly"
			Tags { "LightMode"="DepthOnly" }

			Cull [_CullMode]

			ZWrite On

			Stencil
			{
				Ref [_StencilRefDepth]
				WriteMask [_StencilWriteMaskDepth]
				Comp Always
				Pass Replace
				Fail Keep
				ZFail Keep
			}


			HLSLPROGRAM

			#define _SPECULAR_OCCLUSION_FROM_AO 1
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define HAVE_MESH_MODIFICATION
			#define ASE_SRP_VERSION 100202


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _ALPHATEST_ON

			#define SHADERPASS SHADERPASS_DEPTH_ONLY
			#pragma multi_compile _ WRITE_NORMAL_BUFFER
			#pragma multi_compile _ WRITE_MSAA_DEPTH

			#pragma vertex Vert
			#pragma fragment Frag

			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#ifdef DEBUG_DISPLAY
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#endif
			
			CBUFFER_START( UnityPerMaterial )
			float4 _ST_WindBranchTwitch;
			float4 _ST_WindBranchAnchor;
			float4 _ST_WindVector;
			float4 _Color;
			float4 _ST_WindLeaf1Tumble;
			float4 _ST_WindTurbulences;
			float4 _ST_WindFrondRipple;
			float4 _ST_WindBranchAdherences;
			float4 _ST_WindAnimation;
			float4 _ST_WindLeaf2Twitch;
			float4 _ST_WindBranchWhip;
			float4 _ST_WindLeaf1Ripple;
			float4 _ST_WindLeaf2Tumble;
			float4 _ST_WindBranch;
			float4 _ST_WindLeaf2Ripple;
			float4 _ST_WindLeaf1Twitch;
			float4 _ST_WindGlobal;
			float _Metallic;
			int _Cull;
			int _WindQuality;
			int _GlobalTimerId;
			float _Cutoff;
			float _Smoothness;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			float4 _GlobalTimers[100];
			sampler2D _BumpMap;
			sampler2D _DetailTex;
			sampler2D _MainTex;


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#pragma shader_feature_local GEOM_TYPE_BRANCH GEOM_TYPE_FROND GEOM_TYPE_LEAF GEOM_TYPE_BRANCH_DETAIL
			#pragma shader_feature_local EFFECT_BUMP
			#pragma shader_feature_local GEOM_TYPE_BRANCH_DETAIL


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
				#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				float4 ase_texcoord3 : TEXCOORD3;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 interp00 : TEXCOORD0;
				float3 interp01 : TEXCOORD1;
				float4 interp02 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			float3 OffsetLeavesVertex( float3 VertexPos, float ColorAlpha, float3 texcoord1, float2 texcoord3 )
			{
				float lodValue = unity_LODFade.x;
				VertexPos -= texcoord1.xyz;
				bool isFacingLeaf = ColorAlpha == 0;
				if (isFacingLeaf) {
				    #ifdef LOD_FADE_PERCENTAGE
				        VertexPos *= lerp(1.0, texcoord1.w, lodValue);
				    #endif
				    
				    // face camera-facing leaf to camera
				    float offsetLen = length(VertexPos);
				    VertexPos = mul(VertexPos.xyz, (float3x3) transpose(mul(UNITY_MATRIX_I_M, UNITY_MATRIX_I_V))); // inv(MV) * finalPosition
				    VertexPos = normalize(VertexPos) * offsetLen; // make sure the offset vector is still scaled
				}
				else
				{
				    #ifdef LOD_FADE_PERCENTAGE
				        float3 lodPosition = float3(texcoord1.w, texcoord3.x, texcoord3.y);
				        VertexPos = lerp(VertexPos, lodPosition, lodValue);
				    #endif
				}
				return VertexPos;
			}
			
			void CalculateWindInputs( float windQuality, out float3 rotatedWindVector, out float3 rotatedBranchAnchor, float4 windVector, float4 windBranchAnchor )
			{
				if (windQuality <= 0) // WIND_QUALITY_NONE
				{
				    rotatedWindVector = float3(0.0f, 0.0f, 0.0f);
				    rotatedBranchAnchor = float3(0.0f, 0.0f, 0.0f);
				}
				else
				{
				    // compute rotated wind parameters
				    if (length(windVector) > 0) {
				        rotatedWindVector = normalize(mul(windVector.xyz, (float3x3)UNITY_MATRIX_M));
				    } else {
				        rotatedWindVector = 0;
				    }
				    rotatedBranchAnchor = normalize(mul(windBranchAnchor.xyz, (float3x3)UNITY_MATRIX_M)) * windBranchAnchor.w;
				}
			}
			
			float4 CubicSmooth( float4 vData )
			{
				return vData * vData * (3.0 - 2.0 * vData);
			}
			
			float4 TriangleWave( float4 vData )
			{
				return abs((frac(vData + 0.5) * 2.0) - 1.0);
			}
			
			float3 UnpackNormalFromFloat( float3 fValue )
			{
				     float3 vDecodeKey = float3(16.0, 1.0, 0.0625);
				    // decode into [0,1] range
				    float3 vDecodedValue = frac(fValue / vDecodeKey);
				    // move back into [-1,1] range & normalize
				    return (vDecodedValue * 2.0 - 1.0);
			}
			
			float3 ClampToNonZero( float3 data )
			{
				if (length(data) > 0) {
				    return data;
				} else {
				    return float3(0.0001, 0.0001, 0.0001);
				}
			}
			
			float4 ComplexOscillationInputs( float fTime, float fOffset, float fTwitchFreqScale, float fWeight, int bWhip )
			{
				if (bWhip > 0) {
				    return float4(fTime + fOffset, fTime * fTwitchFreqScale + fOffset, fTwitchFreqScale * 0.5 * (fTime + fOffset), fTime + fOffset + (1.0 - fWeight));
				} else {
				    return float4(fTime + fOffset, fTime * fTwitchFreqScale + fOffset, fTwitchFreqScale * 0.5 * (fTime + fOffset), 0.0);
				}
			}
			
			float4 SimpleOscillationInputs( float fTime, float fOffset, float fWeight, int bWhip )
			{
				if (bWhip)
				  return float4(fTime + fOffset, fTime * 0.689 + fOffset, 0.0, fTime + fOffset + (1.0 - fWeight));
				else
				  return float4(fTime + fOffset, fTime * 0.689 + fOffset, 0.0, 0.0);
			}
			
			float3 GetInstancePos(  )
			{
				 return GetAbsolutePositionWS(float3(UNITY_MATRIX_M[0].w, UNITY_MATRIX_M[1].w, UNITY_MATRIX_M[2].w));
			}
			
			float ComputeWindAdjust( float3 vPos, float4 windGlobal )
			{
				    // compute how much the height contributes
				    float fAdjust = max(vPos.y - (1.0 / windGlobal.z) * 0.25, 0.0) * windGlobal.z;
				    if (fAdjust != 0.0) {
				        float s = sign(fAdjust);
				        fAdjust = pow(abs(fAdjust), windGlobal.w) * s;
				    }
				    return fAdjust;
			}
			
			float3 SwizzleCombineMoveAmount( float3 vPos, float3 vRotatedWindVector, float fMoveAmount )
			{
				    float fLength = length(vPos);
				 
				    vPos.xz += vRotatedWindVector.xz * fMoveAmount;
				    vPos.xyz = normalize(vPos.xyz) * fLength;
				    return vPos;
			}
			
			float3x3 RotationMatrix( float3 vAxis, float fAngle )
			{
				    // compute sin/cos of fAngle
				    float2 vSinCos;
				    #ifdef OPENGL
				        vSinCos.x = sin(fAngle);
				        vSinCos.y = cos(fAngle);
				    #else
				        sincos(fAngle, vSinCos.x, vSinCos.y);
				    #endif
				    const float c = vSinCos.y;
				    const float s = vSinCos.x;
				    const float t = 1.0 - c;
				    const float x = vAxis.x;
				    const float y = vAxis.y;
				    const float z = vAxis.z;
				    return float3x3(t * x * x + c,      t * x * y - s * z,  t * x * z + s * y,
				                    t * x * y + s * z,  t * y * y + c,      t * y * z - s * x,
				                    t * x * z - s * y,  t * y * z + s * x,  t * z * z + c);
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout SmoothSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data
				surfaceData.perceptualSmoothness =		surfaceDescription.Smoothness;

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif
				#ifdef ASE_LIT_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				normalTS = surfaceDescription.Normal;
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];

				bentNormalWS = surfaceData.normalWS;

				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs.tangentToWorld[2], surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(SmoothSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				float3 temp_output_1_0_g4 = inputMesh.positionOS;
				float3 appendResult213 = (float3(inputMesh.ase_texcoord1.xyz));
				float3 lerpResult13_g4 = lerp( temp_output_1_0_g4 , appendResult213 , unity_LODFade.x);
				#ifdef LOD_FADE_PERCENTAGE
				float3 staticSwitch14_g4 = lerpResult13_g4;
				#else
				float3 staticSwitch14_g4 = temp_output_1_0_g4;
				#endif
				float3 temp_output_344_0 = staticSwitch14_g4;
				float3 appendResult331 = (float3(inputMesh.ase_texcoord2.xyz));
				float2 appendResult336 = (float2(inputMesh.ase_texcoord.xy));
				float2 break10_g314 = appendResult336;
				float ifLocalVar11_g314 = 0;
				UNITY_BRANCH 
				if( break10_g314.x >= 0.75 )
				ifLocalVar11_g314 = break10_g314.x;
				else
				ifLocalVar11_g314 = 0.75;
				float4 temp_cast_3 = (( ifLocalVar11_g314 + ( ( _GlobalTimers[_GlobalTimerId].y + break10_g314.y ) * _ST_WindFrondRipple.z ) )).xxxx;
				float4 vData7_g316 = temp_cast_3;
				float4 localTriangleWave7_g316 = TriangleWave( vData7_g316 );
				float4 vData6_g316 = localTriangleWave7_g316;
				float4 localCubicSmooth6_g316 = CubicSmooth( vData6_g316 );
				#ifdef GEOM_TYPE_FROND
				float3 staticSwitch343 = ( temp_output_344_0 + ( appendResult331.y * ( ( localCubicSmooth6_g316 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) ).x * _ST_WindFrondRipple.y * inputMesh.normalOS ) );
				#else
				float3 staticSwitch343 = temp_output_344_0;
				#endif
				int temp_output_40_0_g300 = _WindQuality;
				float3 VertexPos286 = inputMesh.positionOS;
				float3 appendResult112 = (float3(_Color.r , _Color.g , _Color.b));
				float4 appendResult281 = (float4(( appendResult112 * inputMesh.ase_color.r ) , _Color.a));
				float4 appendResult243 = (float4(appendResult281));
				float ColorAlpha286 = appendResult243.a;
				float3 texcoord1286 = appendResult213;
				float2 texcoord3286 = inputMesh.ase_texcoord3.xy;
				float3 localOffsetLeavesVertex286 = OffsetLeavesVertex( VertexPos286 , ColorAlpha286 , texcoord1286 , texcoord3286 );
				float3 temp_output_6_0_g300 = localOffsetLeavesVertex286;
				int temp_output_2_0_g301 = temp_output_40_0_g300;
				float4 break25_g300 = inputMesh.ase_texcoord2;
				float3 temp_cast_5 = (break25_g300.z).xxx;
				float3 fValue10_g305 = temp_cast_5;
				float3 localUnpackNormalFromFloat10_g305 = UnpackNormalFromFloat( fValue10_g305 );
				float temp_output_4_0_g301 = break25_g300.w;
				float ifLocalVar19_g301 = 0;
				if( temp_output_4_0_g301 <= 0.0 )
				ifLocalVar19_g301 = _ST_WindLeaf1Ripple.y;
				else
				ifLocalVar19_g301 = _ST_WindLeaf2Ripple.y;
				float2 break24_g300 = appendResult213.xy;
				float4 break18_g301 = _GlobalTimers[_GlobalTimerId];
				float4 appendResult10_g303 = (float4(( ( break24_g300.x + break24_g300.y ) + break18_g301.y ) , 0.0 , 0.0 , 0.0));
				float4 vData7_g304 = appendResult10_g303;
				float4 localTriangleWave7_g304 = TriangleWave( vData7_g304 );
				float4 vData6_g304 = localTriangleWave7_g304;
				float4 localCubicSmooth6_g304 = CubicSmooth( vData6_g304 );
				float temp_output_8_0_g301 = break25_g300.x;
				float3 temp_output_52_0_g301 = ( temp_output_6_0_g300 + ( localUnpackNormalFromFloat10_g305 * ( ifLocalVar19_g301 * ( ( localCubicSmooth6_g304 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) ).x ) * temp_output_8_0_g301 ) );
				float temp_output_10_0_g301 = break25_g300.y;
				float3 temp_cast_7 = (temp_output_10_0_g301).xxx;
				float3 fValue10_g313 = temp_cast_7;
				float3 localUnpackNormalFromFloat10_g313 = UnpackNormalFromFloat( fValue10_g313 );
				float3 temp_output_5_0_g306 = localUnpackNormalFromFloat10_g313;
				float3 vAxis6_g309 = temp_output_5_0_g306;
				float temp_output_3_0_g306 = temp_output_8_0_g301;
				float4 ifLocalVar32_g301 = 0;
				if( temp_output_4_0_g301 <= 0.0 )
				ifLocalVar32_g301 = _ST_WindLeaf1Tumble;
				else
				ifLocalVar32_g301 = _ST_WindLeaf2Tumble;
				float4 break34_g301 = ifLocalVar32_g301;
				float temp_output_22_0_g306 = frac( ( temp_output_10_0_g301 * 30.3 ) );
				float temp_output_25_0_g306 = ( temp_output_22_0_g306 + temp_output_22_0_g306 + temp_output_22_0_g306 );
				float temp_output_7_0_g306 = break18_g301.z;
				float4 appendResult34_g306 = (float4(( temp_output_25_0_g306 + temp_output_7_0_g306 ) , ( ( temp_output_7_0_g306 * 0.75 ) + ( temp_output_25_0_g306 * -1.0 ) ) , ( ( temp_output_7_0_g306 * 0.01 ) + temp_output_25_0_g306 ) , ( temp_output_25_0_g306 + ( temp_output_7_0_g306 * 1.0 ) )));
				float4 vData7_g308 = appendResult34_g306;
				float4 localTriangleWave7_g308 = TriangleWave( vData7_g308 );
				float4 vData6_g308 = localTriangleWave7_g308;
				float4 localCubicSmooth6_g308 = CubicSmooth( vData6_g308 );
				float4 temp_output_27_0_g306 = ( ( localCubicSmooth6_g308 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break47_g306 = temp_output_27_0_g306;
				float fAngle6_g309 = ( temp_output_3_0_g306 * break34_g301.z * ( break47_g306.x + ( break47_g306.y * break47_g306.y ) ) );
				float3x3 localRotationMatrix6_g309 = RotationMatrix( vAxis6_g309 , fAngle6_g309 );
				int localCalculateWindInputs291 = ( 0 );
				float windQuality291 = (float)_WindQuality;
				float3 rotatedWindVector291 = float3( 0,0,0 );
				float3 rotatedBranchAnchor291 = float3( 0,0,0 );
				float4 windVector291 = _ST_WindVector;
				float4 windBranchAnchor291 = _ST_WindBranchAnchor;
				{
				if (windQuality291 <= 0) // WIND_QUALITY_NONE
				{
				    rotatedWindVector291 = float3(0.0f, 0.0f, 0.0f);
				    rotatedBranchAnchor291 = float3(0.0f, 0.0f, 0.0f);
				}
				else
				{
				    // compute rotated wind parameters
				    if (length(windVector291) > 0) {
				        rotatedWindVector291 = normalize(mul(windVector291.xyz, (float3x3)UNITY_MATRIX_M));
				    } else {
				        rotatedWindVector291 = 0;
				    }
				    rotatedBranchAnchor291 = normalize(mul(windBranchAnchor291.xyz, (float3x3)UNITY_MATRIX_M)) * windBranchAnchor291.w;
				}
				}
				float3 data116_g306 = rotatedWindVector291;
				float3 localClampToNonZero116_g306 = ClampToNonZero( data116_g306 );
				float3 break57_g306 = cross( temp_output_5_0_g306 , localClampToNonZero116_g306 );
				float dotResult55_g306 = dot( float3( 0,0,0 ) , temp_output_5_0_g306 );
				float clampResult56_g306 = clamp( dotResult55_g306 , -1.0 , 1.0 );
				float3 appendResult59_g306 = (float3(break57_g306.x , ( clampResult56_g306 + break57_g306.y ) , break57_g306.z));
				float3 normalizeResult60_g306 = normalize( appendResult59_g306 );
				float3 vAxis6_g312 = normalizeResult60_g306;
				float3 break9_g310 = float3( 0,0,0 );
				float temp_output_4_0_g310 = ( _GlobalTimers[_GlobalTimerId].y + temp_output_25_0_g306 );
				float4 appendResult12_g310 = (float4(( break9_g310.x + break9_g310.z + temp_output_4_0_g310 ) , ( ( 0.87 * temp_output_4_0_g310 ) + break9_g310.y ) , 0.0 , 0.0));
				float4 vData7_g311 = appendResult12_g310;
				float4 localTriangleWave7_g311 = TriangleWave( vData7_g311 );
				float4 vData6_g311 = localTriangleWave7_g311;
				float4 localCubicSmooth6_g311 = CubicSmooth( vData6_g311 );
				float4 break14_g310 = ( ( localCubicSmooth6_g311 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 ifLocalVar35_g301 = 0;
				if( temp_output_4_0_g301 <= 0.0 )
				ifLocalVar35_g301 = _ST_WindLeaf1Twitch;
				else
				ifLocalVar35_g301 = _ST_WindLeaf2Twitch;
				float3 appendResult37_g301 = (float3(ifLocalVar35_g301.xyz));
				float3 break76_g306 = appendResult37_g301;
				float4 break109_g306 = temp_output_27_0_g306;
				float fAngle6_g312 = ( temp_output_3_0_g306 * ( ( acos( clampResult56_g306 ) * break34_g301.w ) + ( pow( saturate( ( ( ( break14_g310.x * break14_g310.y * break14_g310.y ) + 1.0 ) * 0.5 ) ) , break76_g306.y ) * break76_g306.x ) + ( ( break109_g306.y + ( ( break109_g306.x * break109_g306.x ) * -1.0 ) ) * break34_g301.y ) ) );
				float3x3 localRotationMatrix6_g312 = RotationMatrix( vAxis6_g312 , fAngle6_g312 );
				float3x3 temp_output_86_0_g306 = mul( localRotationMatrix6_g309, localRotationMatrix6_g312 );
				float3 temp_output_1_0_g306 = temp_output_52_0_g301;
				float3 normalizeResult91_g306 = normalize( mul( temp_output_86_0_g306, temp_output_1_0_g306 ) );
				float3 ifLocalVar27_g301 = 0;
				if( temp_output_2_0_g301 == 4 )
				ifLocalVar27_g301 = ( normalizeResult91_g306 * length( temp_output_1_0_g306 ) );
				else
				ifLocalVar27_g301 = temp_output_52_0_g301;
				float3 ifLocalVar2_g300 = 0;
				if( temp_output_40_0_g300 <= 1.0 )
				ifLocalVar2_g300 = temp_output_6_0_g300;
				else
				ifLocalVar2_g300 = ifLocalVar27_g301;
				float3 ifLocalVar1_g300 = 0;
				if( temp_output_40_0_g300 >= 5.0 )
				ifLocalVar1_g300 = temp_output_6_0_g300;
				else
				ifLocalVar1_g300 = ifLocalVar2_g300;
				#if defined(GEOM_TYPE_BRANCH)
				float3 staticSwitch214 = staticSwitch343;
				#elif defined(GEOM_TYPE_FROND)
				float3 staticSwitch214 = staticSwitch343;
				#elif defined(GEOM_TYPE_LEAF)
				float3 staticSwitch214 = ( appendResult213 + ifLocalVar1_g300 );
				#elif defined(GEOM_TYPE_BRANCH_DETAIL)
				float3 staticSwitch214 = staticSwitch343;
				#else
				float3 staticSwitch214 = staticSwitch343;
				#endif
				float3 temp_output_3_0_g844 = staticSwitch214;
				int temp_output_24_0_g844 = _WindQuality;
				float4 break32_g844 = inputMesh.ase_texcoord;
				float2 appendResult31_g844 = (float2(break32_g844.z , break32_g844.w));
				float2 break34_g844 = appendResult31_g844;
				float temp_output_5_0_g845 = break34_g844.y;
				float3 temp_cast_10 = (temp_output_5_0_g845).xxx;
				float3 fValue10_g846 = temp_cast_10;
				float3 localUnpackNormalFromFloat10_g846 = UnpackNormalFromFloat( fValue10_g846 );
				float temp_output_4_0_g845 = break34_g844.x;
				int temp_output_7_0_g847 = 0;
				int temp_output_10_0_g847 = 1;
				float3 localGetInstancePos40_g844 = GetInstancePos();
				float3 break17_g845 = localGetInstancePos40_g844;
				float temp_output_3_0_g847 = ( break17_g845.x + break17_g845.y + _GlobalTimers[_GlobalTimerId].y );
				float fTime28_g847 = temp_output_3_0_g847;
				float temp_output_4_0_g847 = temp_output_5_0_g845;
				float fOffset28_g847 = temp_output_4_0_g847;
				float fTwitchFreqScale28_g847 = _ST_WindBranchTwitch.y;
				float temp_output_5_0_g847 = temp_output_4_0_g845;
				float fWeight28_g847 = temp_output_5_0_g847;
				int bWhip28_g847 = temp_output_7_0_g847;
				float4 localComplexOscillationInputs28_g847 = ComplexOscillationInputs( fTime28_g847 , fOffset28_g847 , fTwitchFreqScale28_g847 , fWeight28_g847 , bWhip28_g847 );
				float4 vData7_g849 = localComplexOscillationInputs28_g847;
				float4 localTriangleWave7_g849 = TriangleWave( vData7_g849 );
				float4 vData6_g849 = localTriangleWave7_g849;
				float4 localCubicSmooth6_g849 = CubicSmooth( vData6_g849 );
				float4 temp_output_29_0_g847 = ( ( localCubicSmooth6_g849 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break30_g847 = temp_output_29_0_g847;
				float temp_output_31_0_g847 = ( break30_g847.y * break30_g847.z );
				float ifLocalVar36_g847 = 0;
				if( temp_output_31_0_g847 >= 0.0 )
				ifLocalVar36_g847 = 1.0;
				else
				ifLocalVar36_g847 = ( 1.0 * -1.0 );
				float ifLocalVar35_g847 = 0;
				if( temp_output_31_0_g847 >= 0.0 )
				ifLocalVar35_g847 = temp_output_31_0_g847;
				else
				ifLocalVar35_g847 = ( temp_output_31_0_g847 * -1.0 );
				float lerpResult41_g847 = lerp( temp_output_31_0_g847 , ifLocalVar36_g847 , ifLocalVar35_g847);
				float lerpResult42_g847 = lerp( lerpResult41_g847 , ifLocalVar36_g847 , ifLocalVar35_g847);
				float temp_output_11_0_g847 = _ST_WindBranchTwitch.x;
				float fTime61_g847 = temp_output_3_0_g847;
				float fOffset61_g847 = temp_output_4_0_g847;
				float fWeight61_g847 = temp_output_5_0_g847;
				int bWhip61_g847 = temp_output_7_0_g847;
				float4 localSimpleOscillationInputs61_g847 = SimpleOscillationInputs( fTime61_g847 , fOffset61_g847 , fWeight61_g847 , bWhip61_g847 );
				float4 vData7_g848 = localSimpleOscillationInputs61_g847;
				float4 localTriangleWave7_g848 = TriangleWave( vData7_g848 );
				float4 vData6_g848 = localTriangleWave7_g848;
				float4 localCubicSmooth6_g848 = CubicSmooth( vData6_g848 );
				float4 temp_output_66_0_g847 = ( ( localCubicSmooth6_g848 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break62_g847 = temp_output_66_0_g847;
				float temp_output_64_0_g847 = ( break62_g847.x + ( break62_g847.x * break62_g847.y ) );
				float ifLocalVar17_g847 = 0;
				if( temp_output_10_0_g847 <= 0.0 )
				ifLocalVar17_g847 = temp_output_64_0_g847;
				else
				ifLocalVar17_g847 = ( ( lerpResult42_g847 * temp_output_11_0_g847 * ( 1.0 - _ST_WindVector.w ) ) + ( break30_g847.x * ( 1.0 - temp_output_11_0_g847 ) ) );
				float ifLocalVar52_g847 = 0;
				if( temp_output_7_0_g847 <= 0.0 )
				ifLocalVar52_g847 = ifLocalVar17_g847;
				else
				ifLocalVar52_g847 = ( ifLocalVar17_g847 * ( 1.0 + ( break30_g847.w * (int)_ST_WindBranchWhip.x ) ) );
				float3 temp_output_45_0_g844 = ( temp_output_3_0_g844 + ( ( localUnpackNormalFromFloat10_g846 * temp_output_4_0_g845 ) * ifLocalVar52_g847 * _ST_WindBranch.y ) );
				float temp_output_4_0_g851 = break34_g844.y;
				float3 temp_cast_12 = (temp_output_4_0_g851).xxx;
				float3 fValue10_g854 = temp_cast_12;
				float3 localUnpackNormalFromFloat10_g854 = UnpackNormalFromFloat( fValue10_g854 );
				float temp_output_3_0_g851 = break34_g844.x;
				int temp_output_7_0_g855 = 1;
				int temp_output_10_0_g855 = 1;
				float3 break17_g851 = localGetInstancePos40_g844;
				float temp_output_16_0_g851 = ( _GlobalTimers[_GlobalTimerId].y + break17_g851.x + break17_g851.y );
				float temp_output_3_0_g855 = temp_output_16_0_g851;
				float fTime28_g855 = temp_output_3_0_g855;
				float temp_output_4_0_g855 = temp_output_4_0_g851;
				float fOffset28_g855 = temp_output_4_0_g855;
				float fTwitchFreqScale28_g855 = _ST_WindBranchTwitch.y;
				float temp_output_5_0_g855 = temp_output_3_0_g851;
				float fWeight28_g855 = temp_output_5_0_g855;
				int bWhip28_g855 = temp_output_7_0_g855;
				float4 localComplexOscillationInputs28_g855 = ComplexOscillationInputs( fTime28_g855 , fOffset28_g855 , fTwitchFreqScale28_g855 , fWeight28_g855 , bWhip28_g855 );
				float4 vData7_g857 = localComplexOscillationInputs28_g855;
				float4 localTriangleWave7_g857 = TriangleWave( vData7_g857 );
				float4 vData6_g857 = localTriangleWave7_g857;
				float4 localCubicSmooth6_g857 = CubicSmooth( vData6_g857 );
				float4 temp_output_29_0_g855 = ( ( localCubicSmooth6_g857 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break30_g855 = temp_output_29_0_g855;
				float temp_output_31_0_g855 = ( break30_g855.y * break30_g855.z );
				float ifLocalVar36_g855 = 0;
				if( temp_output_31_0_g855 >= 0.0 )
				ifLocalVar36_g855 = 1.0;
				else
				ifLocalVar36_g855 = ( 1.0 * -1.0 );
				float ifLocalVar35_g855 = 0;
				if( temp_output_31_0_g855 >= 0.0 )
				ifLocalVar35_g855 = temp_output_31_0_g855;
				else
				ifLocalVar35_g855 = ( temp_output_31_0_g855 * -1.0 );
				float lerpResult41_g855 = lerp( temp_output_31_0_g855 , ifLocalVar36_g855 , ifLocalVar35_g855);
				float lerpResult42_g855 = lerp( lerpResult41_g855 , ifLocalVar36_g855 , ifLocalVar35_g855);
				float temp_output_11_0_g855 = _ST_WindBranchTwitch.x;
				float fTime61_g855 = temp_output_3_0_g855;
				float fOffset61_g855 = temp_output_4_0_g855;
				float fWeight61_g855 = temp_output_5_0_g855;
				int bWhip61_g855 = temp_output_7_0_g855;
				float4 localSimpleOscillationInputs61_g855 = SimpleOscillationInputs( fTime61_g855 , fOffset61_g855 , fWeight61_g855 , bWhip61_g855 );
				float4 vData7_g856 = localSimpleOscillationInputs61_g855;
				float4 localTriangleWave7_g856 = TriangleWave( vData7_g856 );
				float4 vData6_g856 = localTriangleWave7_g856;
				float4 localCubicSmooth6_g856 = CubicSmooth( vData6_g856 );
				float4 temp_output_66_0_g855 = ( ( localCubicSmooth6_g856 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break62_g855 = temp_output_66_0_g855;
				float temp_output_64_0_g855 = ( break62_g855.x + ( break62_g855.x * break62_g855.y ) );
				float ifLocalVar17_g855 = 0;
				if( temp_output_10_0_g855 <= 0.0 )
				ifLocalVar17_g855 = temp_output_64_0_g855;
				else
				ifLocalVar17_g855 = ( ( lerpResult42_g855 * temp_output_11_0_g855 * ( 1.0 - _ST_WindVector.w ) ) + ( break30_g855.x * ( 1.0 - temp_output_11_0_g855 ) ) );
				float temp_output_11_0_g851 = _ST_WindBranchWhip.x;
				float ifLocalVar52_g855 = 0;
				if( temp_output_7_0_g855 <= 0.0 )
				ifLocalVar52_g855 = ifLocalVar17_g855;
				else
				ifLocalVar52_g855 = ( ifLocalVar17_g855 * ( 1.0 + ( break30_g855.w * (int)temp_output_11_0_g851 ) ) );
				float3 temp_output_23_0_g851 = ( temp_output_3_0_g844 + ( ( localUnpackNormalFromFloat10_g854 * temp_output_3_0_g851 ) * ifLocalVar52_g855 * _ST_WindBranch.y ) );
				float temp_output_3_0_g852 = temp_output_4_0_g851;
				float temp_output_6_0_g852 = _ST_WindTurbulences.y;
				float4 appendResult9_g852 = (float4(( ( temp_output_16_0_g851 * 0.1 ) + temp_output_3_0_g852 ) , ( ( _ST_WindAnimation.x * temp_output_6_0_g852 * 0.1 ) + temp_output_3_0_g852 ) , 0.0 , 0.0));
				float4 vData7_g853 = appendResult9_g852;
				float4 localTriangleWave7_g853 = TriangleWave( vData7_g853 );
				float4 vData6_g853 = localTriangleWave7_g853;
				float4 localCubicSmooth6_g853 = CubicSmooth( vData6_g853 );
				float4 break16_g852 = ( ( localCubicSmooth6_g853 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 ifLocalVar59_g855 = 0;
				if( temp_output_10_0_g855 <= 0.0 )
				ifLocalVar59_g855 = temp_output_66_0_g855;
				else
				ifLocalVar59_g855 = temp_output_29_0_g855;
				float3 ifLocalVar29_g844 = 0;
				if( temp_output_24_0_g844 == 5 )
				ifLocalVar29_g844 = ( ( ( rotatedBranchAnchor291 + ( temp_output_23_0_g851 * float3( -1,0,0 ) ) ) * _ST_WindBranchAdherences.y * ( ( 1.0 - ( break16_g852.x * break16_g852.y * break16_g852.x * break16_g852.y * temp_output_6_0_g852 ) ) + ( ifLocalVar59_g855.w * _ST_WindVector.w * temp_output_11_0_g851 ) ) * temp_output_3_0_g851 ) + temp_output_23_0_g851 );
				else
				ifLocalVar29_g844 = temp_output_45_0_g844;
				float3 ifLocalVar26_g844 = 0;
				if( temp_output_24_0_g844 >= 3 )
				ifLocalVar26_g844 = ifLocalVar29_g844;
				else
				ifLocalVar26_g844 = temp_output_3_0_g844;
				#ifdef GEOM_TYPE_MESH
				float3 staticSwitch9_g844 = ifLocalVar26_g844;
				#else
				float3 staticSwitch9_g844 = temp_output_3_0_g844;
				#endif
				float3 temp_output_111_0_g858 = staticSwitch9_g844;
				float3 vPos140_g858 = temp_output_111_0_g858;
				float3 vRotatedWindVector140_g858 = rotatedWindVector291;
				float3 vPos145_g858 = temp_output_111_0_g858;
				float4 windGlobal145_g858 = _ST_WindGlobal;
				float localComputeWindAdjust145_g858 = ComputeWindAdjust( vPos145_g858 , windGlobal145_g858 );
				float3 break122_g858 = localGetInstancePos40_g844;
				float temp_output_125_0_g858 = _GlobalTimers[_GlobalTimerId].x;
				float4 appendResult126_g858 = (float4(( break122_g858.x + temp_output_125_0_g858 ) , ( break122_g858.y + ( temp_output_125_0_g858 * 0.8 ) ) , 0.0 , 0.0));
				float4 vData7_g859 = appendResult126_g858;
				float4 localTriangleWave7_g859 = TriangleWave( vData7_g859 );
				float4 vData6_g859 = localTriangleWave7_g859;
				float4 localCubicSmooth6_g859 = CubicSmooth( vData6_g859 );
				float4 break117_g858 = ( ( localCubicSmooth6_g859 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float temp_output_90_0_g858 = ( localComputeWindAdjust145_g858 * ( ( _ST_WindGlobal.y * ( break117_g858.x + ( break117_g858.y * break117_g858.y ) ) ) + ( _ST_WindBranchAdherences.x / _ST_WindGlobal.z ) ) );
				float ifLocalVar142_g858 = 0;
				if( _ST_WindGlobal.w == 0.0 )
				ifLocalVar142_g858 = 0.0;
				else
				ifLocalVar142_g858 = temp_output_90_0_g858;
				float fMoveAmount140_g858 = ifLocalVar142_g858;
				float3 localSwizzleCombineMoveAmount140_g858 = SwizzleCombineMoveAmount( vPos140_g858 , vRotatedWindVector140_g858 , fMoveAmount140_g858 );
				float3 ifLocalVar132_g858 = 0;
				if( _WindQuality <= 0 )
				ifLocalVar132_g858 = temp_output_111_0_g858;
				else
				ifLocalVar132_g858 = localSwizzleCombineMoveAmount140_g858;
				
				float3 temp_output_9_0_g300 = inputMesh.normalOS;
				float3 temp_output_7_0_g301 = temp_output_9_0_g300;
				float3 ifLocalVar30_g301 = 0;
				if( temp_output_2_0_g301 == 4 )
				ifLocalVar30_g301 = mul( temp_output_86_0_g306, temp_output_7_0_g301 );
				else
				ifLocalVar30_g301 = temp_output_7_0_g301;
				float3 ifLocalVar10_g300 = 0;
				if( temp_output_40_0_g300 <= 1.0 )
				ifLocalVar10_g300 = temp_output_9_0_g300;
				else
				ifLocalVar10_g300 = ifLocalVar30_g301;
				float3 ifLocalVar14_g300 = 0;
				if( temp_output_40_0_g300 >= 5.0 )
				ifLocalVar14_g300 = temp_output_9_0_g300;
				else
				ifLocalVar14_g300 = ifLocalVar10_g300;
				#if defined(GEOM_TYPE_BRANCH)
				float3 staticSwitch348 = inputMesh.normalOS;
				#elif defined(GEOM_TYPE_FROND)
				float3 staticSwitch348 = inputMesh.normalOS;
				#elif defined(GEOM_TYPE_LEAF)
				float3 staticSwitch348 = ifLocalVar14_g300;
				#elif defined(GEOM_TYPE_BRANCH_DETAIL)
				float3 staticSwitch348 = inputMesh.normalOS;
				#else
				float3 staticSwitch348 = inputMesh.normalOS;
				#endif
				
				outputPackedVaryingsMeshToPS.ase_texcoord3 = inputMesh.ase_texcoord;
				outputPackedVaryingsMeshToPS.ase_texcoord4 = inputMesh.ase_texcoord2;
				outputPackedVaryingsMeshToPS.ase_color = inputMesh.ase_color;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = ifLocalVar132_g858;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS = staticSwitch348;
				inputMesh.tangentOS =  inputMesh.tangentOS ;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normalOS);
				float4 tangentWS = float4(TransformObjectToWorldDir(inputMesh.tangentOS.xyz), inputMesh.tangentOS.w);

				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.interp00.xyz = positionRWS;
				outputPackedVaryingsMeshToPS.interp01.xyz = normalWS;
				outputPackedVaryingsMeshToPS.interp02.xyzw = tangentWS;
				return outputPackedVaryingsMeshToPS;
			}
			
			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				float4 ase_texcoord3 : TEXCOORD3;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.ase_texcoord1 = v.ase_texcoord1;
				o.ase_texcoord2 = v.ase_texcoord2;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_color = v.ase_color;
				o.ase_texcoord3 = v.ase_texcoord3;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.ase_texcoord1 = patch[0].ase_texcoord1 * bary.x + patch[1].ase_texcoord1 * bary.y + patch[2].ase_texcoord1 * bary.z;
				o.ase_texcoord2 = patch[0].ase_texcoord2 * bary.x + patch[1].ase_texcoord2 * bary.y + patch[2].ase_texcoord2 * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			void Frag( PackedVaryingsMeshToPS packedInput
						#ifdef WRITE_NORMAL_BUFFER
						, out float4 outNormalBuffer : SV_Target0
							#ifdef WRITE_MSAA_DEPTH
							, out float1 depthColor : SV_Target1
							#endif
						#elif defined(WRITE_MSAA_DEPTH)
						, out float4 outNormalBuffer : SV_Target0
						, out float1 depthColor : SV_Target1
						#elif defined(SCENESELECTIONPASS)
						, out float4 outColor : SV_Target0
						#endif
						#ifdef _DEPTHOFFSET_ON
						, out float outputDepth : SV_Depth
						#endif
						
					)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );

				float3 positionRWS = packedInput.interp00.xyz;
				float3 normalWS = packedInput.interp01.xyz;
				float4 tangentWS = packedInput.interp02.xyzw;

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);

				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				input.positionRWS = positionRWS;
				input.tangentToWorld = BuildTangentToWorld(tangentWS, normalWS);

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false );
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				SmoothSurfaceDescription surfaceDescription = (SmoothSurfaceDescription)0;
				float3 _ZNormal = float3(0,0,1);
				float4 appendResult170 = (float4(packedInput.ase_texcoord3.x , packedInput.ase_texcoord3.y , 0.0 , 0.0));
				float3 tex2DNode166 = UnpackNormalScale( tex2D( _BumpMap, appendResult170.xy ), 1.0f );
				float ifLocalVar88 = 0;
				UNITY_BRANCH 
				if( packedInput.ase_color.a == 0.0 )
				ifLocalVar88 = packedInput.ase_texcoord4.z;
				else
				ifLocalVar88 = 2.5;
				float4 appendResult86 = (float4(packedInput.ase_texcoord4.x , packedInput.ase_texcoord4.y , ifLocalVar88 , 0.0));
				float4 break98 = appendResult86;
				float2 appendResult99 = (float2(break98.x , break98.y));
				float4 tex2DNode97 = tex2D( _DetailTex, appendResult99 );
				float ifLocalVar109 = 0;
				UNITY_BRANCH 
				if( break98.z >= 2.0 )
				ifLocalVar109 = tex2DNode97.a;
				else
				ifLocalVar109 = saturate( break98.z );
				float3 lerpResult184 = lerp( tex2DNode166 , UnpackNormalScale( tex2D( _BumpMap, appendResult99 ), 1.0f ) , ifLocalVar109);
				#ifdef GEOM_TYPE_BRANCH_DETAIL
				float3 staticSwitch183 = lerpResult184;
				#else
				float3 staticSwitch183 = tex2DNode166;
				#endif
				#ifdef LIGHTMAP_ON
				float3 staticSwitch167 = _ZNormal;
				#else
				float3 staticSwitch167 = staticSwitch183;
				#endif
				#ifdef EFFECT_BUMP
				float3 staticSwitch197 = staticSwitch167;
				#else
				float3 staticSwitch197 = _ZNormal;
				#endif
				
				float4 tex2DNode91 = tex2D( _MainTex, appendResult170.xy );
				float temp_output_93_0 = ( tex2DNode91.a * _Color.a );
				
				surfaceDescription.Normal = staticSwitch197;
				surfaceDescription.Smoothness = _Smoothness;
				surfaceDescription.Alpha = temp_output_93_0;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _Cutoff;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription, input, V, posInput, surfaceData, builtinData);

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif

				#ifdef WRITE_NORMAL_BUFFER
				EncodeIntoNormalBuffer( ConvertSurfaceDataToNormalData( surfaceData ), posInput.positionSS, outNormalBuffer );
				#ifdef WRITE_MSAA_DEPTH
				depthColor = packedInput.positionCS.z;
				#endif
				#elif defined(WRITE_MSAA_DEPTH)
				outNormalBuffer = float4( 0.0, 0.0, 0.0, 1.0 );
				depthColor = packedInput.positionCS.z;
				#elif defined(SCENESELECTIONPASS)
				outColor = float4( _ObjectId, _PassValue, 1.0, 1.0 );
				#endif
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "Motion Vectors"
			Tags { "LightMode"="MotionVectors" }

			Cull [_CullMode]

			ZWrite On

			Stencil
			{
				Ref [_StencilRefMV]
				WriteMask [_StencilWriteMaskMV]
				Comp Always
				Pass Replace
				Fail Keep
				ZFail Keep
			}


			HLSLPROGRAM

			#define _SPECULAR_OCCLUSION_FROM_AO 1
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define HAVE_MESH_MODIFICATION
			#define ASE_SRP_VERSION 100202


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _ALPHATEST_ON

			#define SHADERPASS SHADERPASS_MOTION_VECTORS
			#pragma multi_compile _ WRITE_NORMAL_BUFFER
			#pragma multi_compile _ WRITE_MSAA_DEPTH

			#pragma vertex Vert
			#pragma fragment Frag

			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#ifdef DEBUG_DISPLAY
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#endif
			
			CBUFFER_START( UnityPerMaterial )
			float4 _ST_WindBranchTwitch;
			float4 _ST_WindBranchAnchor;
			float4 _ST_WindVector;
			float4 _Color;
			float4 _ST_WindLeaf1Tumble;
			float4 _ST_WindTurbulences;
			float4 _ST_WindFrondRipple;
			float4 _ST_WindBranchAdherences;
			float4 _ST_WindAnimation;
			float4 _ST_WindLeaf2Twitch;
			float4 _ST_WindBranchWhip;
			float4 _ST_WindLeaf1Ripple;
			float4 _ST_WindLeaf2Tumble;
			float4 _ST_WindBranch;
			float4 _ST_WindLeaf2Ripple;
			float4 _ST_WindLeaf1Twitch;
			float4 _ST_WindGlobal;
			float _Metallic;
			int _Cull;
			int _WindQuality;
			int _GlobalTimerId;
			float _Cutoff;
			float _Smoothness;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			float4 _GlobalTimers[100];
			sampler2D _BumpMap;
			sampler2D _DetailTex;
			sampler2D _MainTex;


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#pragma shader_feature_local GEOM_TYPE_BRANCH GEOM_TYPE_FROND GEOM_TYPE_LEAF GEOM_TYPE_BRANCH_DETAIL
			#pragma shader_feature_local EFFECT_BUMP
			#pragma shader_feature_local GEOM_TYPE_BRANCH_DETAIL


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
				#define ASE_NEED_CULLFACE 1
			#endif


			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float3 previousPositionOS : TEXCOORD4;
				#if defined (_ADD_PRECOMPUTED_VELOCITY)
					float3 precomputedVelocity : TEXCOORD5;
				#endif
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				float4 ase_texcoord3 : TEXCOORD3;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 vmeshPositionCS : SV_Position;
				float3 vmeshInterp00 : TEXCOORD0;
				float3 vpassInterpolators0 : TEXCOORD1; //interpolators0
				float3 vpassInterpolators1 : TEXCOORD2; //interpolators1
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};


			float3 OffsetLeavesVertex( float3 VertexPos, float ColorAlpha, float3 texcoord1, float2 texcoord3 )
			{
				float lodValue = unity_LODFade.x;
				VertexPos -= texcoord1.xyz;
				bool isFacingLeaf = ColorAlpha == 0;
				if (isFacingLeaf) {
				    #ifdef LOD_FADE_PERCENTAGE
				        VertexPos *= lerp(1.0, texcoord1.w, lodValue);
				    #endif
				    
				    // face camera-facing leaf to camera
				    float offsetLen = length(VertexPos);
				    VertexPos = mul(VertexPos.xyz, (float3x3) transpose(mul(UNITY_MATRIX_I_M, UNITY_MATRIX_I_V))); // inv(MV) * finalPosition
				    VertexPos = normalize(VertexPos) * offsetLen; // make sure the offset vector is still scaled
				}
				else
				{
				    #ifdef LOD_FADE_PERCENTAGE
				        float3 lodPosition = float3(texcoord1.w, texcoord3.x, texcoord3.y);
				        VertexPos = lerp(VertexPos, lodPosition, lodValue);
				    #endif
				}
				return VertexPos;
			}
			
			void CalculateWindInputs( float windQuality, out float3 rotatedWindVector, out float3 rotatedBranchAnchor, float4 windVector, float4 windBranchAnchor )
			{
				if (windQuality <= 0) // WIND_QUALITY_NONE
				{
				    rotatedWindVector = float3(0.0f, 0.0f, 0.0f);
				    rotatedBranchAnchor = float3(0.0f, 0.0f, 0.0f);
				}
				else
				{
				    // compute rotated wind parameters
				    if (length(windVector) > 0) {
				        rotatedWindVector = normalize(mul(windVector.xyz, (float3x3)UNITY_MATRIX_M));
				    } else {
				        rotatedWindVector = 0;
				    }
				    rotatedBranchAnchor = normalize(mul(windBranchAnchor.xyz, (float3x3)UNITY_MATRIX_M)) * windBranchAnchor.w;
				}
			}
			
			float4 CubicSmooth( float4 vData )
			{
				return vData * vData * (3.0 - 2.0 * vData);
			}
			
			float4 TriangleWave( float4 vData )
			{
				return abs((frac(vData + 0.5) * 2.0) - 1.0);
			}
			
			float3 UnpackNormalFromFloat( float3 fValue )
			{
				     float3 vDecodeKey = float3(16.0, 1.0, 0.0625);
				    // decode into [0,1] range
				    float3 vDecodedValue = frac(fValue / vDecodeKey);
				    // move back into [-1,1] range & normalize
				    return (vDecodedValue * 2.0 - 1.0);
			}
			
			float3 ClampToNonZero( float3 data )
			{
				if (length(data) > 0) {
				    return data;
				} else {
				    return float3(0.0001, 0.0001, 0.0001);
				}
			}
			
			float4 ComplexOscillationInputs( float fTime, float fOffset, float fTwitchFreqScale, float fWeight, int bWhip )
			{
				if (bWhip > 0) {
				    return float4(fTime + fOffset, fTime * fTwitchFreqScale + fOffset, fTwitchFreqScale * 0.5 * (fTime + fOffset), fTime + fOffset + (1.0 - fWeight));
				} else {
				    return float4(fTime + fOffset, fTime * fTwitchFreqScale + fOffset, fTwitchFreqScale * 0.5 * (fTime + fOffset), 0.0);
				}
			}
			
			float4 SimpleOscillationInputs( float fTime, float fOffset, float fWeight, int bWhip )
			{
				if (bWhip)
				  return float4(fTime + fOffset, fTime * 0.689 + fOffset, 0.0, fTime + fOffset + (1.0 - fWeight));
				else
				  return float4(fTime + fOffset, fTime * 0.689 + fOffset, 0.0, 0.0);
			}
			
			float3 GetInstancePos(  )
			{
				 return GetAbsolutePositionWS(float3(UNITY_MATRIX_M[0].w, UNITY_MATRIX_M[1].w, UNITY_MATRIX_M[2].w));
			}
			
			float ComputeWindAdjust( float3 vPos, float4 windGlobal )
			{
				    // compute how much the height contributes
				    float fAdjust = max(vPos.y - (1.0 / windGlobal.z) * 0.25, 0.0) * windGlobal.z;
				    if (fAdjust != 0.0) {
				        float s = sign(fAdjust);
				        fAdjust = pow(abs(fAdjust), windGlobal.w) * s;
				    }
				    return fAdjust;
			}
			
			float3 SwizzleCombineMoveAmount( float3 vPos, float3 vRotatedWindVector, float fMoveAmount )
			{
				    float fLength = length(vPos);
				 
				    vPos.xz += vRotatedWindVector.xz * fMoveAmount;
				    vPos.xyz = normalize(vPos.xyz) * fLength;
				    return vPos;
			}
			
			float3x3 RotationMatrix( float3 vAxis, float fAngle )
			{
				    // compute sin/cos of fAngle
				    float2 vSinCos;
				    #ifdef OPENGL
				        vSinCos.x = sin(fAngle);
				        vSinCos.y = cos(fAngle);
				    #else
				        sincos(fAngle, vSinCos.x, vSinCos.y);
				    #endif
				    const float c = vSinCos.y;
				    const float s = vSinCos.x;
				    const float t = 1.0 - c;
				    const float x = vAxis.x;
				    const float y = vAxis.y;
				    const float z = vAxis.z;
				    return float3x3(t * x * x + c,      t * x * y - s * z,  t * x * z + s * y,
				                    t * x * y + s * z,  t * y * y + c,      t * y * z - s * x,
				                    t * x * z - s * y,  t * y * z + s * x,  t * z * z + c);
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout SmoothSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data
				surfaceData.perceptualSmoothness =		surfaceDescription.Smoothness;

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif
				#ifdef ASE_LIT_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				normalTS = surfaceDescription.Normal;
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];

				bentNormalWS = surfaceData.normalWS;

				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs.tangentToWorld[2], surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(SmoothSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			AttributesMesh ApplyMeshModification(AttributesMesh inputMesh, float3 timeParameters, inout PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS )
			{
				_TimeParameters.xyz = timeParameters;
				float3 temp_output_1_0_g4 = inputMesh.positionOS;
				float3 appendResult213 = (float3(inputMesh.ase_texcoord1.xyz));
				float3 lerpResult13_g4 = lerp( temp_output_1_0_g4 , appendResult213 , unity_LODFade.x);
				#ifdef LOD_FADE_PERCENTAGE
				float3 staticSwitch14_g4 = lerpResult13_g4;
				#else
				float3 staticSwitch14_g4 = temp_output_1_0_g4;
				#endif
				float3 temp_output_344_0 = staticSwitch14_g4;
				float3 appendResult331 = (float3(inputMesh.ase_texcoord2.xyz));
				float2 appendResult336 = (float2(inputMesh.ase_texcoord.xy));
				float2 break10_g314 = appendResult336;
				float ifLocalVar11_g314 = 0;
				UNITY_BRANCH 
				if( break10_g314.x >= 0.75 )
				ifLocalVar11_g314 = break10_g314.x;
				else
				ifLocalVar11_g314 = 0.75;
				float4 temp_cast_3 = (( ifLocalVar11_g314 + ( ( _GlobalTimers[_GlobalTimerId].y + break10_g314.y ) * _ST_WindFrondRipple.z ) )).xxxx;
				float4 vData7_g316 = temp_cast_3;
				float4 localTriangleWave7_g316 = TriangleWave( vData7_g316 );
				float4 vData6_g316 = localTriangleWave7_g316;
				float4 localCubicSmooth6_g316 = CubicSmooth( vData6_g316 );
				#ifdef GEOM_TYPE_FROND
				float3 staticSwitch343 = ( temp_output_344_0 + ( appendResult331.y * ( ( localCubicSmooth6_g316 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) ).x * _ST_WindFrondRipple.y * inputMesh.normalOS ) );
				#else
				float3 staticSwitch343 = temp_output_344_0;
				#endif
				int temp_output_40_0_g300 = _WindQuality;
				float3 VertexPos286 = inputMesh.positionOS;
				float3 appendResult112 = (float3(_Color.r , _Color.g , _Color.b));
				float4 appendResult281 = (float4(( appendResult112 * inputMesh.ase_color.r ) , _Color.a));
				float4 appendResult243 = (float4(appendResult281));
				float ColorAlpha286 = appendResult243.a;
				float3 texcoord1286 = appendResult213;
				float2 texcoord3286 = inputMesh.ase_texcoord3.xy;
				float3 localOffsetLeavesVertex286 = OffsetLeavesVertex( VertexPos286 , ColorAlpha286 , texcoord1286 , texcoord3286 );
				float3 temp_output_6_0_g300 = localOffsetLeavesVertex286;
				int temp_output_2_0_g301 = temp_output_40_0_g300;
				float4 break25_g300 = inputMesh.ase_texcoord2;
				float3 temp_cast_5 = (break25_g300.z).xxx;
				float3 fValue10_g305 = temp_cast_5;
				float3 localUnpackNormalFromFloat10_g305 = UnpackNormalFromFloat( fValue10_g305 );
				float temp_output_4_0_g301 = break25_g300.w;
				float ifLocalVar19_g301 = 0;
				if( temp_output_4_0_g301 <= 0.0 )
				ifLocalVar19_g301 = _ST_WindLeaf1Ripple.y;
				else
				ifLocalVar19_g301 = _ST_WindLeaf2Ripple.y;
				float2 break24_g300 = appendResult213.xy;
				float4 break18_g301 = _GlobalTimers[_GlobalTimerId];
				float4 appendResult10_g303 = (float4(( ( break24_g300.x + break24_g300.y ) + break18_g301.y ) , 0.0 , 0.0 , 0.0));
				float4 vData7_g304 = appendResult10_g303;
				float4 localTriangleWave7_g304 = TriangleWave( vData7_g304 );
				float4 vData6_g304 = localTriangleWave7_g304;
				float4 localCubicSmooth6_g304 = CubicSmooth( vData6_g304 );
				float temp_output_8_0_g301 = break25_g300.x;
				float3 temp_output_52_0_g301 = ( temp_output_6_0_g300 + ( localUnpackNormalFromFloat10_g305 * ( ifLocalVar19_g301 * ( ( localCubicSmooth6_g304 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) ).x ) * temp_output_8_0_g301 ) );
				float temp_output_10_0_g301 = break25_g300.y;
				float3 temp_cast_7 = (temp_output_10_0_g301).xxx;
				float3 fValue10_g313 = temp_cast_7;
				float3 localUnpackNormalFromFloat10_g313 = UnpackNormalFromFloat( fValue10_g313 );
				float3 temp_output_5_0_g306 = localUnpackNormalFromFloat10_g313;
				float3 vAxis6_g309 = temp_output_5_0_g306;
				float temp_output_3_0_g306 = temp_output_8_0_g301;
				float4 ifLocalVar32_g301 = 0;
				if( temp_output_4_0_g301 <= 0.0 )
				ifLocalVar32_g301 = _ST_WindLeaf1Tumble;
				else
				ifLocalVar32_g301 = _ST_WindLeaf2Tumble;
				float4 break34_g301 = ifLocalVar32_g301;
				float temp_output_22_0_g306 = frac( ( temp_output_10_0_g301 * 30.3 ) );
				float temp_output_25_0_g306 = ( temp_output_22_0_g306 + temp_output_22_0_g306 + temp_output_22_0_g306 );
				float temp_output_7_0_g306 = break18_g301.z;
				float4 appendResult34_g306 = (float4(( temp_output_25_0_g306 + temp_output_7_0_g306 ) , ( ( temp_output_7_0_g306 * 0.75 ) + ( temp_output_25_0_g306 * -1.0 ) ) , ( ( temp_output_7_0_g306 * 0.01 ) + temp_output_25_0_g306 ) , ( temp_output_25_0_g306 + ( temp_output_7_0_g306 * 1.0 ) )));
				float4 vData7_g308 = appendResult34_g306;
				float4 localTriangleWave7_g308 = TriangleWave( vData7_g308 );
				float4 vData6_g308 = localTriangleWave7_g308;
				float4 localCubicSmooth6_g308 = CubicSmooth( vData6_g308 );
				float4 temp_output_27_0_g306 = ( ( localCubicSmooth6_g308 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break47_g306 = temp_output_27_0_g306;
				float fAngle6_g309 = ( temp_output_3_0_g306 * break34_g301.z * ( break47_g306.x + ( break47_g306.y * break47_g306.y ) ) );
				float3x3 localRotationMatrix6_g309 = RotationMatrix( vAxis6_g309 , fAngle6_g309 );
				int localCalculateWindInputs291 = ( 0 );
				float windQuality291 = (float)_WindQuality;
				float3 rotatedWindVector291 = float3( 0,0,0 );
				float3 rotatedBranchAnchor291 = float3( 0,0,0 );
				float4 windVector291 = _ST_WindVector;
				float4 windBranchAnchor291 = _ST_WindBranchAnchor;
				{
				if (windQuality291 <= 0) // WIND_QUALITY_NONE
				{
				    rotatedWindVector291 = float3(0.0f, 0.0f, 0.0f);
				    rotatedBranchAnchor291 = float3(0.0f, 0.0f, 0.0f);
				}
				else
				{
				    // compute rotated wind parameters
				    if (length(windVector291) > 0) {
				        rotatedWindVector291 = normalize(mul(windVector291.xyz, (float3x3)UNITY_MATRIX_M));
				    } else {
				        rotatedWindVector291 = 0;
				    }
				    rotatedBranchAnchor291 = normalize(mul(windBranchAnchor291.xyz, (float3x3)UNITY_MATRIX_M)) * windBranchAnchor291.w;
				}
				}
				float3 data116_g306 = rotatedWindVector291;
				float3 localClampToNonZero116_g306 = ClampToNonZero( data116_g306 );
				float3 break57_g306 = cross( temp_output_5_0_g306 , localClampToNonZero116_g306 );
				float dotResult55_g306 = dot( float3( 0,0,0 ) , temp_output_5_0_g306 );
				float clampResult56_g306 = clamp( dotResult55_g306 , -1.0 , 1.0 );
				float3 appendResult59_g306 = (float3(break57_g306.x , ( clampResult56_g306 + break57_g306.y ) , break57_g306.z));
				float3 normalizeResult60_g306 = normalize( appendResult59_g306 );
				float3 vAxis6_g312 = normalizeResult60_g306;
				float3 break9_g310 = float3( 0,0,0 );
				float temp_output_4_0_g310 = ( _GlobalTimers[_GlobalTimerId].y + temp_output_25_0_g306 );
				float4 appendResult12_g310 = (float4(( break9_g310.x + break9_g310.z + temp_output_4_0_g310 ) , ( ( 0.87 * temp_output_4_0_g310 ) + break9_g310.y ) , 0.0 , 0.0));
				float4 vData7_g311 = appendResult12_g310;
				float4 localTriangleWave7_g311 = TriangleWave( vData7_g311 );
				float4 vData6_g311 = localTriangleWave7_g311;
				float4 localCubicSmooth6_g311 = CubicSmooth( vData6_g311 );
				float4 break14_g310 = ( ( localCubicSmooth6_g311 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 ifLocalVar35_g301 = 0;
				if( temp_output_4_0_g301 <= 0.0 )
				ifLocalVar35_g301 = _ST_WindLeaf1Twitch;
				else
				ifLocalVar35_g301 = _ST_WindLeaf2Twitch;
				float3 appendResult37_g301 = (float3(ifLocalVar35_g301.xyz));
				float3 break76_g306 = appendResult37_g301;
				float4 break109_g306 = temp_output_27_0_g306;
				float fAngle6_g312 = ( temp_output_3_0_g306 * ( ( acos( clampResult56_g306 ) * break34_g301.w ) + ( pow( saturate( ( ( ( break14_g310.x * break14_g310.y * break14_g310.y ) + 1.0 ) * 0.5 ) ) , break76_g306.y ) * break76_g306.x ) + ( ( break109_g306.y + ( ( break109_g306.x * break109_g306.x ) * -1.0 ) ) * break34_g301.y ) ) );
				float3x3 localRotationMatrix6_g312 = RotationMatrix( vAxis6_g312 , fAngle6_g312 );
				float3x3 temp_output_86_0_g306 = mul( localRotationMatrix6_g309, localRotationMatrix6_g312 );
				float3 temp_output_1_0_g306 = temp_output_52_0_g301;
				float3 normalizeResult91_g306 = normalize( mul( temp_output_86_0_g306, temp_output_1_0_g306 ) );
				float3 ifLocalVar27_g301 = 0;
				if( temp_output_2_0_g301 == 4 )
				ifLocalVar27_g301 = ( normalizeResult91_g306 * length( temp_output_1_0_g306 ) );
				else
				ifLocalVar27_g301 = temp_output_52_0_g301;
				float3 ifLocalVar2_g300 = 0;
				if( temp_output_40_0_g300 <= 1.0 )
				ifLocalVar2_g300 = temp_output_6_0_g300;
				else
				ifLocalVar2_g300 = ifLocalVar27_g301;
				float3 ifLocalVar1_g300 = 0;
				if( temp_output_40_0_g300 >= 5.0 )
				ifLocalVar1_g300 = temp_output_6_0_g300;
				else
				ifLocalVar1_g300 = ifLocalVar2_g300;
				#if defined(GEOM_TYPE_BRANCH)
				float3 staticSwitch214 = staticSwitch343;
				#elif defined(GEOM_TYPE_FROND)
				float3 staticSwitch214 = staticSwitch343;
				#elif defined(GEOM_TYPE_LEAF)
				float3 staticSwitch214 = ( appendResult213 + ifLocalVar1_g300 );
				#elif defined(GEOM_TYPE_BRANCH_DETAIL)
				float3 staticSwitch214 = staticSwitch343;
				#else
				float3 staticSwitch214 = staticSwitch343;
				#endif
				float3 temp_output_3_0_g844 = staticSwitch214;
				int temp_output_24_0_g844 = _WindQuality;
				float4 break32_g844 = inputMesh.ase_texcoord;
				float2 appendResult31_g844 = (float2(break32_g844.z , break32_g844.w));
				float2 break34_g844 = appendResult31_g844;
				float temp_output_5_0_g845 = break34_g844.y;
				float3 temp_cast_10 = (temp_output_5_0_g845).xxx;
				float3 fValue10_g846 = temp_cast_10;
				float3 localUnpackNormalFromFloat10_g846 = UnpackNormalFromFloat( fValue10_g846 );
				float temp_output_4_0_g845 = break34_g844.x;
				int temp_output_7_0_g847 = 0;
				int temp_output_10_0_g847 = 1;
				float3 localGetInstancePos40_g844 = GetInstancePos();
				float3 break17_g845 = localGetInstancePos40_g844;
				float temp_output_3_0_g847 = ( break17_g845.x + break17_g845.y + _GlobalTimers[_GlobalTimerId].y );
				float fTime28_g847 = temp_output_3_0_g847;
				float temp_output_4_0_g847 = temp_output_5_0_g845;
				float fOffset28_g847 = temp_output_4_0_g847;
				float fTwitchFreqScale28_g847 = _ST_WindBranchTwitch.y;
				float temp_output_5_0_g847 = temp_output_4_0_g845;
				float fWeight28_g847 = temp_output_5_0_g847;
				int bWhip28_g847 = temp_output_7_0_g847;
				float4 localComplexOscillationInputs28_g847 = ComplexOscillationInputs( fTime28_g847 , fOffset28_g847 , fTwitchFreqScale28_g847 , fWeight28_g847 , bWhip28_g847 );
				float4 vData7_g849 = localComplexOscillationInputs28_g847;
				float4 localTriangleWave7_g849 = TriangleWave( vData7_g849 );
				float4 vData6_g849 = localTriangleWave7_g849;
				float4 localCubicSmooth6_g849 = CubicSmooth( vData6_g849 );
				float4 temp_output_29_0_g847 = ( ( localCubicSmooth6_g849 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break30_g847 = temp_output_29_0_g847;
				float temp_output_31_0_g847 = ( break30_g847.y * break30_g847.z );
				float ifLocalVar36_g847 = 0;
				if( temp_output_31_0_g847 >= 0.0 )
				ifLocalVar36_g847 = 1.0;
				else
				ifLocalVar36_g847 = ( 1.0 * -1.0 );
				float ifLocalVar35_g847 = 0;
				if( temp_output_31_0_g847 >= 0.0 )
				ifLocalVar35_g847 = temp_output_31_0_g847;
				else
				ifLocalVar35_g847 = ( temp_output_31_0_g847 * -1.0 );
				float lerpResult41_g847 = lerp( temp_output_31_0_g847 , ifLocalVar36_g847 , ifLocalVar35_g847);
				float lerpResult42_g847 = lerp( lerpResult41_g847 , ifLocalVar36_g847 , ifLocalVar35_g847);
				float temp_output_11_0_g847 = _ST_WindBranchTwitch.x;
				float fTime61_g847 = temp_output_3_0_g847;
				float fOffset61_g847 = temp_output_4_0_g847;
				float fWeight61_g847 = temp_output_5_0_g847;
				int bWhip61_g847 = temp_output_7_0_g847;
				float4 localSimpleOscillationInputs61_g847 = SimpleOscillationInputs( fTime61_g847 , fOffset61_g847 , fWeight61_g847 , bWhip61_g847 );
				float4 vData7_g848 = localSimpleOscillationInputs61_g847;
				float4 localTriangleWave7_g848 = TriangleWave( vData7_g848 );
				float4 vData6_g848 = localTriangleWave7_g848;
				float4 localCubicSmooth6_g848 = CubicSmooth( vData6_g848 );
				float4 temp_output_66_0_g847 = ( ( localCubicSmooth6_g848 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break62_g847 = temp_output_66_0_g847;
				float temp_output_64_0_g847 = ( break62_g847.x + ( break62_g847.x * break62_g847.y ) );
				float ifLocalVar17_g847 = 0;
				if( temp_output_10_0_g847 <= 0.0 )
				ifLocalVar17_g847 = temp_output_64_0_g847;
				else
				ifLocalVar17_g847 = ( ( lerpResult42_g847 * temp_output_11_0_g847 * ( 1.0 - _ST_WindVector.w ) ) + ( break30_g847.x * ( 1.0 - temp_output_11_0_g847 ) ) );
				float ifLocalVar52_g847 = 0;
				if( temp_output_7_0_g847 <= 0.0 )
				ifLocalVar52_g847 = ifLocalVar17_g847;
				else
				ifLocalVar52_g847 = ( ifLocalVar17_g847 * ( 1.0 + ( break30_g847.w * (int)_ST_WindBranchWhip.x ) ) );
				float3 temp_output_45_0_g844 = ( temp_output_3_0_g844 + ( ( localUnpackNormalFromFloat10_g846 * temp_output_4_0_g845 ) * ifLocalVar52_g847 * _ST_WindBranch.y ) );
				float temp_output_4_0_g851 = break34_g844.y;
				float3 temp_cast_12 = (temp_output_4_0_g851).xxx;
				float3 fValue10_g854 = temp_cast_12;
				float3 localUnpackNormalFromFloat10_g854 = UnpackNormalFromFloat( fValue10_g854 );
				float temp_output_3_0_g851 = break34_g844.x;
				int temp_output_7_0_g855 = 1;
				int temp_output_10_0_g855 = 1;
				float3 break17_g851 = localGetInstancePos40_g844;
				float temp_output_16_0_g851 = ( _GlobalTimers[_GlobalTimerId].y + break17_g851.x + break17_g851.y );
				float temp_output_3_0_g855 = temp_output_16_0_g851;
				float fTime28_g855 = temp_output_3_0_g855;
				float temp_output_4_0_g855 = temp_output_4_0_g851;
				float fOffset28_g855 = temp_output_4_0_g855;
				float fTwitchFreqScale28_g855 = _ST_WindBranchTwitch.y;
				float temp_output_5_0_g855 = temp_output_3_0_g851;
				float fWeight28_g855 = temp_output_5_0_g855;
				int bWhip28_g855 = temp_output_7_0_g855;
				float4 localComplexOscillationInputs28_g855 = ComplexOscillationInputs( fTime28_g855 , fOffset28_g855 , fTwitchFreqScale28_g855 , fWeight28_g855 , bWhip28_g855 );
				float4 vData7_g857 = localComplexOscillationInputs28_g855;
				float4 localTriangleWave7_g857 = TriangleWave( vData7_g857 );
				float4 vData6_g857 = localTriangleWave7_g857;
				float4 localCubicSmooth6_g857 = CubicSmooth( vData6_g857 );
				float4 temp_output_29_0_g855 = ( ( localCubicSmooth6_g857 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break30_g855 = temp_output_29_0_g855;
				float temp_output_31_0_g855 = ( break30_g855.y * break30_g855.z );
				float ifLocalVar36_g855 = 0;
				if( temp_output_31_0_g855 >= 0.0 )
				ifLocalVar36_g855 = 1.0;
				else
				ifLocalVar36_g855 = ( 1.0 * -1.0 );
				float ifLocalVar35_g855 = 0;
				if( temp_output_31_0_g855 >= 0.0 )
				ifLocalVar35_g855 = temp_output_31_0_g855;
				else
				ifLocalVar35_g855 = ( temp_output_31_0_g855 * -1.0 );
				float lerpResult41_g855 = lerp( temp_output_31_0_g855 , ifLocalVar36_g855 , ifLocalVar35_g855);
				float lerpResult42_g855 = lerp( lerpResult41_g855 , ifLocalVar36_g855 , ifLocalVar35_g855);
				float temp_output_11_0_g855 = _ST_WindBranchTwitch.x;
				float fTime61_g855 = temp_output_3_0_g855;
				float fOffset61_g855 = temp_output_4_0_g855;
				float fWeight61_g855 = temp_output_5_0_g855;
				int bWhip61_g855 = temp_output_7_0_g855;
				float4 localSimpleOscillationInputs61_g855 = SimpleOscillationInputs( fTime61_g855 , fOffset61_g855 , fWeight61_g855 , bWhip61_g855 );
				float4 vData7_g856 = localSimpleOscillationInputs61_g855;
				float4 localTriangleWave7_g856 = TriangleWave( vData7_g856 );
				float4 vData6_g856 = localTriangleWave7_g856;
				float4 localCubicSmooth6_g856 = CubicSmooth( vData6_g856 );
				float4 temp_output_66_0_g855 = ( ( localCubicSmooth6_g856 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break62_g855 = temp_output_66_0_g855;
				float temp_output_64_0_g855 = ( break62_g855.x + ( break62_g855.x * break62_g855.y ) );
				float ifLocalVar17_g855 = 0;
				if( temp_output_10_0_g855 <= 0.0 )
				ifLocalVar17_g855 = temp_output_64_0_g855;
				else
				ifLocalVar17_g855 = ( ( lerpResult42_g855 * temp_output_11_0_g855 * ( 1.0 - _ST_WindVector.w ) ) + ( break30_g855.x * ( 1.0 - temp_output_11_0_g855 ) ) );
				float temp_output_11_0_g851 = _ST_WindBranchWhip.x;
				float ifLocalVar52_g855 = 0;
				if( temp_output_7_0_g855 <= 0.0 )
				ifLocalVar52_g855 = ifLocalVar17_g855;
				else
				ifLocalVar52_g855 = ( ifLocalVar17_g855 * ( 1.0 + ( break30_g855.w * (int)temp_output_11_0_g851 ) ) );
				float3 temp_output_23_0_g851 = ( temp_output_3_0_g844 + ( ( localUnpackNormalFromFloat10_g854 * temp_output_3_0_g851 ) * ifLocalVar52_g855 * _ST_WindBranch.y ) );
				float temp_output_3_0_g852 = temp_output_4_0_g851;
				float temp_output_6_0_g852 = _ST_WindTurbulences.y;
				float4 appendResult9_g852 = (float4(( ( temp_output_16_0_g851 * 0.1 ) + temp_output_3_0_g852 ) , ( ( _ST_WindAnimation.x * temp_output_6_0_g852 * 0.1 ) + temp_output_3_0_g852 ) , 0.0 , 0.0));
				float4 vData7_g853 = appendResult9_g852;
				float4 localTriangleWave7_g853 = TriangleWave( vData7_g853 );
				float4 vData6_g853 = localTriangleWave7_g853;
				float4 localCubicSmooth6_g853 = CubicSmooth( vData6_g853 );
				float4 break16_g852 = ( ( localCubicSmooth6_g853 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 ifLocalVar59_g855 = 0;
				if( temp_output_10_0_g855 <= 0.0 )
				ifLocalVar59_g855 = temp_output_66_0_g855;
				else
				ifLocalVar59_g855 = temp_output_29_0_g855;
				float3 ifLocalVar29_g844 = 0;
				if( temp_output_24_0_g844 == 5 )
				ifLocalVar29_g844 = ( ( ( rotatedBranchAnchor291 + ( temp_output_23_0_g851 * float3( -1,0,0 ) ) ) * _ST_WindBranchAdherences.y * ( ( 1.0 - ( break16_g852.x * break16_g852.y * break16_g852.x * break16_g852.y * temp_output_6_0_g852 ) ) + ( ifLocalVar59_g855.w * _ST_WindVector.w * temp_output_11_0_g851 ) ) * temp_output_3_0_g851 ) + temp_output_23_0_g851 );
				else
				ifLocalVar29_g844 = temp_output_45_0_g844;
				float3 ifLocalVar26_g844 = 0;
				if( temp_output_24_0_g844 >= 3 )
				ifLocalVar26_g844 = ifLocalVar29_g844;
				else
				ifLocalVar26_g844 = temp_output_3_0_g844;
				#ifdef GEOM_TYPE_MESH
				float3 staticSwitch9_g844 = ifLocalVar26_g844;
				#else
				float3 staticSwitch9_g844 = temp_output_3_0_g844;
				#endif
				float3 temp_output_111_0_g858 = staticSwitch9_g844;
				float3 vPos140_g858 = temp_output_111_0_g858;
				float3 vRotatedWindVector140_g858 = rotatedWindVector291;
				float3 vPos145_g858 = temp_output_111_0_g858;
				float4 windGlobal145_g858 = _ST_WindGlobal;
				float localComputeWindAdjust145_g858 = ComputeWindAdjust( vPos145_g858 , windGlobal145_g858 );
				float3 break122_g858 = localGetInstancePos40_g844;
				float temp_output_125_0_g858 = _GlobalTimers[_GlobalTimerId].x;
				float4 appendResult126_g858 = (float4(( break122_g858.x + temp_output_125_0_g858 ) , ( break122_g858.y + ( temp_output_125_0_g858 * 0.8 ) ) , 0.0 , 0.0));
				float4 vData7_g859 = appendResult126_g858;
				float4 localTriangleWave7_g859 = TriangleWave( vData7_g859 );
				float4 vData6_g859 = localTriangleWave7_g859;
				float4 localCubicSmooth6_g859 = CubicSmooth( vData6_g859 );
				float4 break117_g858 = ( ( localCubicSmooth6_g859 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float temp_output_90_0_g858 = ( localComputeWindAdjust145_g858 * ( ( _ST_WindGlobal.y * ( break117_g858.x + ( break117_g858.y * break117_g858.y ) ) ) + ( _ST_WindBranchAdherences.x / _ST_WindGlobal.z ) ) );
				float ifLocalVar142_g858 = 0;
				if( _ST_WindGlobal.w == 0.0 )
				ifLocalVar142_g858 = 0.0;
				else
				ifLocalVar142_g858 = temp_output_90_0_g858;
				float fMoveAmount140_g858 = ifLocalVar142_g858;
				float3 localSwizzleCombineMoveAmount140_g858 = SwizzleCombineMoveAmount( vPos140_g858 , vRotatedWindVector140_g858 , fMoveAmount140_g858 );
				float3 ifLocalVar132_g858 = 0;
				if( _WindQuality <= 0 )
				ifLocalVar132_g858 = temp_output_111_0_g858;
				else
				ifLocalVar132_g858 = localSwizzleCombineMoveAmount140_g858;
				
				float3 temp_output_9_0_g300 = inputMesh.normalOS;
				float3 temp_output_7_0_g301 = temp_output_9_0_g300;
				float3 ifLocalVar30_g301 = 0;
				if( temp_output_2_0_g301 == 4 )
				ifLocalVar30_g301 = mul( temp_output_86_0_g306, temp_output_7_0_g301 );
				else
				ifLocalVar30_g301 = temp_output_7_0_g301;
				float3 ifLocalVar10_g300 = 0;
				if( temp_output_40_0_g300 <= 1.0 )
				ifLocalVar10_g300 = temp_output_9_0_g300;
				else
				ifLocalVar10_g300 = ifLocalVar30_g301;
				float3 ifLocalVar14_g300 = 0;
				if( temp_output_40_0_g300 >= 5.0 )
				ifLocalVar14_g300 = temp_output_9_0_g300;
				else
				ifLocalVar14_g300 = ifLocalVar10_g300;
				#if defined(GEOM_TYPE_BRANCH)
				float3 staticSwitch348 = inputMesh.normalOS;
				#elif defined(GEOM_TYPE_FROND)
				float3 staticSwitch348 = inputMesh.normalOS;
				#elif defined(GEOM_TYPE_LEAF)
				float3 staticSwitch348 = ifLocalVar14_g300;
				#elif defined(GEOM_TYPE_BRANCH_DETAIL)
				float3 staticSwitch348 = inputMesh.normalOS;
				#else
				float3 staticSwitch348 = inputMesh.normalOS;
				#endif
				
				outputPackedVaryingsMeshToPS.ase_texcoord3 = inputMesh.ase_texcoord;
				outputPackedVaryingsMeshToPS.ase_texcoord4 = inputMesh.ase_texcoord2;
				outputPackedVaryingsMeshToPS.ase_color = inputMesh.ase_color;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = ifLocalVar132_g858;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif
				inputMesh.normalOS = staticSwitch348;
				return inputMesh;
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh)
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS = (PackedVaryingsMeshToPS)0;
				AttributesMesh defaultMesh = inputMesh;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				inputMesh = ApplyMeshModification( inputMesh, _TimeParameters.xyz, outputPackedVaryingsMeshToPS);

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normalOS);

				float3 VMESHpositionRWS = positionRWS;
				float4 VMESHpositionCS = TransformWorldToHClip(positionRWS);

				float4 VPASSpreviousPositionCS;
				float4 VPASSpositionCS = mul(UNITY_MATRIX_UNJITTERED_VP, float4(VMESHpositionRWS, 1.0));

				bool forceNoMotion = unity_MotionVectorsParams.y == 0.0;
				if (forceNoMotion)
				{
					VPASSpreviousPositionCS = float4(0.0, 0.0, 0.0, 1.0);
				}
				else
				{
					bool hasDeformation = unity_MotionVectorsParams.x > 0.0;
					float3 effectivePositionOS = (hasDeformation ? inputMesh.previousPositionOS : defaultMesh.positionOS);
					#if defined(_ADD_PRECOMPUTED_VELOCITY)
					effectivePositionOS -= inputMesh.precomputedVelocity;
					#endif

					#if defined(HAVE_MESH_MODIFICATION)
						AttributesMesh previousMesh = defaultMesh;
						previousMesh.positionOS = effectivePositionOS ;
						PackedVaryingsMeshToPS test = (PackedVaryingsMeshToPS)0;
						float3 curTime = _TimeParameters.xyz;
						previousMesh = ApplyMeshModification(previousMesh, _LastTimeParameters.xyz, test);
						_TimeParameters.xyz = curTime;
						float3 previousPositionRWS = TransformPreviousObjectToWorld(previousMesh.positionOS);
					#else
						float3 previousPositionRWS = TransformPreviousObjectToWorld(effectivePositionOS);
					#endif

					#ifdef ATTRIBUTES_NEED_NORMAL
						float3 normalWS = TransformPreviousObjectToWorldNormal(defaultMesh.normalOS);
					#else
						float3 normalWS = float3(0.0, 0.0, 0.0);
					#endif

					#if defined(HAVE_VERTEX_MODIFICATION)
						//ApplyVertexModification(inputMesh, normalWS, previousPositionRWS, _LastTimeParameters.xyz);
					#endif

					VPASSpreviousPositionCS = mul(UNITY_MATRIX_PREV_VP, float4(previousPositionRWS, 1.0));
				}

				outputPackedVaryingsMeshToPS.vmeshPositionCS = VMESHpositionCS;
				outputPackedVaryingsMeshToPS.vmeshInterp00.xyz = VMESHpositionRWS;

				outputPackedVaryingsMeshToPS.vpassInterpolators0 = float3(VPASSpositionCS.xyw);
				outputPackedVaryingsMeshToPS.vpassInterpolators1 = float3(VPASSpreviousPositionCS.xyw);
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float3 previousPositionOS : TEXCOORD4;
				#if defined (_ADD_PRECOMPUTED_VELOCITY)
					float3 precomputedVelocity : TEXCOORD5;
				#endif
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				float4 ase_texcoord3 : TEXCOORD3;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.previousPositionOS = v.previousPositionOS;
				#if defined (_ADD_PRECOMPUTED_VELOCITY)
				o.precomputedVelocity = v.precomputedVelocity;
				#endif
				o.ase_texcoord1 = v.ase_texcoord1;
				o.ase_texcoord2 = v.ase_texcoord2;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_color = v.ase_color;
				o.ase_texcoord3 = v.ase_texcoord3;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.previousPositionOS = patch[0].previousPositionOS * bary.x + patch[1].previousPositionOS * bary.y + patch[2].previousPositionOS * bary.z;
				#if defined (_ADD_PRECOMPUTED_VELOCITY)
					o.precomputedVelocity = patch[0].precomputedVelocity * bary.x + patch[1].precomputedVelocity * bary.y + patch[2].precomputedVelocity * bary.z;
				#endif
				o.ase_texcoord1 = patch[0].ase_texcoord1 * bary.x + patch[1].ase_texcoord1 * bary.y + patch[2].ase_texcoord1 * bary.z;
				o.ase_texcoord2 = patch[0].ase_texcoord2 * bary.x + patch[1].ase_texcoord2 * bary.y + patch[2].ase_texcoord2 * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			void Frag( PackedVaryingsMeshToPS packedInput
				, out float4 outMotionVector : SV_Target0
				#ifdef WRITE_NORMAL_BUFFER
				, out float4 outNormalBuffer : SV_Target1
					#ifdef WRITE_MSAA_DEPTH
						, out float1 depthColor : SV_Target2
					#endif
				#elif defined(WRITE_MSAA_DEPTH)
				, out float4 outNormalBuffer : SV_Target1
				, out float1 depthColor : SV_Target2
				#endif

				#ifdef _DEPTHOFFSET_ON
					, out float outputDepth : SV_Depth
				#endif
				
				)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );
				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.vmeshPositionCS;
				input.positionRWS = packedInput.vmeshInterp00.xyz;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				SurfaceData surfaceData;
				BuiltinData builtinData;

				SmoothSurfaceDescription surfaceDescription = (SmoothSurfaceDescription)0;
				float3 _ZNormal = float3(0,0,1);
				float4 appendResult170 = (float4(packedInput.ase_texcoord3.x , packedInput.ase_texcoord3.y , 0.0 , 0.0));
				float3 tex2DNode166 = UnpackNormalScale( tex2D( _BumpMap, appendResult170.xy ), 1.0f );
				float ifLocalVar88 = 0;
				UNITY_BRANCH 
				if( packedInput.ase_color.a == 0.0 )
				ifLocalVar88 = packedInput.ase_texcoord4.z;
				else
				ifLocalVar88 = 2.5;
				float4 appendResult86 = (float4(packedInput.ase_texcoord4.x , packedInput.ase_texcoord4.y , ifLocalVar88 , 0.0));
				float4 break98 = appendResult86;
				float2 appendResult99 = (float2(break98.x , break98.y));
				float4 tex2DNode97 = tex2D( _DetailTex, appendResult99 );
				float ifLocalVar109 = 0;
				UNITY_BRANCH 
				if( break98.z >= 2.0 )
				ifLocalVar109 = tex2DNode97.a;
				else
				ifLocalVar109 = saturate( break98.z );
				float3 lerpResult184 = lerp( tex2DNode166 , UnpackNormalScale( tex2D( _BumpMap, appendResult99 ), 1.0f ) , ifLocalVar109);
				#ifdef GEOM_TYPE_BRANCH_DETAIL
				float3 staticSwitch183 = lerpResult184;
				#else
				float3 staticSwitch183 = tex2DNode166;
				#endif
				#ifdef LIGHTMAP_ON
				float3 staticSwitch167 = _ZNormal;
				#else
				float3 staticSwitch167 = staticSwitch183;
				#endif
				#ifdef EFFECT_BUMP
				float3 staticSwitch197 = staticSwitch167;
				#else
				float3 staticSwitch197 = _ZNormal;
				#endif
				
				float4 tex2DNode91 = tex2D( _MainTex, appendResult170.xy );
				float temp_output_93_0 = ( tex2DNode91.a * _Color.a );
				
				surfaceDescription.Normal = staticSwitch197;
				surfaceDescription.Smoothness = _Smoothness;
				surfaceDescription.Alpha = temp_output_93_0;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _Cutoff;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				GetSurfaceAndBuiltinData( surfaceDescription, input, V, posInput, surfaceData, builtinData );

				float4 VPASSpositionCS = float4(packedInput.vpassInterpolators0.xy, 0.0, packedInput.vpassInterpolators0.z);
				float4 VPASSpreviousPositionCS = float4(packedInput.vpassInterpolators1.xy, 0.0, packedInput.vpassInterpolators1.z);

				#ifdef _DEPTHOFFSET_ON
				VPASSpositionCS.w += builtinData.depthOffset;
				VPASSpreviousPositionCS.w += builtinData.depthOffset;
				#endif

				float2 motionVector = CalculateMotionVector( VPASSpositionCS, VPASSpreviousPositionCS );
				EncodeMotionVector( motionVector * 0.5, outMotionVector );

				bool forceNoMotion = unity_MotionVectorsParams.y == 0.0;
				if( forceNoMotion )
					outMotionVector = float4( 2.0, 0.0, 0.0, 0.0 );

				#ifdef WRITE_NORMAL_BUFFER
				EncodeIntoNormalBuffer( ConvertSurfaceDataToNormalData( surfaceData ), posInput.positionSS, outNormalBuffer );

				#ifdef WRITE_MSAA_DEPTH
				depthColor = packedInput.vmeshPositionCS.z;
				#endif
				#elif defined(WRITE_MSAA_DEPTH)
				outNormalBuffer = float4( 0.0, 0.0, 0.0, 1.0 );
				depthColor = packedInput.vmeshPositionCS.z;
				#endif

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "Forward"
			Tags { "LightMode"="Forward" }

			Blend [_SrcBlend] [_DstBlend], [_AlphaSrcBlend] [_AlphaDstBlend]
			Cull [_CullModeForward]
			ZTest [_ZTestDepthEqualForOpaque]
			ZWrite [_ZWrite]

			Stencil
			{
				Ref [_StencilRef]
				WriteMask [_StencilWriteMask]
				Comp Always
				Pass Replace
				Fail Keep
				ZFail Keep
			}


			ColorMask [_ColorMaskTransparentVel] 1

			HLSLPROGRAM

			#define _SPECULAR_OCCLUSION_FROM_AO 1
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define HAVE_MESH_MODIFICATION
			#define ASE_SRP_VERSION 100202


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _ALPHATEST_ON

			#if !defined(DEBUG_DISPLAY) && defined(_ALPHATEST_ON)
			#define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
			#endif

			#define SHADERPASS SHADERPASS_FORWARD
			#pragma multi_compile _ DEBUG_DISPLAY
			#pragma multi_compile _ LIGHTMAP_ON
			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ DYNAMICLIGHTMAP_ON
			#pragma multi_compile _ SHADOWS_SHADOWMASK
			#pragma multi_compile DECALS_OFF DECALS_3RT DECALS_4RT
			#pragma multi_compile USE_FPTL_LIGHTLIST USE_CLUSTERED_LIGHTLIST
			#pragma multi_compile SHADOW_LOW SHADOW_MEDIUM SHADOW_HIGH

			#pragma vertex Vert
			#pragma fragment Frag

			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#ifdef DEBUG_DISPLAY
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#endif

			// CBuffer must be declared before Material.hlsl since it internaly uses _BlendMode now
			CBUFFER_START( UnityPerMaterial )
			float4 _ST_WindBranchTwitch;
			float4 _ST_WindBranchAnchor;
			float4 _ST_WindVector;
			float4 _Color;
			float4 _ST_WindLeaf1Tumble;
			float4 _ST_WindTurbulences;
			float4 _ST_WindFrondRipple;
			float4 _ST_WindBranchAdherences;
			float4 _ST_WindAnimation;
			float4 _ST_WindLeaf2Twitch;
			float4 _ST_WindBranchWhip;
			float4 _ST_WindLeaf1Ripple;
			float4 _ST_WindLeaf2Tumble;
			float4 _ST_WindBranch;
			float4 _ST_WindLeaf2Ripple;
			float4 _ST_WindLeaf1Twitch;
			float4 _ST_WindGlobal;
			float _Metallic;
			int _Cull;
			int _WindQuality;
			int _GlobalTimerId;
			float _Cutoff;
			float _Smoothness;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			float4 _GlobalTimers[100];
			sampler2D _MainTex;
			sampler2D _DetailTex;
			sampler2D _BumpMap;


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Lighting.hlsl"
			#define HAS_LIGHTLOOP
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoop.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_NORMAL
			#define ASE_NEEDS_FRAG_COLOR
			#pragma shader_feature_local GEOM_TYPE_BRANCH GEOM_TYPE_FROND GEOM_TYPE_LEAF GEOM_TYPE_BRANCH_DETAIL
			#pragma shader_feature_local EFFECT_HUE_VARIATION
			#pragma shader_feature_local GEOM_TYPE_BRANCH_DETAIL
			#pragma shader_feature_local EFFECT_BUMP


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
				#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					float3 previousPositionOS : TEXCOORD4;
					#if defined (_ADD_PRECOMPUTED_VELOCITY)
						float3 precomputedVelocity : TEXCOORD5;
					#endif
				#endif
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				float4 ase_texcoord3 : TEXCOORD3;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 interp00 : TEXCOORD0;
				float3 interp01 : TEXCOORD1;
				float4 interp02 : TEXCOORD2;
				float4 interp03 : TEXCOORD3;
				float4 interp04 : TEXCOORD4;
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					float3 vpassPositionCS : TEXCOORD5;
					float3 vpassPreviousPositionCS : TEXCOORD6;
				#endif
				float4 ase_texcoord7 : TEXCOORD7;
				float4 ase_color : COLOR;
				float4 ase_texcoord8 : TEXCOORD8;
				float3 ase_normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			float3 OffsetLeavesVertex( float3 VertexPos, float ColorAlpha, float3 texcoord1, float2 texcoord3 )
			{
				float lodValue = unity_LODFade.x;
				VertexPos -= texcoord1.xyz;
				bool isFacingLeaf = ColorAlpha == 0;
				if (isFacingLeaf) {
				    #ifdef LOD_FADE_PERCENTAGE
				        VertexPos *= lerp(1.0, texcoord1.w, lodValue);
				    #endif
				    
				    // face camera-facing leaf to camera
				    float offsetLen = length(VertexPos);
				    VertexPos = mul(VertexPos.xyz, (float3x3) transpose(mul(UNITY_MATRIX_I_M, UNITY_MATRIX_I_V))); // inv(MV) * finalPosition
				    VertexPos = normalize(VertexPos) * offsetLen; // make sure the offset vector is still scaled
				}
				else
				{
				    #ifdef LOD_FADE_PERCENTAGE
				        float3 lodPosition = float3(texcoord1.w, texcoord3.x, texcoord3.y);
				        VertexPos = lerp(VertexPos, lodPosition, lodValue);
				    #endif
				}
				return VertexPos;
			}
			
			void CalculateWindInputs( float windQuality, out float3 rotatedWindVector, out float3 rotatedBranchAnchor, float4 windVector, float4 windBranchAnchor )
			{
				if (windQuality <= 0) // WIND_QUALITY_NONE
				{
				    rotatedWindVector = float3(0.0f, 0.0f, 0.0f);
				    rotatedBranchAnchor = float3(0.0f, 0.0f, 0.0f);
				}
				else
				{
				    // compute rotated wind parameters
				    if (length(windVector) > 0) {
				        rotatedWindVector = normalize(mul(windVector.xyz, (float3x3)UNITY_MATRIX_M));
				    } else {
				        rotatedWindVector = 0;
				    }
				    rotatedBranchAnchor = normalize(mul(windBranchAnchor.xyz, (float3x3)UNITY_MATRIX_M)) * windBranchAnchor.w;
				}
			}
			
			float4 CubicSmooth( float4 vData )
			{
				return vData * vData * (3.0 - 2.0 * vData);
			}
			
			float4 TriangleWave( float4 vData )
			{
				return abs((frac(vData + 0.5) * 2.0) - 1.0);
			}
			
			float3 UnpackNormalFromFloat( float3 fValue )
			{
				     float3 vDecodeKey = float3(16.0, 1.0, 0.0625);
				    // decode into [0,1] range
				    float3 vDecodedValue = frac(fValue / vDecodeKey);
				    // move back into [-1,1] range & normalize
				    return (vDecodedValue * 2.0 - 1.0);
			}
			
			float3 ClampToNonZero( float3 data )
			{
				if (length(data) > 0) {
				    return data;
				} else {
				    return float3(0.0001, 0.0001, 0.0001);
				}
			}
			
			float4 ComplexOscillationInputs( float fTime, float fOffset, float fTwitchFreqScale, float fWeight, int bWhip )
			{
				if (bWhip > 0) {
				    return float4(fTime + fOffset, fTime * fTwitchFreqScale + fOffset, fTwitchFreqScale * 0.5 * (fTime + fOffset), fTime + fOffset + (1.0 - fWeight));
				} else {
				    return float4(fTime + fOffset, fTime * fTwitchFreqScale + fOffset, fTwitchFreqScale * 0.5 * (fTime + fOffset), 0.0);
				}
			}
			
			float4 SimpleOscillationInputs( float fTime, float fOffset, float fWeight, int bWhip )
			{
				if (bWhip)
				  return float4(fTime + fOffset, fTime * 0.689 + fOffset, 0.0, fTime + fOffset + (1.0 - fWeight));
				else
				  return float4(fTime + fOffset, fTime * 0.689 + fOffset, 0.0, 0.0);
			}
			
			float3 GetInstancePos(  )
			{
				 return GetAbsolutePositionWS(float3(UNITY_MATRIX_M[0].w, UNITY_MATRIX_M[1].w, UNITY_MATRIX_M[2].w));
			}
			
			float ComputeWindAdjust( float3 vPos, float4 windGlobal )
			{
				    // compute how much the height contributes
				    float fAdjust = max(vPos.y - (1.0 / windGlobal.z) * 0.25, 0.0) * windGlobal.z;
				    if (fAdjust != 0.0) {
				        float s = sign(fAdjust);
				        fAdjust = pow(abs(fAdjust), windGlobal.w) * s;
				    }
				    return fAdjust;
			}
			
			float3 SwizzleCombineMoveAmount( float3 vPos, float3 vRotatedWindVector, float fMoveAmount )
			{
				    float fLength = length(vPos);
				 
				    vPos.xz += vRotatedWindVector.xz * fMoveAmount;
				    vPos.xyz = normalize(vPos.xyz) * fLength;
				    return vPos;
			}
			
			float3x3 RotationMatrix( float3 vAxis, float fAngle )
			{
				    // compute sin/cos of fAngle
				    float2 vSinCos;
				    #ifdef OPENGL
				        vSinCos.x = sin(fAngle);
				        vSinCos.y = cos(fAngle);
				    #else
				        sincos(fAngle, vSinCos.x, vSinCos.y);
				    #endif
				    const float c = vSinCos.y;
				    const float s = vSinCos.x;
				    const float t = 1.0 - c;
				    const float x = vAxis.x;
				    const float y = vAxis.y;
				    const float z = vAxis.z;
				    return float3x3(t * x * x + c,      t * x * y - s * z,  t * x * z + s * y,
				                    t * x * y + s * z,  t * y * y + c,      t * y * z - s * x,
				                    t * x * z - s * y,  t * y * z + s * x,  t * z * z + c);
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout GlobalSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data
				surfaceData.baseColor =					surfaceDescription.Albedo;
				surfaceData.perceptualSmoothness =		surfaceDescription.Smoothness;
				surfaceData.ambientOcclusion =			surfaceDescription.Occlusion;
				surfaceData.metallic =					surfaceDescription.Metallic;
				surfaceData.coatMask =					surfaceDescription.CoatMask;

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceData.specularOcclusion =			surfaceDescription.SpecularOcclusion;
				#endif
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.subsurfaceMask =			surfaceDescription.SubsurfaceMask;
				#endif
				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceData.thickness =					surfaceDescription.Thickness;
				#endif
				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceData.diffusionProfileHash =		asuint(surfaceDescription.DiffusionProfile);
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.specularColor =				surfaceDescription.Specular;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.anisotropy =				surfaceDescription.Anisotropy;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.iridescenceMask =			surfaceDescription.IridescenceMask;
				surfaceData.iridescenceThickness =		surfaceDescription.IridescenceThickness;
				#endif

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.ior = surfaceDescription.RefractionIndex;
					surfaceData.transmittanceColor = surfaceDescription.RefractionColor;
					surfaceData.atDistance = surfaceDescription.RefractionDistance;

					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif
				#ifdef ASE_LIT_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				normalTS = surfaceDescription.Normal;
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];

				bentNormalWS = surfaceData.normalWS;
				#ifdef ASE_BENT_NORMAL
				GetNormalWS( fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants );
				#endif

				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.tangentWS = TransformTangentToWorld( surfaceDescription.Tangent, fragInputs.tangentToWorld );
				#endif
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs.tangentToWorld[2], surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceData.perceptualSmoothness = GeometricNormalFiltering( surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[ 2 ], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold );
				#endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(GlobalSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				#ifdef _ASE_BAKEDGI
				builtinData.bakeDiffuseLighting = surfaceDescription.BakedGI;
				#endif
				#ifdef _ASE_BAKEDBACKGI
				builtinData.backBakeDiffuseLighting = surfaceDescription.BakedBackGI;
				#endif

				builtinData.emissiveColor = surfaceDescription.Emission;

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			AttributesMesh ApplyMeshModification(AttributesMesh inputMesh, float3 timeParameters, inout PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS )
			{
				_TimeParameters.xyz = timeParameters;
				float3 temp_output_1_0_g4 = inputMesh.positionOS;
				float3 appendResult213 = (float3(inputMesh.uv1.xyz));
				float3 lerpResult13_g4 = lerp( temp_output_1_0_g4 , appendResult213 , unity_LODFade.x);
				#ifdef LOD_FADE_PERCENTAGE
				float3 staticSwitch14_g4 = lerpResult13_g4;
				#else
				float3 staticSwitch14_g4 = temp_output_1_0_g4;
				#endif
				float3 temp_output_344_0 = staticSwitch14_g4;
				float3 appendResult331 = (float3(inputMesh.uv2.xyz));
				float2 appendResult336 = (float2(inputMesh.ase_texcoord.xy));
				float2 break10_g314 = appendResult336;
				float ifLocalVar11_g314 = 0;
				UNITY_BRANCH 
				if( break10_g314.x >= 0.75 )
				ifLocalVar11_g314 = break10_g314.x;
				else
				ifLocalVar11_g314 = 0.75;
				float4 temp_cast_3 = (( ifLocalVar11_g314 + ( ( _GlobalTimers[_GlobalTimerId].y + break10_g314.y ) * _ST_WindFrondRipple.z ) )).xxxx;
				float4 vData7_g316 = temp_cast_3;
				float4 localTriangleWave7_g316 = TriangleWave( vData7_g316 );
				float4 vData6_g316 = localTriangleWave7_g316;
				float4 localCubicSmooth6_g316 = CubicSmooth( vData6_g316 );
				#ifdef GEOM_TYPE_FROND
				float3 staticSwitch343 = ( temp_output_344_0 + ( appendResult331.y * ( ( localCubicSmooth6_g316 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) ).x * _ST_WindFrondRipple.y * inputMesh.normalOS ) );
				#else
				float3 staticSwitch343 = temp_output_344_0;
				#endif
				int temp_output_40_0_g300 = _WindQuality;
				float3 VertexPos286 = inputMesh.positionOS;
				float3 appendResult112 = (float3(_Color.r , _Color.g , _Color.b));
				float4 appendResult281 = (float4(( appendResult112 * inputMesh.ase_color.r ) , _Color.a));
				float4 appendResult243 = (float4(appendResult281));
				float ColorAlpha286 = appendResult243.a;
				float3 texcoord1286 = appendResult213;
				float2 texcoord3286 = inputMesh.ase_texcoord3.xy;
				float3 localOffsetLeavesVertex286 = OffsetLeavesVertex( VertexPos286 , ColorAlpha286 , texcoord1286 , texcoord3286 );
				float3 temp_output_6_0_g300 = localOffsetLeavesVertex286;
				int temp_output_2_0_g301 = temp_output_40_0_g300;
				float4 break25_g300 = inputMesh.uv2;
				float3 temp_cast_5 = (break25_g300.z).xxx;
				float3 fValue10_g305 = temp_cast_5;
				float3 localUnpackNormalFromFloat10_g305 = UnpackNormalFromFloat( fValue10_g305 );
				float temp_output_4_0_g301 = break25_g300.w;
				float ifLocalVar19_g301 = 0;
				if( temp_output_4_0_g301 <= 0.0 )
				ifLocalVar19_g301 = _ST_WindLeaf1Ripple.y;
				else
				ifLocalVar19_g301 = _ST_WindLeaf2Ripple.y;
				float2 break24_g300 = appendResult213.xy;
				float4 break18_g301 = _GlobalTimers[_GlobalTimerId];
				float4 appendResult10_g303 = (float4(( ( break24_g300.x + break24_g300.y ) + break18_g301.y ) , 0.0 , 0.0 , 0.0));
				float4 vData7_g304 = appendResult10_g303;
				float4 localTriangleWave7_g304 = TriangleWave( vData7_g304 );
				float4 vData6_g304 = localTriangleWave7_g304;
				float4 localCubicSmooth6_g304 = CubicSmooth( vData6_g304 );
				float temp_output_8_0_g301 = break25_g300.x;
				float3 temp_output_52_0_g301 = ( temp_output_6_0_g300 + ( localUnpackNormalFromFloat10_g305 * ( ifLocalVar19_g301 * ( ( localCubicSmooth6_g304 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) ).x ) * temp_output_8_0_g301 ) );
				float temp_output_10_0_g301 = break25_g300.y;
				float3 temp_cast_7 = (temp_output_10_0_g301).xxx;
				float3 fValue10_g313 = temp_cast_7;
				float3 localUnpackNormalFromFloat10_g313 = UnpackNormalFromFloat( fValue10_g313 );
				float3 temp_output_5_0_g306 = localUnpackNormalFromFloat10_g313;
				float3 vAxis6_g309 = temp_output_5_0_g306;
				float temp_output_3_0_g306 = temp_output_8_0_g301;
				float4 ifLocalVar32_g301 = 0;
				if( temp_output_4_0_g301 <= 0.0 )
				ifLocalVar32_g301 = _ST_WindLeaf1Tumble;
				else
				ifLocalVar32_g301 = _ST_WindLeaf2Tumble;
				float4 break34_g301 = ifLocalVar32_g301;
				float temp_output_22_0_g306 = frac( ( temp_output_10_0_g301 * 30.3 ) );
				float temp_output_25_0_g306 = ( temp_output_22_0_g306 + temp_output_22_0_g306 + temp_output_22_0_g306 );
				float temp_output_7_0_g306 = break18_g301.z;
				float4 appendResult34_g306 = (float4(( temp_output_25_0_g306 + temp_output_7_0_g306 ) , ( ( temp_output_7_0_g306 * 0.75 ) + ( temp_output_25_0_g306 * -1.0 ) ) , ( ( temp_output_7_0_g306 * 0.01 ) + temp_output_25_0_g306 ) , ( temp_output_25_0_g306 + ( temp_output_7_0_g306 * 1.0 ) )));
				float4 vData7_g308 = appendResult34_g306;
				float4 localTriangleWave7_g308 = TriangleWave( vData7_g308 );
				float4 vData6_g308 = localTriangleWave7_g308;
				float4 localCubicSmooth6_g308 = CubicSmooth( vData6_g308 );
				float4 temp_output_27_0_g306 = ( ( localCubicSmooth6_g308 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break47_g306 = temp_output_27_0_g306;
				float fAngle6_g309 = ( temp_output_3_0_g306 * break34_g301.z * ( break47_g306.x + ( break47_g306.y * break47_g306.y ) ) );
				float3x3 localRotationMatrix6_g309 = RotationMatrix( vAxis6_g309 , fAngle6_g309 );
				int localCalculateWindInputs291 = ( 0 );
				float windQuality291 = (float)_WindQuality;
				float3 rotatedWindVector291 = float3( 0,0,0 );
				float3 rotatedBranchAnchor291 = float3( 0,0,0 );
				float4 windVector291 = _ST_WindVector;
				float4 windBranchAnchor291 = _ST_WindBranchAnchor;
				{
				if (windQuality291 <= 0) // WIND_QUALITY_NONE
				{
				    rotatedWindVector291 = float3(0.0f, 0.0f, 0.0f);
				    rotatedBranchAnchor291 = float3(0.0f, 0.0f, 0.0f);
				}
				else
				{
				    // compute rotated wind parameters
				    if (length(windVector291) > 0) {
				        rotatedWindVector291 = normalize(mul(windVector291.xyz, (float3x3)UNITY_MATRIX_M));
				    } else {
				        rotatedWindVector291 = 0;
				    }
				    rotatedBranchAnchor291 = normalize(mul(windBranchAnchor291.xyz, (float3x3)UNITY_MATRIX_M)) * windBranchAnchor291.w;
				}
				}
				float3 data116_g306 = rotatedWindVector291;
				float3 localClampToNonZero116_g306 = ClampToNonZero( data116_g306 );
				float3 break57_g306 = cross( temp_output_5_0_g306 , localClampToNonZero116_g306 );
				float dotResult55_g306 = dot( float3( 0,0,0 ) , temp_output_5_0_g306 );
				float clampResult56_g306 = clamp( dotResult55_g306 , -1.0 , 1.0 );
				float3 appendResult59_g306 = (float3(break57_g306.x , ( clampResult56_g306 + break57_g306.y ) , break57_g306.z));
				float3 normalizeResult60_g306 = normalize( appendResult59_g306 );
				float3 vAxis6_g312 = normalizeResult60_g306;
				float3 break9_g310 = float3( 0,0,0 );
				float temp_output_4_0_g310 = ( _GlobalTimers[_GlobalTimerId].y + temp_output_25_0_g306 );
				float4 appendResult12_g310 = (float4(( break9_g310.x + break9_g310.z + temp_output_4_0_g310 ) , ( ( 0.87 * temp_output_4_0_g310 ) + break9_g310.y ) , 0.0 , 0.0));
				float4 vData7_g311 = appendResult12_g310;
				float4 localTriangleWave7_g311 = TriangleWave( vData7_g311 );
				float4 vData6_g311 = localTriangleWave7_g311;
				float4 localCubicSmooth6_g311 = CubicSmooth( vData6_g311 );
				float4 break14_g310 = ( ( localCubicSmooth6_g311 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 ifLocalVar35_g301 = 0;
				if( temp_output_4_0_g301 <= 0.0 )
				ifLocalVar35_g301 = _ST_WindLeaf1Twitch;
				else
				ifLocalVar35_g301 = _ST_WindLeaf2Twitch;
				float3 appendResult37_g301 = (float3(ifLocalVar35_g301.xyz));
				float3 break76_g306 = appendResult37_g301;
				float4 break109_g306 = temp_output_27_0_g306;
				float fAngle6_g312 = ( temp_output_3_0_g306 * ( ( acos( clampResult56_g306 ) * break34_g301.w ) + ( pow( saturate( ( ( ( break14_g310.x * break14_g310.y * break14_g310.y ) + 1.0 ) * 0.5 ) ) , break76_g306.y ) * break76_g306.x ) + ( ( break109_g306.y + ( ( break109_g306.x * break109_g306.x ) * -1.0 ) ) * break34_g301.y ) ) );
				float3x3 localRotationMatrix6_g312 = RotationMatrix( vAxis6_g312 , fAngle6_g312 );
				float3x3 temp_output_86_0_g306 = mul( localRotationMatrix6_g309, localRotationMatrix6_g312 );
				float3 temp_output_1_0_g306 = temp_output_52_0_g301;
				float3 normalizeResult91_g306 = normalize( mul( temp_output_86_0_g306, temp_output_1_0_g306 ) );
				float3 ifLocalVar27_g301 = 0;
				if( temp_output_2_0_g301 == 4 )
				ifLocalVar27_g301 = ( normalizeResult91_g306 * length( temp_output_1_0_g306 ) );
				else
				ifLocalVar27_g301 = temp_output_52_0_g301;
				float3 ifLocalVar2_g300 = 0;
				if( temp_output_40_0_g300 <= 1.0 )
				ifLocalVar2_g300 = temp_output_6_0_g300;
				else
				ifLocalVar2_g300 = ifLocalVar27_g301;
				float3 ifLocalVar1_g300 = 0;
				if( temp_output_40_0_g300 >= 5.0 )
				ifLocalVar1_g300 = temp_output_6_0_g300;
				else
				ifLocalVar1_g300 = ifLocalVar2_g300;
				#if defined(GEOM_TYPE_BRANCH)
				float3 staticSwitch214 = staticSwitch343;
				#elif defined(GEOM_TYPE_FROND)
				float3 staticSwitch214 = staticSwitch343;
				#elif defined(GEOM_TYPE_LEAF)
				float3 staticSwitch214 = ( appendResult213 + ifLocalVar1_g300 );
				#elif defined(GEOM_TYPE_BRANCH_DETAIL)
				float3 staticSwitch214 = staticSwitch343;
				#else
				float3 staticSwitch214 = staticSwitch343;
				#endif
				float3 temp_output_3_0_g844 = staticSwitch214;
				int temp_output_24_0_g844 = _WindQuality;
				float4 break32_g844 = inputMesh.ase_texcoord;
				float2 appendResult31_g844 = (float2(break32_g844.z , break32_g844.w));
				float2 break34_g844 = appendResult31_g844;
				float temp_output_5_0_g845 = break34_g844.y;
				float3 temp_cast_10 = (temp_output_5_0_g845).xxx;
				float3 fValue10_g846 = temp_cast_10;
				float3 localUnpackNormalFromFloat10_g846 = UnpackNormalFromFloat( fValue10_g846 );
				float temp_output_4_0_g845 = break34_g844.x;
				int temp_output_7_0_g847 = 0;
				int temp_output_10_0_g847 = 1;
				float3 localGetInstancePos40_g844 = GetInstancePos();
				float3 break17_g845 = localGetInstancePos40_g844;
				float temp_output_3_0_g847 = ( break17_g845.x + break17_g845.y + _GlobalTimers[_GlobalTimerId].y );
				float fTime28_g847 = temp_output_3_0_g847;
				float temp_output_4_0_g847 = temp_output_5_0_g845;
				float fOffset28_g847 = temp_output_4_0_g847;
				float fTwitchFreqScale28_g847 = _ST_WindBranchTwitch.y;
				float temp_output_5_0_g847 = temp_output_4_0_g845;
				float fWeight28_g847 = temp_output_5_0_g847;
				int bWhip28_g847 = temp_output_7_0_g847;
				float4 localComplexOscillationInputs28_g847 = ComplexOscillationInputs( fTime28_g847 , fOffset28_g847 , fTwitchFreqScale28_g847 , fWeight28_g847 , bWhip28_g847 );
				float4 vData7_g849 = localComplexOscillationInputs28_g847;
				float4 localTriangleWave7_g849 = TriangleWave( vData7_g849 );
				float4 vData6_g849 = localTriangleWave7_g849;
				float4 localCubicSmooth6_g849 = CubicSmooth( vData6_g849 );
				float4 temp_output_29_0_g847 = ( ( localCubicSmooth6_g849 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break30_g847 = temp_output_29_0_g847;
				float temp_output_31_0_g847 = ( break30_g847.y * break30_g847.z );
				float ifLocalVar36_g847 = 0;
				if( temp_output_31_0_g847 >= 0.0 )
				ifLocalVar36_g847 = 1.0;
				else
				ifLocalVar36_g847 = ( 1.0 * -1.0 );
				float ifLocalVar35_g847 = 0;
				if( temp_output_31_0_g847 >= 0.0 )
				ifLocalVar35_g847 = temp_output_31_0_g847;
				else
				ifLocalVar35_g847 = ( temp_output_31_0_g847 * -1.0 );
				float lerpResult41_g847 = lerp( temp_output_31_0_g847 , ifLocalVar36_g847 , ifLocalVar35_g847);
				float lerpResult42_g847 = lerp( lerpResult41_g847 , ifLocalVar36_g847 , ifLocalVar35_g847);
				float temp_output_11_0_g847 = _ST_WindBranchTwitch.x;
				float fTime61_g847 = temp_output_3_0_g847;
				float fOffset61_g847 = temp_output_4_0_g847;
				float fWeight61_g847 = temp_output_5_0_g847;
				int bWhip61_g847 = temp_output_7_0_g847;
				float4 localSimpleOscillationInputs61_g847 = SimpleOscillationInputs( fTime61_g847 , fOffset61_g847 , fWeight61_g847 , bWhip61_g847 );
				float4 vData7_g848 = localSimpleOscillationInputs61_g847;
				float4 localTriangleWave7_g848 = TriangleWave( vData7_g848 );
				float4 vData6_g848 = localTriangleWave7_g848;
				float4 localCubicSmooth6_g848 = CubicSmooth( vData6_g848 );
				float4 temp_output_66_0_g847 = ( ( localCubicSmooth6_g848 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break62_g847 = temp_output_66_0_g847;
				float temp_output_64_0_g847 = ( break62_g847.x + ( break62_g847.x * break62_g847.y ) );
				float ifLocalVar17_g847 = 0;
				if( temp_output_10_0_g847 <= 0.0 )
				ifLocalVar17_g847 = temp_output_64_0_g847;
				else
				ifLocalVar17_g847 = ( ( lerpResult42_g847 * temp_output_11_0_g847 * ( 1.0 - _ST_WindVector.w ) ) + ( break30_g847.x * ( 1.0 - temp_output_11_0_g847 ) ) );
				float ifLocalVar52_g847 = 0;
				if( temp_output_7_0_g847 <= 0.0 )
				ifLocalVar52_g847 = ifLocalVar17_g847;
				else
				ifLocalVar52_g847 = ( ifLocalVar17_g847 * ( 1.0 + ( break30_g847.w * (int)_ST_WindBranchWhip.x ) ) );
				float3 temp_output_45_0_g844 = ( temp_output_3_0_g844 + ( ( localUnpackNormalFromFloat10_g846 * temp_output_4_0_g845 ) * ifLocalVar52_g847 * _ST_WindBranch.y ) );
				float temp_output_4_0_g851 = break34_g844.y;
				float3 temp_cast_12 = (temp_output_4_0_g851).xxx;
				float3 fValue10_g854 = temp_cast_12;
				float3 localUnpackNormalFromFloat10_g854 = UnpackNormalFromFloat( fValue10_g854 );
				float temp_output_3_0_g851 = break34_g844.x;
				int temp_output_7_0_g855 = 1;
				int temp_output_10_0_g855 = 1;
				float3 break17_g851 = localGetInstancePos40_g844;
				float temp_output_16_0_g851 = ( _GlobalTimers[_GlobalTimerId].y + break17_g851.x + break17_g851.y );
				float temp_output_3_0_g855 = temp_output_16_0_g851;
				float fTime28_g855 = temp_output_3_0_g855;
				float temp_output_4_0_g855 = temp_output_4_0_g851;
				float fOffset28_g855 = temp_output_4_0_g855;
				float fTwitchFreqScale28_g855 = _ST_WindBranchTwitch.y;
				float temp_output_5_0_g855 = temp_output_3_0_g851;
				float fWeight28_g855 = temp_output_5_0_g855;
				int bWhip28_g855 = temp_output_7_0_g855;
				float4 localComplexOscillationInputs28_g855 = ComplexOscillationInputs( fTime28_g855 , fOffset28_g855 , fTwitchFreqScale28_g855 , fWeight28_g855 , bWhip28_g855 );
				float4 vData7_g857 = localComplexOscillationInputs28_g855;
				float4 localTriangleWave7_g857 = TriangleWave( vData7_g857 );
				float4 vData6_g857 = localTriangleWave7_g857;
				float4 localCubicSmooth6_g857 = CubicSmooth( vData6_g857 );
				float4 temp_output_29_0_g855 = ( ( localCubicSmooth6_g857 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break30_g855 = temp_output_29_0_g855;
				float temp_output_31_0_g855 = ( break30_g855.y * break30_g855.z );
				float ifLocalVar36_g855 = 0;
				if( temp_output_31_0_g855 >= 0.0 )
				ifLocalVar36_g855 = 1.0;
				else
				ifLocalVar36_g855 = ( 1.0 * -1.0 );
				float ifLocalVar35_g855 = 0;
				if( temp_output_31_0_g855 >= 0.0 )
				ifLocalVar35_g855 = temp_output_31_0_g855;
				else
				ifLocalVar35_g855 = ( temp_output_31_0_g855 * -1.0 );
				float lerpResult41_g855 = lerp( temp_output_31_0_g855 , ifLocalVar36_g855 , ifLocalVar35_g855);
				float lerpResult42_g855 = lerp( lerpResult41_g855 , ifLocalVar36_g855 , ifLocalVar35_g855);
				float temp_output_11_0_g855 = _ST_WindBranchTwitch.x;
				float fTime61_g855 = temp_output_3_0_g855;
				float fOffset61_g855 = temp_output_4_0_g855;
				float fWeight61_g855 = temp_output_5_0_g855;
				int bWhip61_g855 = temp_output_7_0_g855;
				float4 localSimpleOscillationInputs61_g855 = SimpleOscillationInputs( fTime61_g855 , fOffset61_g855 , fWeight61_g855 , bWhip61_g855 );
				float4 vData7_g856 = localSimpleOscillationInputs61_g855;
				float4 localTriangleWave7_g856 = TriangleWave( vData7_g856 );
				float4 vData6_g856 = localTriangleWave7_g856;
				float4 localCubicSmooth6_g856 = CubicSmooth( vData6_g856 );
				float4 temp_output_66_0_g855 = ( ( localCubicSmooth6_g856 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 break62_g855 = temp_output_66_0_g855;
				float temp_output_64_0_g855 = ( break62_g855.x + ( break62_g855.x * break62_g855.y ) );
				float ifLocalVar17_g855 = 0;
				if( temp_output_10_0_g855 <= 0.0 )
				ifLocalVar17_g855 = temp_output_64_0_g855;
				else
				ifLocalVar17_g855 = ( ( lerpResult42_g855 * temp_output_11_0_g855 * ( 1.0 - _ST_WindVector.w ) ) + ( break30_g855.x * ( 1.0 - temp_output_11_0_g855 ) ) );
				float temp_output_11_0_g851 = _ST_WindBranchWhip.x;
				float ifLocalVar52_g855 = 0;
				if( temp_output_7_0_g855 <= 0.0 )
				ifLocalVar52_g855 = ifLocalVar17_g855;
				else
				ifLocalVar52_g855 = ( ifLocalVar17_g855 * ( 1.0 + ( break30_g855.w * (int)temp_output_11_0_g851 ) ) );
				float3 temp_output_23_0_g851 = ( temp_output_3_0_g844 + ( ( localUnpackNormalFromFloat10_g854 * temp_output_3_0_g851 ) * ifLocalVar52_g855 * _ST_WindBranch.y ) );
				float temp_output_3_0_g852 = temp_output_4_0_g851;
				float temp_output_6_0_g852 = _ST_WindTurbulences.y;
				float4 appendResult9_g852 = (float4(( ( temp_output_16_0_g851 * 0.1 ) + temp_output_3_0_g852 ) , ( ( _ST_WindAnimation.x * temp_output_6_0_g852 * 0.1 ) + temp_output_3_0_g852 ) , 0.0 , 0.0));
				float4 vData7_g853 = appendResult9_g852;
				float4 localTriangleWave7_g853 = TriangleWave( vData7_g853 );
				float4 vData6_g853 = localTriangleWave7_g853;
				float4 localCubicSmooth6_g853 = CubicSmooth( vData6_g853 );
				float4 break16_g852 = ( ( localCubicSmooth6_g853 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float4 ifLocalVar59_g855 = 0;
				if( temp_output_10_0_g855 <= 0.0 )
				ifLocalVar59_g855 = temp_output_66_0_g855;
				else
				ifLocalVar59_g855 = temp_output_29_0_g855;
				float3 ifLocalVar29_g844 = 0;
				if( temp_output_24_0_g844 == 5 )
				ifLocalVar29_g844 = ( ( ( rotatedBranchAnchor291 + ( temp_output_23_0_g851 * float3( -1,0,0 ) ) ) * _ST_WindBranchAdherences.y * ( ( 1.0 - ( break16_g852.x * break16_g852.y * break16_g852.x * break16_g852.y * temp_output_6_0_g852 ) ) + ( ifLocalVar59_g855.w * _ST_WindVector.w * temp_output_11_0_g851 ) ) * temp_output_3_0_g851 ) + temp_output_23_0_g851 );
				else
				ifLocalVar29_g844 = temp_output_45_0_g844;
				float3 ifLocalVar26_g844 = 0;
				if( temp_output_24_0_g844 >= 3 )
				ifLocalVar26_g844 = ifLocalVar29_g844;
				else
				ifLocalVar26_g844 = temp_output_3_0_g844;
				#ifdef GEOM_TYPE_MESH
				float3 staticSwitch9_g844 = ifLocalVar26_g844;
				#else
				float3 staticSwitch9_g844 = temp_output_3_0_g844;
				#endif
				float3 temp_output_111_0_g858 = staticSwitch9_g844;
				float3 vPos140_g858 = temp_output_111_0_g858;
				float3 vRotatedWindVector140_g858 = rotatedWindVector291;
				float3 vPos145_g858 = temp_output_111_0_g858;
				float4 windGlobal145_g858 = _ST_WindGlobal;
				float localComputeWindAdjust145_g858 = ComputeWindAdjust( vPos145_g858 , windGlobal145_g858 );
				float3 break122_g858 = localGetInstancePos40_g844;
				float temp_output_125_0_g858 = _GlobalTimers[_GlobalTimerId].x;
				float4 appendResult126_g858 = (float4(( break122_g858.x + temp_output_125_0_g858 ) , ( break122_g858.y + ( temp_output_125_0_g858 * 0.8 ) ) , 0.0 , 0.0));
				float4 vData7_g859 = appendResult126_g858;
				float4 localTriangleWave7_g859 = TriangleWave( vData7_g859 );
				float4 vData6_g859 = localTriangleWave7_g859;
				float4 localCubicSmooth6_g859 = CubicSmooth( vData6_g859 );
				float4 break117_g858 = ( ( localCubicSmooth6_g859 + float4( -0.5,-0.5,-0.5,-0.5 ) ) * float4( 2,2,2,2 ) );
				float temp_output_90_0_g858 = ( localComputeWindAdjust145_g858 * ( ( _ST_WindGlobal.y * ( break117_g858.x + ( break117_g858.y * break117_g858.y ) ) ) + ( _ST_WindBranchAdherences.x / _ST_WindGlobal.z ) ) );
				float ifLocalVar142_g858 = 0;
				if( _ST_WindGlobal.w == 0.0 )
				ifLocalVar142_g858 = 0.0;
				else
				ifLocalVar142_g858 = temp_output_90_0_g858;
				float fMoveAmount140_g858 = ifLocalVar142_g858;
				float3 localSwizzleCombineMoveAmount140_g858 = SwizzleCombineMoveAmount( vPos140_g858 , vRotatedWindVector140_g858 , fMoveAmount140_g858 );
				float3 ifLocalVar132_g858 = 0;
				if( _WindQuality <= 0 )
				ifLocalVar132_g858 = temp_output_111_0_g858;
				else
				ifLocalVar132_g858 = localSwizzleCombineMoveAmount140_g858;
				
				float3 temp_output_9_0_g300 = inputMesh.normalOS;
				float3 temp_output_7_0_g301 = temp_output_9_0_g300;
				float3 ifLocalVar30_g301 = 0;
				if( temp_output_2_0_g301 == 4 )
				ifLocalVar30_g301 = mul( temp_output_86_0_g306, temp_output_7_0_g301 );
				else
				ifLocalVar30_g301 = temp_output_7_0_g301;
				float3 ifLocalVar10_g300 = 0;
				if( temp_output_40_0_g300 <= 1.0 )
				ifLocalVar10_g300 = temp_output_9_0_g300;
				else
				ifLocalVar10_g300 = ifLocalVar30_g301;
				float3 ifLocalVar14_g300 = 0;
				if( temp_output_40_0_g300 >= 5.0 )
				ifLocalVar14_g300 = temp_output_9_0_g300;
				else
				ifLocalVar14_g300 = ifLocalVar10_g300;
				#if defined(GEOM_TYPE_BRANCH)
				float3 staticSwitch348 = inputMesh.normalOS;
				#elif defined(GEOM_TYPE_FROND)
				float3 staticSwitch348 = inputMesh.normalOS;
				#elif defined(GEOM_TYPE_LEAF)
				float3 staticSwitch348 = ifLocalVar14_g300;
				#elif defined(GEOM_TYPE_BRANCH_DETAIL)
				float3 staticSwitch348 = inputMesh.normalOS;
				#else
				float3 staticSwitch348 = inputMesh.normalOS;
				#endif
				
				outputPackedVaryingsMeshToPS.ase_texcoord7 = inputMesh.ase_texcoord;
				outputPackedVaryingsMeshToPS.ase_color = inputMesh.ase_color;
				outputPackedVaryingsMeshToPS.ase_texcoord8 = float4(inputMesh.positionOS,1);
				outputPackedVaryingsMeshToPS.ase_normal = inputMesh.normalOS;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = ifLocalVar132_g858;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif
				inputMesh.normalOS = staticSwitch348;
				inputMesh.tangentOS = inputMesh.tangentOS;
				return inputMesh;
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh)
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS = (PackedVaryingsMeshToPS)0;
				AttributesMesh defaultMesh = inputMesh;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				inputMesh = ApplyMeshModification( inputMesh, _TimeParameters.xyz, outputPackedVaryingsMeshToPS);

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normalOS);
				float4 tangentWS = float4(TransformObjectToWorldDir(inputMesh.tangentOS.xyz), inputMesh.tangentOS.w);

				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
				float4 VPASSpreviousPositionCS;
				float4 VPASSpositionCS = mul(UNITY_MATRIX_UNJITTERED_VP, float4(positionRWS, 1.0));

				bool forceNoMotion = unity_MotionVectorsParams.y == 0.0;
				if (forceNoMotion)
				{
					VPASSpreviousPositionCS = float4(0.0, 0.0, 0.0, 1.0);
				}
				else
				{
					bool hasDeformation = unity_MotionVectorsParams.x > 0.0;
					float3 effectivePositionOS = (hasDeformation ? inputMesh.previousPositionOS : defaultMesh.positionOS);
					#if defined(_ADD_PRECOMPUTED_VELOCITY)
					effectivePositionOS -= inputMesh.precomputedVelocity;
					#endif

					#if defined(HAVE_MESH_MODIFICATION)
						AttributesMesh previousMesh = defaultMesh;
						previousMesh.positionOS = effectivePositionOS ;
						PackedVaryingsMeshToPS test = (PackedVaryingsMeshToPS)0;
						float3 curTime = _TimeParameters.xyz;
						previousMesh = ApplyMeshModification(previousMesh, _LastTimeParameters.xyz, test);
						_TimeParameters.xyz = curTime;
						float3 previousPositionRWS = TransformPreviousObjectToWorld(previousMesh.positionOS);
					#else
						float3 previousPositionRWS = TransformPreviousObjectToWorld(effectivePositionOS);
					#endif

					#ifdef ATTRIBUTES_NEED_NORMAL
						float3 normalWS = TransformPreviousObjectToWorldNormal(defaultMesh.normalOS);
					#else
						float3 normalWS = float3(0.0, 0.0, 0.0);
					#endif

					#if defined(HAVE_VERTEX_MODIFICATION)
						//ApplyVertexModification(inputMesh, normalWS, previousPositionRWS, _LastTimeParameters.xyz);
					#endif

					VPASSpreviousPositionCS = mul(UNITY_MATRIX_PREV_VP, float4(previousPositionRWS, 1.0));
				}
				#endif

				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.interp00.xyz = positionRWS;
				outputPackedVaryingsMeshToPS.interp01.xyz = normalWS;
				outputPackedVaryingsMeshToPS.interp02.xyzw = tangentWS;
				outputPackedVaryingsMeshToPS.interp03.xyzw = inputMesh.uv1;
				outputPackedVaryingsMeshToPS.interp04.xyzw = inputMesh.uv2;

				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					outputPackedVaryingsMeshToPS.vpassPositionCS = float3(VPASSpositionCS.xyw);
					outputPackedVaryingsMeshToPS.vpassPreviousPositionCS = float3(VPASSpreviousPositionCS.xyw);
				#endif
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					float3 previousPositionOS : TEXCOORD4;
					#if defined (_ADD_PRECOMPUTED_VELOCITY)
						float3 precomputedVelocity : TEXCOORD5;
					#endif
				#endif
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				float4 ase_texcoord3 : TEXCOORD3;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.uv1 = v.uv1;
				o.uv2 = v.uv2;
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					o.previousPositionOS = v.previousPositionOS;
					#if defined (_ADD_PRECOMPUTED_VELOCITY)
						o.precomputedVelocity = v.precomputedVelocity;
					#endif
				#endif
				o.ase_texcoord = v.ase_texcoord;
				o.ase_color = v.ase_color;
				o.ase_texcoord3 = v.ase_texcoord3;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.uv1 = patch[0].uv1 * bary.x + patch[1].uv1 * bary.y + patch[2].uv1 * bary.z;
				o.uv2 = patch[0].uv2 * bary.x + patch[1].uv2 * bary.y + patch[2].uv2 * bary.z;
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					o.previousPositionOS = patch[0].previousPositionOS * bary.x + patch[1].previousPositionOS * bary.y + patch[2].previousPositionOS * bary.z;
					#if defined (_ADD_PRECOMPUTED_VELOCITY)
						o.precomputedVelocity = patch[0].precomputedVelocity * bary.x + patch[1].precomputedVelocity * bary.y + patch[2].precomputedVelocity * bary.z;
					#endif
				#endif
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			void Frag(PackedVaryingsMeshToPS packedInput,
					#ifdef OUTPUT_SPLIT_LIGHTING
						out float4 outColor : SV_Target0,
						out float4 outDiffuseLighting : SV_Target1,
						OUTPUT_SSSBUFFER(outSSSBuffer)
					#else
						out float4 outColor : SV_Target0
					#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
						, out float4 outMotionVec : SV_Target1
					#endif
					#endif
					#ifdef _DEPTHOFFSET_ON
						, out float outputDepth : SV_Depth
					#endif
					
						)
			{
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					outMotionVec = float4(2.0, 0.0, 0.0, 0.0);
				#endif

				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );
				float3 positionRWS = packedInput.interp00.xyz;
				float3 normalWS = packedInput.interp01.xyz;
				float4 tangentWS = packedInput.interp02.xyzw;

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;
				input.positionRWS = positionRWS;
				input.tangentToWorld = BuildTangentToWorld(tangentWS, normalWS);
				input.texCoord1 = packedInput.interp03.xyzw;
				input.texCoord2 = packedInput.interp04.xyzw;

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE(packedInput.cullFace, true, false);
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				input.positionSS.xy = _OffScreenRendering > 0 ? (input.positionSS.xy * _OffScreenDownsampleFactor) : input.positionSS.xy;
				uint2 tileIndex = uint2(input.positionSS.xy) / GetTileSize ();

				PositionInputs posInput = GetPositionInput( input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS.xyz, tileIndex );

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				GlobalSurfaceDescription surfaceDescription = (GlobalSurfaceDescription)0;
				float4 appendResult170 = (float4(packedInput.ase_texcoord7.x , packedInput.ase_texcoord7.y , 0.0 , 0.0));
				float4 tex2DNode91 = tex2D( _MainTex, appendResult170.xy );
				float temp_output_93_0 = ( tex2DNode91.a * _Color.a );
				clip( temp_output_93_0 - _Cutoff);
				float ifLocalVar88 = 0;
				UNITY_BRANCH 
				if( packedInput.ase_color.a == 0.0 )
				ifLocalVar88 = packedInput.interp04.z;
				else
				ifLocalVar88 = 2.5;
				float4 appendResult86 = (float4(packedInput.interp04.x , packedInput.interp04.y , ifLocalVar88 , 0.0));
				float4 break98 = appendResult86;
				float2 appendResult99 = (float2(break98.x , break98.y));
				float4 tex2DNode97 = tex2D( _DetailTex, appendResult99 );
				float3 appendResult108 = (float3(tex2DNode97.r , tex2DNode97.g , tex2DNode97.b));
				float4 break103 = tex2DNode91;
				float3 appendResult104 = (float3(break103.r , break103.g , break103.b));
				float ifLocalVar109 = 0;
				UNITY_BRANCH 
				if( break98.z >= 2.0 )
				ifLocalVar109 = tex2DNode97.a;
				else
				ifLocalVar109 = saturate( break98.z );
				float3 lerpResult102 = lerp( appendResult108 , appendResult104 , ifLocalVar109);
				float4 appendResult106 = (float4(lerpResult102 , break103.a));
				#ifdef GEOM_TYPE_BRANCH_DETAIL
				float4 staticSwitch101 = appendResult106;
				#else
				float4 staticSwitch101 = tex2DNode91;
				#endif
				float4 break124 = staticSwitch101;
				float3 appendResult125 = (float3(break124.r , break124.g , break124.b));
				float4 color77 = IsGammaSpace() ? float4(1,0.5,0,0.1019608) : float4(1,0.2140411,0,0.1019608);
				float3 appendResult126 = (float3(color77.r , color77.g , color77.b));
				#ifdef EFFECT_HUE_VARIATION
				float staticSwitch76 = saturate( ( color77.a * ( frac( ( GetObjectToWorldMatrix()[0].w + GetObjectToWorldMatrix()[1].w + GetObjectToWorldMatrix()[2].w ) ) + ( ( frac( ( packedInput.ase_texcoord8.xyz.x + packedInput.ase_normal.x + packedInput.ase_normal.y ) ) * 0.0 ) + -0.3 ) ) ) );
				#else
				float staticSwitch76 = 0.0;
				#endif
				float3 lerpResult123 = lerp( appendResult125 , appendResult126 , staticSwitch76);
				float3 break134 = lerpResult123;
				float4 appendResult149 = (float4(saturate( ( lerpResult123 * ( ( ( max( break124.r , max( break124.g , break124.b ) ) / max( break134.x , max( break134.y , break134.z ) ) ) * 0.5 ) + 0.5 ) ) ) , staticSwitch101.a));
				#ifdef EFFECT_HUE_VARIATION
				float4 staticSwitch143 = appendResult149;
				#else
				float4 staticSwitch143 = staticSwitch101;
				#endif
				float4 appendResult151 = (float4(staticSwitch143.rgb , 0.0));
				float3 appendResult112 = (float3(_Color.r , _Color.g , _Color.b));
				float4 appendResult281 = (float4(( appendResult112 * packedInput.ase_color.r ) , _Color.a));
				float4 break158 = ( appendResult151 * appendResult281 );
				float4 appendResult155 = (float4(break158.r , break158.g , break158.b , staticSwitch143.r));
				
				float3 _ZNormal = float3(0,0,1);
				float3 tex2DNode166 = UnpackNormalScale( tex2D( _BumpMap, appendResult170.xy ), 1.0f );
				float3 lerpResult184 = lerp( tex2DNode166 , UnpackNormalScale( tex2D( _BumpMap, appendResult99 ), 1.0f ) , ifLocalVar109);
				#ifdef GEOM_TYPE_BRANCH_DETAIL
				float3 staticSwitch183 = lerpResult184;
				#else
				float3 staticSwitch183 = tex2DNode166;
				#endif
				#ifdef LIGHTMAP_ON
				float3 staticSwitch167 = _ZNormal;
				#else
				float3 staticSwitch167 = staticSwitch183;
				#endif
				#ifdef EFFECT_BUMP
				float3 staticSwitch197 = staticSwitch167;
				#else
				float3 staticSwitch197 = _ZNormal;
				#endif
				
				surfaceDescription.Albedo = appendResult155.rgb;
				surfaceDescription.Normal = staticSwitch197;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = _Metallic;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = 0;
				#endif

				surfaceDescription.Emission = 0;
				surfaceDescription.Smoothness = _Smoothness;
				surfaceDescription.Occlusion = 1;
				surfaceDescription.Alpha = temp_output_93_0;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _Cutoff;
				#endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceDescription.SpecularAAScreenSpaceVariance = 0;
				surfaceDescription.SpecularAAThreshold = 0;
				#endif

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceDescription.SpecularOcclusion = 0;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceDescription.Thickness = 1;
				#endif

				#ifdef _HAS_REFRACTION
				surfaceDescription.RefractionIndex = 1;
				surfaceDescription.RefractionColor = float3( 1, 1, 1 );
				surfaceDescription.RefractionDistance = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceDescription.SubsurfaceMask = 1;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceDescription.DiffusionProfile = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceDescription.Anisotropy = 1;
				surfaceDescription.Tangent = float3( 1, 0, 0 );
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceDescription.IridescenceMask = 0;
				surfaceDescription.IridescenceThickness = 0;
				#endif

				#ifdef _ASE_BAKEDGI
				surfaceDescription.BakedGI = 0;
				#endif
				#ifdef _ASE_BAKEDBACKGI
				surfaceDescription.BakedBackGI = 0;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription,input, V, posInput, surfaceData, builtinData);

				BSDFData bsdfData = ConvertSurfaceDataToBSDFData(input.positionSS.xy, surfaceData);

				PreLightData preLightData = GetPreLightData(V, posInput, bsdfData);

				outColor = float4(0.0, 0.0, 0.0, 0.0);
				#ifdef DEBUG_DISPLAY
				#ifdef OUTPUT_SPLIT_LIGHTING
					outDiffuseLighting = 0;
					ENCODE_INTO_SSSBUFFER(surfaceData, posInput.positionSS, outSSSBuffer);
				#endif

				bool viewMaterial = false;
				int bufferSize = int(_DebugViewMaterialArray[0].x);
				if (bufferSize != 0)
				{
					bool needLinearToSRGB = false;
					float3 result = float3(1.0, 0.0, 1.0);

					for (int index = 1; index <= bufferSize; index++)
					{
						int indexMaterialProperty = int(_DebugViewMaterialArray[index].x);

						if (indexMaterialProperty != 0)
						{
							viewMaterial = true;

							GetPropertiesDataDebug(indexMaterialProperty, result, needLinearToSRGB);
							GetVaryingsDataDebug(indexMaterialProperty, input, result, needLinearToSRGB);
							GetBuiltinDataDebug(indexMaterialProperty, builtinData, posInput, result, needLinearToSRGB);
							GetSurfaceDataDebug(indexMaterialProperty, surfaceData, result, needLinearToSRGB);
							GetBSDFDataDebug(indexMaterialProperty, bsdfData, result, needLinearToSRGB);
						}
					}

					if (!needLinearToSRGB)
						result = SRGBToLinear(max(0, result));

					outColor = float4(result, 1.0);
				}

				if (!viewMaterial)
				{
					if (_DebugFullScreenMode == FULLSCREENDEBUGMODE_VALIDATE_DIFFUSE_COLOR || _DebugFullScreenMode == FULLSCREENDEBUGMODE_VALIDATE_SPECULAR_COLOR)
					{
						float3 result = float3(0.0, 0.0, 0.0);

						GetPBRValidatorDebug(surfaceData, result);

						outColor = float4(result, 1.0f);
					}
					else if (_DebugFullScreenMode == FULLSCREENDEBUGMODE_TRANSPARENCY_OVERDRAW)
					{
						float4 result = _DebugTransparencyOverdrawWeight * float4(TRANSPARENCY_OVERDRAW_COST, TRANSPARENCY_OVERDRAW_COST, TRANSPARENCY_OVERDRAW_COST, TRANSPARENCY_OVERDRAW_A);
						outColor = result;
					}
					else
				#endif
					{
				#ifdef _SURFACE_TYPE_TRANSPARENT
						uint featureFlags = LIGHT_FEATURE_MASK_FLAGS_TRANSPARENT;
				#else
						uint featureFlags = LIGHT_FEATURE_MASK_FLAGS_OPAQUE;
				#endif
					
						LightLoopOutput lightLoopOutput;
						LightLoop(V, posInput, preLightData, bsdfData, builtinData, featureFlags, lightLoopOutput);

						// Alias
						float3 diffuseLighting = lightLoopOutput.diffuseLighting;
						float3 specularLighting = lightLoopOutput.specularLighting;
					
						diffuseLighting *= GetCurrentExposureMultiplier();
						specularLighting *= GetCurrentExposureMultiplier();

				#ifdef OUTPUT_SPLIT_LIGHTING
						if (_EnableSubsurfaceScattering != 0 && ShouldOutputSplitLighting(bsdfData))
						{
							outColor = float4(specularLighting, 1.0);
							outDiffuseLighting = float4(TagLightingForSSS(diffuseLighting), 1.0);
						}
						else
						{
							outColor = float4(diffuseLighting + specularLighting, 1.0);
							outDiffuseLighting = 0;
						}
						ENCODE_INTO_SSSBUFFER(surfaceData, posInput.positionSS, outSSSBuffer);
				#else
						outColor = ApplyBlendMode(diffuseLighting, specularLighting, builtinData.opacity);
						outColor = EvaluateAtmosphericScattering(posInput, V, outColor);
				#endif

				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
						float4 VPASSpositionCS = float4(packedInput.vpassPositionCS.xy, 0.0, packedInput.vpassPositionCS.z);
						float4 VPASSpreviousPositionCS = float4(packedInput.vpassPreviousPositionCS.xy, 0.0, packedInput.vpassPreviousPositionCS.z);

						bool forceNoMotion = any(unity_MotionVectorsParams.yw == 0.0);
						if (!forceNoMotion)
						{
							float2 motionVec = CalculateMotionVector(VPASSpositionCS, VPASSpreviousPositionCS);
							EncodeMotionVector(motionVec * 0.5, outMotionVec);
							outMotionVec.zw = 1.0;
						}
				#endif
					}

				#ifdef DEBUG_DISPLAY
				}
				#endif

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif
			}
			ENDHLSL
		}
		
	}
	CustomEditor "SpeedTreeHDRPMaterialInspector"
	
	
}
/*ASEBEGIN
Version=18801
2019;109;1322;760;-12999.53;195.2898;1.686025;True;False
Node;AmplifyShaderEditor.CommentaryNode;173;2194.767,-2025.062;Inherit;False;2167.77;991.0375;;10;133;11;91;92;19;93;12;24;115;171;Main Color;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;172;1226.255,-624.801;Inherit;False;2732.474;1494.328;;13;203;15;108;97;186;121;100;88;87;80;89;90;81;Detail Color;0,0.7881474,1,0.6862745;0;0
Node;AmplifyShaderEditor.CommentaryNode;24;2249.629,-1711.891;Inherit;False;455.2046;611.0229;TexCoord 0;3;27;26;23;UV0;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;81;1276.255,-574.801;Inherit;False;443.4149;713.2007;TexCoord 2 / UV2;4;84;83;82;85;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;90;1370.346,192.3052;Inherit;False;Constant;_25fOutofblend;2.5f (Out of blend);9;0;Create;True;0;0;0;False;0;False;2.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;89;1415.897,458.5242;Inherit;False;Constant;_Zero0;Zero (0);9;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;171;2788.396,-1646.913;Inherit;False;211;233;;1;170;MainTexUV;1,1,1,1;0;0
Node;AmplifyShaderEditor.VertexColorNode;80;1403.681,282.6865;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexCoordVertexDataNode;84;1303.255,-526.8008;Inherit;True;2;4;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexCoordVertexDataNode;23;2283.592,-1670.853;Inherit;True;0;4;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;57;5620.813,2237.653;Inherit;False;2917.239;1201.42;HueVariationAmount;22;175;176;65;126;76;74;78;75;77;73;72;62;61;63;71;59;60;69;79;58;70;66;;0.8396226,0.3099036,0,0.6862745;0;0
Node;AmplifyShaderEditor.TexturePropertyNode;12;2244.767,-1975.062;Inherit;True;Property;_MainTex;Base (RGB) Trans (A);39;0;Create;False;0;0;0;False;0;False;None;cde82b8d9975adc4fac034c3ab93e838;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.PosVertexDataNode;66;6243.449,2920.815;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.NormalVertexDataNode;70;6244.381,3078.449;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;170;2838.396,-1596.913;Inherit;False;FLOAT4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.CommentaryNode;87;1962.104,141.7319;Inherit;False;211;233;Detail / interpolator2;1;86;;1,1,1,1;0;0
Node;AmplifyShaderEditor.ConditionalIfNode;88;1794.649,221.5802;Inherit;False;True;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;11;3070.872,-1763.529;Inherit;False;Property;_Color;Main Color;40;0;Create;False;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ObjectToWorldMatrixNode;79;5674.062,2766.096;Inherit;False;0;1;FLOAT4x4;0
Node;AmplifyShaderEditor.SamplerNode;91;3012.186,-1970.513;Inherit;True;Property;_sampler_MainTex;sampler_MainTex;9;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;86;1998.917,201.8755;Inherit;False;FLOAT4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.CommentaryNode;58;5952.414,2454.798;Inherit;False;186;251;Row0;1;68;;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleAddOpNode;69;6545.188,2999.21;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;59;5957.914,2983.298;Inherit;False;186;251;Row2;1;64;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;100;2198.421,141.5869;Inherit;False;456.3221;236.7136;Detail UV;2;99;98;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;60;5952.414,2715.798;Inherit;False;186;251;Row1;1;67;;1,1,1,1;0;0
Node;AmplifyShaderEditor.VectorFromMatrixNode;67;5973.414,2760.798;Inherit;False;Row;1;1;0;FLOAT4x4;1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1;False;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.BreakToComponentsNode;98;2217.913,202.5835;Inherit;False;FLOAT4;1;0;FLOAT4;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.VectorFromMatrixNode;68;5974.126,2516.859;Inherit;False;Row;0;1;0;FLOAT4x4;1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1;False;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;19;3569.288,-1685.841;Inherit;False;Property;_Cutoff;Alpha Cutoff;41;0;Create;False;0;0;0;False;0;False;0.333;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;93;3585.288,-1797.841;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.VectorFromMatrixNode;64;5978.914,3028.298;Inherit;False;Row;2;1;0;FLOAT4x4;1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1;False;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FractNode;71;6690.018,3013.017;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;62;6830.487,3126.81;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;61;6210.079,2727.939;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;15;3152.632,-205.5548;Inherit;True;Property;_DetailTex;Detail;42;0;Create;False;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.ClipNode;92;3921.288,-1973.841;Inherit;False;3;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;186;3442.062,486.8726;Inherit;False;468.8325;281.7501;Comment;3;109;111;110;Detail Blend (Interpolator2.z);1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;63;6813.518,3228.818;Inherit;False;Constant;_03;-0.3;9;0;Create;True;0;0;0;False;0;False;-0.3;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;99;2532.83,182.5556;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;72;7013.716,3154.717;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FractNode;73;6385.899,2729.762;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;103;4047.956,-503.7873;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SamplerNode;97;3408.422,-47.69156;Inherit;True;Property;_TextureSample0;Texture Sample 0;9;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;110;3492.062,569.3832;Inherit;False;Constant;_20;2.0;10;0;Create;True;0;0;0;False;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;111;3492.386,657.6226;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;121;2667.443,343.7025;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;75;7177.795,3034.794;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;104;4348.097,-529.744;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;77;7118.185,2749.966;Inherit;False;Constant;_HueVariation;HueVariation;2;0;Create;True;0;0;0;False;0;False;1,0.5,0,0.1019608;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ConditionalIfNode;109;3720.895,536.8726;Inherit;False;True;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;108;3768.563,-31.0387;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;78;7341.183,3015.637;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;102;4585.617,-459.3582;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;74;7507.495,3029.713;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;106;4864.48,-344.6127;Inherit;False;COLOR;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.DynamicAppendNode;126;7524.619,2680.196;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;163;5565.259,262.3572;Inherit;False;4008.559;1589.607;;23;155;160;158;152;159;151;150;149;147;148;142;141;139;138;140;134;137;130;131;125;124;282;285;Detail / Hue Variation / Color / Main Color merge;1,0.3874164,0,1;0;0
Node;AmplifyShaderEditor.StaticSwitch;76;7775.425,2990.763;Inherit;False;Property;EFFECT_HUE_VARIATION;EFFECT_HUE_VARIATION;20;0;Create;False;0;0;0;False;0;False;0;0;0;False;;Toggle;2;Key0;Key1;Create;True;True;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;101;5109.324,-255.8965;Inherit;False;Property;GEOM_TYPE_BRANCH_DETAIL;GEOM_TYPE_BRANCH_DETAIL;21;0;Create;False;0;0;0;False;0;False;0;0;0;False;;Toggle;2;Key0;Key1;Create;True;True;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.BreakToComponentsNode;124;5615.259,862.1586;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.WireNode;175;8333.388,2296.366;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;176;8436.476,2302.197;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;125;5872.052,862.4498;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;131;6014.706,1573.679;Inherit;False;232;209;ShiftedColor;1;123;;1,1,1,1;0;0
Node;AmplifyShaderEditor.WireNode;284;5886.238,1835.386;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;285;5957.611,1788.638;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;123;6064.706,1623.679;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;115;3406.029,-1581.84;Inherit;False;577.179;505.5438;Frag Out Color;4;112;113;116;281;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;116;3438.029,-1373.84;Inherit;False;221;230;AO Factor;1;114;;1,1,1,1;0;0
Node;AmplifyShaderEditor.BreakToComponentsNode;134;6290.765,1434.143;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.CommentaryNode;130;6359.237,826.8611;Inherit;False;360.9258;348.3654;Max Base;2;129;127;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;137;6655.351,1253.441;Inherit;False;350.5195;339.6144;New Max Base;2;135;136;;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;135;6705.351,1458.055;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;112;3438.029,-1533.84;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.VertexColorNode;114;3470.029,-1325.84;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMaxOpNode;129;6409.237,1040.226;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;136;6853.87,1303.441;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;113;3671.844,-1475.353;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;127;6568.163,876.8608;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;140;7082.527,1145.803;Inherit;False;Constant;_PointFive;PointFive;10;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;138;7041.933,1007.864;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;289;10140.54,836.7368;Inherit;False;4049.502;1386.498;;25;426;451;447;429;514;438;359;436;343;358;362;355;360;286;322;357;361;344;356;287;230;328;244;222;335;Vertex Offset + Wind;0,0.6799812,1,1;0;0
Node;AmplifyShaderEditor.DynamicAppendNode;281;3848.358,-1344.869;Inherit;False;COLOR;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;204;2727.313,913.7491;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;139;7324.831,988.9368;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;283;9675.411,217.5244;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;335;10205.95,1094.748;Inherit;False;411.7002;271.2999;;2;334;336;UV0 (TexCoord0);1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;222;10208,1440;Inherit;False;433.8535;257;TexCoord 1;2;213;210;UV1 (TexCoord1);1,1,1,1;0;0
Node;AmplifyShaderEditor.TexCoordVertexDataNode;334;10240.35,1149.948;Inherit;False;0;4;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;174;3207.826,1079.653;Inherit;False;954.8297;519.4311;;1;166;Main Normal;0.1664293,0.189116,0.6415094,1;0;0
Node;AmplifyShaderEditor.TexturePropertyNode;17;2725.198,1498.954;Inherit;True;Property;_BumpMap;Normal Map;43;0;Create;False;0;0;0;False;0;False;None;df175d4e267d9ad4a86121a4c51243a7;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.WireNode;203;2920.113,276.9621;Inherit;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.TexCoordVertexDataNode;210;10256,1488;Inherit;False;1;4;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;182;3659.828,1858.601;Inherit;False;396.0571;277.584;;1;177;Detail Normal;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;244;10224,1728;Inherit;False;416.5674;287.2026;Vert.Out.Color;2;249;243;;1,0.2705882,0,1;0;0
Node;AmplifyShaderEditor.SimpleAddOpNode;141;7474.696,1035.156;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;369;10061.95,1685.337;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;202;2711.112,1885.618;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;243;10256,1776;Inherit;False;COLOR;4;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;192;4212.457,1843.174;Inherit;False;1258.676;427.3699;Comment;5;168;197;167;183;184;Normal Blend;1,1,1,1;0;0
Node;AmplifyShaderEditor.PosVertexDataNode;230;10390.96,917.5551;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;336;10484.84,1247.025;Inherit;False;FLOAT2;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;177;3703.953,1909.933;Inherit;True;Property;_TextureSample1;Texture Sample 1;10;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;142;7615.894,1660.912;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;287;10752,1936;Inherit;False;270;209;;1;270;UV3 (Texcoord3);1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;207;10144,2432;Inherit;False;1773.109;1210.919;;18;306;302;305;304;300;296;303;301;299;294;297;308;295;298;293;21;291;576;Wind;0.4292453,0.6763586,1,1;0;0
Node;AmplifyShaderEditor.SamplerNode;166;3272.843,1288.355;Inherit;True;Property;_sampler_BumpMap;sampler_BumpMap;10;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;328;10887.72,1192.563;Inherit;False;377.1025;259.9496;;2;331;327;UV2 (TexCoord2);1,1,1,1;0;0
Node;AmplifyShaderEditor.DynamicAppendNode;213;10464,1488;Inherit;False;FLOAT3;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BreakToComponentsNode;148;7433.802,709.155;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.FunctionNode;344;10813.18,888.2999;Inherit;False;LOD_OffsetBranchesAndFronds;-1;;4;bd34f6904df38174191e2d1a96667ec3;0;2;1;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BreakToComponentsNode;249;10432,1824;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.LerpOp;184;4262.457,2030.375;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector4Node;293;10224,2528;Inherit;False;Property;_ST_WindVector;_ST_WindVector;62;1;[HideInInspector];Create;False;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node;298;10176,2720;Inherit;False;Property;_ST_WindBranchAnchor;_ST_WindBranchAnchor;56;1;[HideInInspector];Create;False;0;0;0;True;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;356;10824,1158.327;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TexCoordVertexDataNode;327;10908.25,1241.847;Inherit;False;2;4;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexCoordVertexDataNode;270;10800,1984;Inherit;False;3;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SaturateNode;147;7726.354,956.4596;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.IntNode;21;10576,2512;Inherit;False;Property;_WindQuality;Wind Quality;47;1;[Enum];Create;False;0;6;None;0;Fastest;1;Fast;2;Better;3;Best;4;Palm;5;0;True;0;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.CustomExpressionNode;291;10864,2592;Inherit;False;if (windQuality <= 0) // WIND_QUALITY_NONE${$    rotatedWindVector = float3(0.0f, 0.0f, 0.0f)@$    rotatedBranchAnchor = float3(0.0f, 0.0f, 0.0f)@$}$else${$    // compute rotated wind parameters$    if (length(windVector) > 0) {$        rotatedWindVector = normalize(mul(windVector.xyz, (float3x3)UNITY_MATRIX_M))@$    } else {$        rotatedWindVector = 0@$    }$$    rotatedBranchAnchor = normalize(mul(windBranchAnchor.xyz, (float3x3)UNITY_MATRIX_M)) * windBranchAnchor.w@$};7;False;5;True;windQuality;FLOAT;0;In;;Float;False;True;rotatedWindVector;FLOAT3;0,0,0;Out;;Float;False;True;rotatedBranchAnchor;FLOAT3;0,0,0;Out;;Float;False;True;windVector;FLOAT4;0,0,0,0;In;;Float;False;True;windBranchAnchor;FLOAT4;0,0,0,0;In;;Float;False;Calculate Wind Inputs;False;True;0;6;0;INT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT4;0,0,0,0;False;5;FLOAT4;0,0,0,0;False;3;INT;0;FLOAT3;3;FLOAT3;4
Node;AmplifyShaderEditor.WireNode;361;11361.17,869.1161;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector3Node;168;4636.924,2031.418;Inherit;False;Constant;_ZNormal;ZNormal;11;0;Create;True;0;0;0;False;0;False;0,0,1;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.CustomExpressionNode;286;11200,1664;Inherit;False;float lodValue = unity_LODFade.x@$VertexPos -= texcoord1.xyz@$$bool isFacingLeaf = ColorAlpha == 0@$if (isFacingLeaf) {$    #ifdef LOD_FADE_PERCENTAGE$        VertexPos *= lerp(1.0, texcoord1.w, lodValue)@$    #endif$    $    // face camera-facing leaf to camera$    float offsetLen = length(VertexPos)@$    VertexPos = mul(VertexPos.xyz, (float3x3) transpose(mul(UNITY_MATRIX_I_M, UNITY_MATRIX_I_V)))@ // inv(MV) * finalPosition$    VertexPos = normalize(VertexPos) * offsetLen@ // make sure the offset vector is still scaled$}$else${$    #ifdef LOD_FADE_PERCENTAGE$        float3 lodPosition = float3(texcoord1.w, texcoord3.x, texcoord3.y)@$        VertexPos = lerp(VertexPos, lodPosition, lodValue)@$    #endif$}$$return VertexPos@;3;False;4;True;VertexPos;FLOAT3;0,0,0;In;;Float;False;True;ColorAlpha;FLOAT;0;In;;Float;False;True;texcoord1;FLOAT3;0,0,0;In;;Float;False;True;texcoord3;FLOAT2;0,0;In;;Float;False;Offset Leaves Vertex;False;True;0;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;149;7917.663,801.8884;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.CommentaryNode;150;8039.025,312.3573;Inherit;False;329;190;Diffuse Color;1;143;;1,1,1,1;0;0
Node;AmplifyShaderEditor.DynamicAppendNode;331;11122.77,1368.321;Inherit;False;FLOAT3;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;357;11128.01,1131.127;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.StaticSwitch;183;4461.424,1893.173;Inherit;False;Property;_Keyword1;Keyword 1;21;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;101;True;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalVertexDataNode;322;10926.71,996.6466;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;430;10924.24,810.7421;Inherit;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.WireNode;362;11819.16,886.157;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;143;8089.025,362.3572;Inherit;False;Property;_EFFECT_HUE_VARIATION;EFFECT_HUE_VARIATION;20;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;76;True;True;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;573;11581.89,1656.719;Inherit;False;LeafWind_TreeLogic;22;;300;8f0295e26413c3f43bd297b99323a157;0;6;40;INT;0;False;6;FLOAT3;0,0,0;False;9;FLOAT3;0,0,0;False;7;FLOAT2;0,0;False;16;FLOAT4;0,0,0,0;False;19;FLOAT3;0,0,0;False;2;FLOAT3;0;FLOAT3;15
Node;AmplifyShaderEditor.StaticSwitch;167;4917.403,2077.833;Inherit;False;Property;LIGHTMAP_ON;LIGHTMAP_ON;9;0;Create;False;0;0;0;False;0;False;0;0;0;False;LIGHTMAP_ON;Toggle;2;Key0;Key1;Fetch;True;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;437;11686.39,2241.352;Inherit;False;1;0;INT;0;False;1;INT;0
Node;AmplifyShaderEditor.FunctionNode;578;11440.27,968.5081;Inherit;False;RippleFrondOneSided;35;;314;106e431bb45bb25468718f6ffdc189a5;0;4;2;FLOAT3;0,0,0;False;27;FLOAT3;0,0,0;False;4;FLOAT2;0,0;False;5;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;355;12032,1664;Inherit;False;176.2041;155.7649;Re-Adding Anchor Pos;1;354;;1,1,1,1;0;0
Node;AmplifyShaderEditor.WireNode;282;7122.556,485.6862;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;354;12064,1712;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;151;8716.226,367.3984;Inherit;False;COLOR;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;359;12272,960;Inherit;False;437;214;Vertex Position;1;214;;0.8867924,0.09620863,0.09620863,1;0;0
Node;AmplifyShaderEditor.StaticSwitch;197;5118.358,1960.947;Inherit;False;Property;EFFECT_BUMP;EFFECT_BUMP;22;0;Create;False;0;0;0;False;0;False;0;0;0;False;;Toggle;2;Key0;Key1;Create;True;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;343;12000,992;Inherit;False;Property;_Keyword0;Keyword 0;24;0;Create;True;0;0;0;False;0;False;0;0;0;False;GEOM_TYPE_FROND;Toggle;2;Key0;Key1;Fetch;True;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;436;12152.26,1357.635;Inherit;False;1;0;INT;0;False;1;INT;0
Node;AmplifyShaderEditor.CommentaryNode;358;12336,1408;Inherit;False;437;214;Vertex Normal;1;348;;0.6132076,0.07231221,0.07231221,1;0;0
Node;AmplifyShaderEditor.WireNode;432;11564.73,789.5935;Inherit;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.WireNode;433;12553.66,2279.469;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;159;8679.756,528.1684;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;365;9694.519,1945.333;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;152;8915.882,429.097;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;133;4030.583,-1654.615;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;438;12583.96,1282.07;Inherit;False;1;0;INT;0;False;1;INT;0
Node;AmplifyShaderEditor.StaticSwitch;214;12292.93,1001.945;Inherit;False;Property;;GEOM_TYPE;10;0;Create;False;0;0;0;False;0;False;0;0;0;False;;KeywordEnum;4;GEOM_TYPE_BRANCH;GEOM_TYPE_FROND;GEOM_TYPE_LEAF;GEOM_TYPE_BRANCH_DETAIL;Create;True;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;348;12352,1456;Inherit;False;Property;;GEOM_TYPE;10;0;Create;False;0;0;0;False;0;False;0;0;0;False;;KeywordEnum;2;GEOM_TYPE_BRANCH;GEOM_TYPE_FROND;Reference;214;True;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;431;12288.29,810.7418;Inherit;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.WireNode;366;9858.558,700.7548;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;574;12896,1008;Inherit;False;BranchWind;4;;844;bb8f3536c1fcac84ea1e69e0939b1f77;0;4;24;INT;0;False;3;FLOAT3;0,0,0;False;13;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;2;FLOAT3;0;FLOAT3;39
Node;AmplifyShaderEditor.WireNode;514;13084.04,1894.162;Inherit;False;1;0;INT;0;False;1;INT;0
Node;AmplifyShaderEditor.WireNode;199;9073.401,-584.3734;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;158;9046.688,407.4555;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.WireNode;160;9250.06,535.9683;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;423;14451.4,133.1502;Inherit;False;291.9424;130.7191;Custom Cull Mode (Auto-Registered);1;410;;1,1,1,1;0;0
Node;AmplifyShaderEditor.FunctionNode;447;13130.16,1539.641;Inherit;False;FetchEternityTime;20;;843;d7f632c075fdb5c4d9e5ed4d5044a640;0;0;1;FLOAT4;0
Node;AmplifyShaderEditor.WireNode;429;13231.21,1274.066;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;155;9420.116,403.6015;Inherit;False;COLOR;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;368;11645.36,488.5246;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector4Node;302;10528,2768;Inherit;False;Property;_ST_WindLeaf1Tumble;_ST_WindLeaf1Tumble;52;1;[HideInInspector];Create;False;0;0;0;True;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;65;6650.987,3141.61;Inherit;False;Constant;_05;0.5;0;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;410;14547.4,181.1502;Inherit;False;Property;_Cull;Cull;46;1;[Enum];Create;False;0;0;1;UnityEngine.Rendering.CullMode;True;0;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.Vector4Node;300;11056,3072;Inherit;False;Property;_ST_WindTurbulences;_ST_WindTurbulences;61;1;[HideInInspector];Create;False;0;0;0;True;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;245;12151.77,98.6034;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node;308;11360,3264;Inherit;False;Property;_ST_WindAnimation;_ST_WindAnimation;58;1;[HideInInspector];Create;False;0;0;0;True;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node;576;10784,3072;Inherit;False;Property;_ST_WindFrondRipple;_ST_WindFrondRipple;3;1;[HideInInspector];Create;False;0;0;0;True;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node;299;10192,3216;Inherit;False;Property;_ST_WindBranchAdherences;_ST_WindBranchAdherences;55;1;[HideInInspector];Create;False;0;0;0;True;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node;294;11648,3264;Inherit;False;Property;_ST_WindGlobal;_ST_WindGlobal;60;1;[HideInInspector];Create;False;0;0;0;True;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node;306;10528,3312;Inherit;False;Property;_ST_WindLeaf2Twitch;_ST_WindLeaf2Twitch;48;1;[HideInInspector];Create;False;0;0;0;True;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;572;13712,992;Inherit;False;GlobalWind;0;;858;84571097aba34f7448bae49f6418efb3;0;5;129;INT;0;False;111;FLOAT3;0,0,0;False;130;FLOAT3;0,0,0;False;102;FLOAT3;0,0,0;False;125;FLOAT;0;False;1;FLOAT3;138
Node;AmplifyShaderEditor.WireNode;451;14104.8,1192.009;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector4Node;297;11360,3072;Inherit;False;Property;_ST_WindBranchWhip;_ST_WindBranchWhip;57;1;[HideInInspector];Create;False;0;0;0;True;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node;301;10240,3408;Inherit;False;Property;_ST_WindLeaf1Ripple;_ST_WindLeaf1Ripple;53;1;[HideInInspector];Create;False;0;0;0;True;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node;305;10528,2944;Inherit;False;Property;_ST_WindLeaf2Tumble;_ST_WindLeaf2Tumble;49;1;[HideInInspector];Create;False;0;0;0;True;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node;295;11648,3072;Inherit;False;Property;_ST_WindBranch;_ST_WindBranch;59;1;[HideInInspector];Create;False;0;0;0;True;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node;304;10784,3280;Inherit;False;Property;_ST_WindLeaf2Ripple;_ST_WindLeaf2Ripple;50;1;[HideInInspector];Create;False;0;0;0;True;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node;303;10528,3120;Inherit;False;Property;_ST_WindLeaf1Twitch;_ST_WindLeaf1Twitch;51;1;[HideInInspector];Create;False;0;0;0;True;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node;296;11344,2864;Inherit;False;Property;_ST_WindBranchTwitch;_ST_WindBranchTwitch;54;1;[HideInInspector];Create;False;0;0;0;True;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;206;13940.53,249.7643;Inherit;False;Property;_Metallic;Metallic;44;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;205;13940.53,349.5856;Inherit;False;Property;_Smoothness;Smoothness;45;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1;0,0;Float;False;False;-1;2;Rendering.HighDefinition.LitShaderGraphGUI;0;2;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;META;0;1;META;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;5;0,0;Float;False;False;-1;2;Rendering.HighDefinition.LitShaderGraphGUI;0;2;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;Motion Vectors;0;5;Motion Vectors;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;False;False;False;False;False;False;False;False;True;0;True;-23;False;False;False;False;True;True;0;True;-7;255;False;-1;255;True;-8;7;False;-1;3;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;1;False;-1;False;False;True;1;LightMode=MotionVectors;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2;0,0;Float;False;False;-1;2;Rendering.HighDefinition.LitShaderGraphGUI;0;2;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;ShadowCaster;0;2;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;False;False;False;False;False;False;False;False;True;0;True;-23;True;False;False;False;False;0;False;-1;False;False;False;False;True;1;False;-1;True;3;False;-1;False;True;1;LightMode=ShadowCaster;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;10;0,0;Float;False;False;-1;2;Rendering.HighDefinition.LitShaderGraphGUI;0;2;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;Forward;0;10;Forward;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;True;1;0;True;-18;0;True;-19;1;0;True;-20;0;True;-21;False;False;False;False;False;False;False;False;True;0;True;-25;False;True;True;True;True;True;0;True;-44;False;False;True;True;0;True;-3;255;False;-1;255;True;-4;7;False;-1;3;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;0;True;-22;True;0;True;-27;False;True;1;LightMode=Forward;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;0;14522.21,474.7635;Float;False;True;-1;2;SpeedTreeHDRPMaterialInspector;0;2;Nature/SpeedTreeHDRP_ASE;53b46d85872c5b24c8f4f0a1c3fe4c87;True;GBuffer;0;0;GBuffer;35;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;False;False;False;False;False;False;False;False;True;0;True;410;False;False;False;False;True;True;0;True;-12;255;False;-1;255;True;-11;7;False;-1;3;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;0;True;-13;False;True;1;LightMode=GBuffer;False;0;;0;0;Standard;41;Surface Type;0;  Rendering Pass;1;  Refraction Model;0;    Blending Mode;0;    Blend Preserves Specular;1;  Receive Fog;1;  Back Then Front Rendering;0;  Transparent Depth Prepass;0;  Transparent Depth Postpass;0;  Transparent Writes Motion Vector;0;  Distortion;0;    Distortion Mode;0;    Distortion Depth Test;1;  ZWrite;0;  Z Test;4;Double-Sided;0;Alpha Clipping;1;  Use Shadow Threshold;0;Material Type,InvertActionOnDeselection;0;  Energy Conserving Specular;1;  Transmission;1;Receive Decals;1;Receives SSR;1;Motion Vectors;1;  Add Precomputed Velocity;0;Specular AA;0;Specular Occlusion Mode;1;Override Baked GI;0;Depth Offset;0;DOTS Instancing;0;LOD CrossFade;0;Tessellation;0;  Phong;0;  Strength;0.5,False,-1;  Type;0;  Tess;16,False,-1;  Min;10,False,-1;  Max;25,False,-1;  Edge Length;16,False,-1;  Max Displacement;25,False,-1;Vertex Position;0;0;11;True;True;True;True;True;True;False;False;False;False;True;False;;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;8;0,0;Float;False;False;-1;2;Rendering.HighDefinition.LitShaderGraphGUI;0;2;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;TransparentDepthPrepass;0;8;TransparentDepthPrepass;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;True;1;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;True;0;True;-23;True;False;False;False;False;0;False;-1;False;False;False;False;True;1;False;-1;False;False;True;1;LightMode=TransparentDepthPrepass;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;7;0,0;Float;False;False;-1;2;Rendering.HighDefinition.LitShaderGraphGUI;0;2;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;TransparentBackface;0;7;TransparentBackface;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;True;1;0;True;-18;0;True;-19;1;0;True;-20;0;True;-21;False;False;False;False;False;False;False;False;True;1;False;-1;False;True;True;True;True;True;0;True;-44;False;False;False;True;0;True;-22;True;0;True;-28;False;True;1;LightMode=TransparentBackface;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;9;0,0;Float;False;False;-1;2;Rendering.HighDefinition.LitShaderGraphGUI;0;2;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;TransparentDepthPostpass;0;9;TransparentDepthPostpass;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;True;1;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;True;0;True;-23;True;False;False;False;False;0;False;-1;False;False;False;False;True;1;False;-1;False;False;True;1;LightMode=TransparentDepthPostpass;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;3;0,0;Float;False;False;-1;2;Rendering.HighDefinition.LitShaderGraphGUI;0;2;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;SceneSelectionPass;0;3;SceneSelectionPass;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;0;False;-1;False;False;False;False;False;False;False;True;1;LightMode=SceneSelectionPass;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;6;0,0;Float;False;False;-1;2;Rendering.HighDefinition.LitShaderGraphGUI;0;2;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;Distortion;0;6;Distortion;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;True;4;1;False;-1;1;False;-1;4;1;False;-1;1;False;-1;True;1;False;-1;1;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;True;True;0;True;-9;255;False;-1;255;True;-9;7;False;-1;3;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;2;False;-1;True;3;False;-1;False;True;1;LightMode=DistortionVectors;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;4;0,0;Float;False;False;-1;2;Rendering.HighDefinition.LitShaderGraphGUI;0;2;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;DepthOnly;0;4;DepthOnly;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;False;False;False;False;False;False;False;False;True;0;True;-23;False;False;False;False;True;True;0;True;-5;255;False;-1;255;True;-6;7;False;-1;3;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;1;False;-1;False;False;True;1;LightMode=DepthOnly;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.CommentaryNode;426;12864,944;Inherit;False;1211.216;247.4169;Mesh / Leaves managed automatically inside;0;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;83;1298.508,-142.4082;Inherit;False;330.5549;100;2 frond wind xyz, 0;0;Fronds;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;26;2269.89,-1412.674;Inherit;False;340.5;100;0    diffuse uv, branch wind xy;0;Branches;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;85;1303.667,10.1001;Inherit;False;245.4069;100;2 leaf wind xyz, leaf group;0;Leaves;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;360;11390.27,920.2094;Inherit;False;402;233;Frond Wind;0;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;27;2286.292,-1248.058;Inherit;False;100;100;Unused;0;Frond/Leaves;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;82;1296.517,-275.5851;Inherit;False;340.5;100;2    detail/seam uv, seam amount, 0;0;Branches;1,1,1,1;0;0
WireConnection;170;0;23;1
WireConnection;170;1;23;2
WireConnection;88;0;80;4
WireConnection;88;1;89;0
WireConnection;88;2;90;0
WireConnection;88;3;84;3
WireConnection;88;4;90;0
WireConnection;91;0;12;0
WireConnection;91;1;170;0
WireConnection;86;0;84;1
WireConnection;86;1;84;2
WireConnection;86;2;88;0
WireConnection;69;0;66;1
WireConnection;69;1;70;1
WireConnection;69;2;70;2
WireConnection;67;0;79;0
WireConnection;98;0;86;0
WireConnection;68;0;79;0
WireConnection;93;0;91;4
WireConnection;93;1;11;4
WireConnection;64;0;79;0
WireConnection;71;0;69;0
WireConnection;62;0;71;0
WireConnection;61;0;68;4
WireConnection;61;1;67;4
WireConnection;61;2;64;4
WireConnection;92;0;91;0
WireConnection;92;1;93;0
WireConnection;92;2;19;0
WireConnection;99;0;98;0
WireConnection;99;1;98;1
WireConnection;72;0;62;0
WireConnection;72;1;63;0
WireConnection;73;0;61;0
WireConnection;103;0;92;0
WireConnection;97;0;15;0
WireConnection;97;1;99;0
WireConnection;111;0;98;2
WireConnection;121;0;98;2
WireConnection;75;0;73;0
WireConnection;75;1;72;0
WireConnection;104;0;103;0
WireConnection;104;1;103;1
WireConnection;104;2;103;2
WireConnection;109;0;121;0
WireConnection;109;1;110;0
WireConnection;109;2;97;4
WireConnection;109;3;97;4
WireConnection;109;4;111;0
WireConnection;108;0;97;1
WireConnection;108;1;97;2
WireConnection;108;2;97;3
WireConnection;78;0;77;4
WireConnection;78;1;75;0
WireConnection;102;0;108;0
WireConnection;102;1;104;0
WireConnection;102;2;109;0
WireConnection;74;0;78;0
WireConnection;106;0;102;0
WireConnection;106;3;103;3
WireConnection;126;0;77;1
WireConnection;126;1;77;2
WireConnection;126;2;77;3
WireConnection;76;0;74;0
WireConnection;101;1;92;0
WireConnection;101;0;106;0
WireConnection;124;0;101;0
WireConnection;175;0;126;0
WireConnection;176;0;76;0
WireConnection;125;0;124;0
WireConnection;125;1;124;1
WireConnection;125;2;124;2
WireConnection;284;0;175;0
WireConnection;285;0;176;0
WireConnection;123;0;125;0
WireConnection;123;1;284;0
WireConnection;123;2;285;0
WireConnection;134;0;123;0
WireConnection;135;0;134;1
WireConnection;135;1;134;2
WireConnection;112;0;11;1
WireConnection;112;1;11;2
WireConnection;112;2;11;3
WireConnection;129;0;124;1
WireConnection;129;1;124;2
WireConnection;136;0;134;0
WireConnection;136;1;135;0
WireConnection;113;0;112;0
WireConnection;113;1;114;1
WireConnection;127;0;124;0
WireConnection;127;1;129;0
WireConnection;138;0;127;0
WireConnection;138;1;136;0
WireConnection;281;0;113;0
WireConnection;281;3;11;4
WireConnection;204;0;99;0
WireConnection;139;0;138;0
WireConnection;139;1;140;0
WireConnection;283;0;281;0
WireConnection;203;0;170;0
WireConnection;141;0;139;0
WireConnection;141;1;140;0
WireConnection;369;0;283;0
WireConnection;202;0;204;0
WireConnection;243;0;369;0
WireConnection;336;0;334;0
WireConnection;177;0;17;0
WireConnection;177;1;202;0
WireConnection;142;0;123;0
WireConnection;142;1;141;0
WireConnection;166;0;17;0
WireConnection;166;1;203;0
WireConnection;213;0;210;0
WireConnection;148;0;101;0
WireConnection;344;1;230;0
WireConnection;344;5;213;0
WireConnection;249;0;243;0
WireConnection;184;0;166;0
WireConnection;184;1;177;0
WireConnection;184;2;109;0
WireConnection;356;0;336;0
WireConnection;147;0;142;0
WireConnection;291;1;21;0
WireConnection;291;4;293;0
WireConnection;291;5;298;0
WireConnection;361;0;344;0
WireConnection;286;0;230;0
WireConnection;286;1;249;3
WireConnection;286;2;213;0
WireConnection;286;3;270;0
WireConnection;149;0;147;0
WireConnection;149;3;148;3
WireConnection;331;0;327;0
WireConnection;357;0;356;0
WireConnection;183;1;166;0
WireConnection;183;0;184;0
WireConnection;430;0;334;0
WireConnection;362;0;361;0
WireConnection;143;1;101;0
WireConnection;143;0;149;0
WireConnection;573;40;21;0
WireConnection;573;6;286;0
WireConnection;573;9;322;0
WireConnection;573;7;213;0
WireConnection;573;16;327;0
WireConnection;573;19;291;3
WireConnection;167;1;183;0
WireConnection;167;0;168;0
WireConnection;437;0;21;0
WireConnection;578;2;344;0
WireConnection;578;27;322;0
WireConnection;578;4;357;0
WireConnection;578;5;331;0
WireConnection;282;0;281;0
WireConnection;354;0;213;0
WireConnection;354;1;573;0
WireConnection;151;0;143;0
WireConnection;197;1;168;0
WireConnection;197;0;167;0
WireConnection;343;1;362;0
WireConnection;343;0;578;0
WireConnection;436;0;437;0
WireConnection;432;0;430;0
WireConnection;433;0;291;4
WireConnection;159;0;143;0
WireConnection;365;0;197;0
WireConnection;152;0;151;0
WireConnection;152;1;282;0
WireConnection;133;0;93;0
WireConnection;438;0;436;0
WireConnection;214;1;343;0
WireConnection;214;0;343;0
WireConnection;214;2;354;0
WireConnection;214;3;343;0
WireConnection;348;1;322;0
WireConnection;348;0;322;0
WireConnection;348;2;573;15
WireConnection;348;3;322;0
WireConnection;431;0;432;0
WireConnection;366;0;365;0
WireConnection;574;24;438;0
WireConnection;574;3;214;0
WireConnection;574;13;431;0
WireConnection;574;15;433;0
WireConnection;514;0;21;0
WireConnection;199;0;133;0
WireConnection;158;0;152;0
WireConnection;160;0;159;0
WireConnection;429;0;348;0
WireConnection;155;0;158;0
WireConnection;155;1;158;1
WireConnection;155;2;158;2
WireConnection;155;3;160;0
WireConnection;368;0;366;0
WireConnection;245;0;199;0
WireConnection;572;129;514;0
WireConnection;572;111;574;0
WireConnection;572;130;574;39
WireConnection;572;102;291;3
WireConnection;572;125;447;0
WireConnection;451;0;429;0
WireConnection;0;0;155;0
WireConnection;0;1;368;0
WireConnection;0;4;206;0
WireConnection;0;7;205;0
WireConnection;0;9;245;0
WireConnection;0;10;19;0
WireConnection;0;11;572;138
WireConnection;0;12;451;0
ASEEND*/
//CHKSM=4362A010290EB9C2AF9816B03F294CE73E42D2D3