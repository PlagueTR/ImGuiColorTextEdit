project "ImGuiColorTextEdit"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "On"

    targetdir ("bin/" ..outputdir.. "/%{prj.name}")
    objdir ("bin-int/" ..outputdir.. "/%{prj.name}")

    --ImGui needs to be included and IncludeDir["ImGui"] needs to be defined
    includedirs{
        "%{IncludeDir.ImGui}"
    }

    files{
        "TextEditor.h",
        "TextEditor.cpp"
    }

    links{
        "ImGui"
    }

    filter "configurations:Debug"
		runtime "Debug"
		symbols "On"

    filter "configurations:Release"
		runtime "Release"
		optimize "On"
