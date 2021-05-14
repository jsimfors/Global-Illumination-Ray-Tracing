/* 
Rendering of a Cornell Box with global illumination. 
In this shader we have implemented the Rendering Equation, 
with Cook-Torrance BRDF, visualized in the classic Cornell Box.

Made together with: GabrielR 
https://www.shadertoy.com/user/gabrielr

*/

void mainImage(out vec4 fragColor, in vec2 fragCoord)
{
    // Read the Buffer A texel
    //fragColor = texture(iChannel0, fragCoord.xy/iResolution.xy);
    vec3 col = texture( iChannel0, fragCoord/iResolution.xy ).xyz;

    fragColor = vec4(sqrt(col),1.0);
    //Apply gamma correction and write to main buffer
    fragColor = pow(fragColor, vec4(1.0/2.2));
    fragColor.w = 1.0;
}