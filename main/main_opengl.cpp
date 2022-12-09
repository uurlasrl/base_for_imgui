#include <iostream>

#define GLEW_STATIC true

#include <GL/glew.h>
#include <GLFW/glfw3.h>
const GLint WIDTH = 800, HEIGHT = 600;

int main(int, char**){
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR,3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR,3);
    glfwWindowHint(GLFW_OPENGL_PROFILE,GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GLFW_TRUE);
    glfwWindowHint(GLFW_RESIZABLE, GLFW_FALSE);

    GLFWwindow *windows = glfwCreateWindow(WIDTH,HEIGHT,"Learn OpenGL", nullptr, nullptr);
    int screenWidth,screenHeight;
    glfwGetFramebufferSize(windows, &screenWidth, &screenHeight);

    if(windows == nullptr){
        std::cout <<"ma che sfiga!!!"<<std::endl;
        glfwTerminate();
        return EXIT_FAILURE;
    }

    glfwMakeContextCurrent(windows);

    glewExperimental = GL_TRUE;


}