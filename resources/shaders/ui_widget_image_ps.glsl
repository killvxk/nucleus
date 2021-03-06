#version 450

// Inputs
in vec4 gl_FragCoord;
layout (location = 0) in vec2 iTexcoord;
layout (location = 1) in float iZindex;
layout (location = 2) in float iOpacity;
layout (location = 3) in float iOpacityMin;

// Outputs
layout (location = 0) out vec4 result;

// Samplers
layout (binding = 0) uniform sampler2D s;

void main() {
    result = texture(s, iTexcoord.xy);
    result.a *= iOpacity;
    result.a += iOpacityMin;
}
