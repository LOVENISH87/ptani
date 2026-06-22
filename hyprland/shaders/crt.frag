//modified version of [this shader](https://github.com/wessles/GLSL-CRT/blob/master/shader.frag)

precision mediump float;

in vec2 v_texcoord;
uniform sampler2D tex;
out vec4 fragColor;

void main() {
    vec2 uv = v_texcoord;

    vec2 cc = uv - 0.5;
    float dist = dot(cc, cc) * 0.2;
    uv = uv + cc * dist;

    if (uv.x < 0.0 || uv.x > 1.0 || uv.y < 0.0 || uv.y > 1.0) {
        fragColor = vec4(0.0, 0.0, 0.0, 1.0);
        return;
    }

    vec4 color = texture(tex, uv);

    float scanline = sin(v_texcoord.y * 1080.0 * 3.14159) * 0.07;
    color.rgb -= scanline;

    float vignette = 1.0 - dot(cc * 1.8, cc * 1.8);
    color.rgb *= vignette;

    fragColor = color;
}


