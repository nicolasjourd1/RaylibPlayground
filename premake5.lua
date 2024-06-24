-- premake5.lua
workspace "PremakeTemplate"
    architecture "x64"
    configurations {"Debug", "Release"}
    startproject "Core"

    filter "configurations:Debug"
       defines { "_DEBUG_" }
       runtime "Debug"
       symbols "On"

   filter "configurations:Release"
       defines { "_RELEASE_" }
       runtime "Release"
       optimize "On"
       symbols "On"
       linkoptions { "-mwindows" }

OutputDir = "%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"

include "Core/Core.lua"
include "EndlessRunner/EndlessRunner.lua"