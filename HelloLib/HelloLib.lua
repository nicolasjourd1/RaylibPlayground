project "HelloLib"
    kind "staticLib"
    language "C++"

    files { "src/**.hpp", "src/**.cpp" }
    includedirs { "src "}

    targetdir ("../build/bin/" .. OutputDir .. "/%{prj.name}")
    objdir ("../build/obj/" .. OutputDir .. "/%{prj.name}")