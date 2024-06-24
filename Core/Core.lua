project "Core"
    kind "staticLib"
    language "C++"

    files { "src/**.hpp", "src/**.cpp" }
    includedirs { "src ", "../include"}
    libdirs { "../lib" }
    links { "raylib", "winmm", "gdi32", "user32" }

    targetdir ("../build/bin/" .. OutputDir .. "/%{prj.name}")
    objdir ("../build/obj/" .. OutputDir .. "/%{prj.name}")