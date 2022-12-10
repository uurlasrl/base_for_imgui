//
// Created by Domenico Neri on 10/12/22.
//

#ifndef BASE_FOR_IMGUI_SHADER_H
#define BASE_FOR_IMGUI_SHADER_H

#include <GL/glew.h>

class Shader
{
public:
    GLuint Program;
    // Constructor generates the shader on the fly
    Shader( const GLchar *vertexPath, const GLchar *fragmentPath );
    // Uses the current shader
    void Use( );
};


#endif //BASE_FOR_IMGUI_SHADER_H
