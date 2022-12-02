//
// Created by Domenico Neri on 01/12/22.
//

#include "Application.h"
#include "imgui.h"

namespace MyApp{

        void RenderUI(){


                


            ImGui::Begin("settings");
            ImGui::Button("Hello");
            static float value = 0.0f;
            ImGui::DragFloat("Value",&value);
            ImGui::End();

            static bool boollea=true;
            ImGui::ShowDemoWindow();
        }
}
