-- premake5.lua
workspace "PremakeTemplate"
    architecture "x64"
    configurations {"Debug", "Release"}
    startproject "HelloWorld"

    filter "configurations:Debug"
       defines { "DEBUG" }
       runtime "Debug"
       symbols "On"

   filter "configurations:Release"
       defines { "RELEASE" }
       runtime "Release"
       optimize "On"
       symbols "On"

OutputDir = "%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"

include "HelloLib/HelloLib.lua"
include "HelloWorld/HelloWorld.lua"