project "HelloWorld"
    kind "ConsoleApp"
    language "C++"

    files { "src/**.hpp", "src/**.cpp" }
    includedirs { "../HelloLib/src" }
    links { "HelloLib" }

    targetdir ("../build/bin/" .. OutputDir .. "/%{prj.name}")
    objdir ("../build/obj/" .. OutputDir .. "/%{prj.name}")