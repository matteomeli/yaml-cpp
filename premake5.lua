project "yaml-cpp"
    kind "StaticLib"
    language "C++"

    targetdir ("Bin/" .. outputdir .. "/%{prj.name}")
    objdir ("Intermediates/" .. outputdir .. "/%{prj.name}")

    files
    {
        "src/**.h",
        "src/**.cpp",

        "include/**.h"
    }

    includedirs
    {
        "include"
    }

    filter "system:windows"
        systemversion "latest"
        cppdialect "C++17"
        staticurntime "off"

    filter "system:linux"
        pic "on"
        systemversion "latest"
        cppdialect "C++17"
        staticurntime "off"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"
