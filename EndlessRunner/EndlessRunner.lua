project "EndlessRunner"
    kind "ConsoleApp"
    language "C++"

    files { "src/**.hpp", "src/**.cpp" }
    includedirs { "../Core/src" }
    links { "Core" }

    targetdir ("../build/bin/" .. OutputDir .. "/%{prj.name}")
    objdir ("../build/obj/" .. OutputDir .. "/%{prj.name}")