include "utils.lua"

workspace "ws_raylib_starter"
  configurations { "Debug", "Release" }
  architecture "x86_64"

project "prj_raylib_starter"
  kind "WindowedApp"
  language "C++"
  cppdialect "C++20"

  targetname "premake-raylib-starter-%{cfg.architecture}"

  BUILD_DIR = "bin/"

  externalincludedirs = { "/usr/local/include" }
  includedirs = { "include/**.h" }

  files { "src/**.cpp" }

  libdirs { "/usr/local/lib" }

  links { "raylib" }

  filter "configurations:Debug"
    defines { "DEBUG" }
    symbols "On"
    targetsuffix "-debug"
    targetdir = BUILD_DIR .. "debug"

  filter "configurations:Release"
    defines { "NDEBUG" }
    optimize "On"
    targetsuffix "-release"
    targetdir = BUILD_DIR .. "release"
