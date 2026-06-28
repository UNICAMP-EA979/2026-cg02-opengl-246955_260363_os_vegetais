#version 330 core
// Recebe a position no location = 0
// e as uniforms mat4 modelTransformation, viewTransformation e projectionMatrix
// 
// Converte a position para o clip space usando as transformações e armazena em gl_Position.

// SEU CÓDIGO AQUI //////////////////////////////////////////////////////////////////////////
layout (location = 0) in vec3 aPos;

uniform mat4 modelTransformation;
uniform mat4 viewTransformation;
uniform mat4 projectionMatrix;

void main()
{
    gl_Position = projectionMatrix * viewTransformation * modelTransformation * vec4(aPos, 1.0);
}

/////////////////////////////////////////////////////////////////////////////////////////////