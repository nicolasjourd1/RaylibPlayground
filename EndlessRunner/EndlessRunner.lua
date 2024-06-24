project "EndlessRunner"
    kind "ConsoleApp"
    language "C++"

    files { "src/**.hpp", "src/**.cpp" }
    includedirs { "../Core/src", "../include" }
    libdirs { "../lib" }
    links { "raylibdll", "winmm", "gdi32", "user32" }

    targetdir ("../build/bin/" .. OutputDir .. "/%{prj.name}")
    objdir ("../build/obj/" .. OutputDir .. "/%{prj.name}")