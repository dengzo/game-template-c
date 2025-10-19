clang -o main.exe src\main.c ^
libs\raylib\src\raylib.rc.data ^
-s -static -Os -std=c99 -Wall ^
-Ilibs\raylib\src -Iexternal -DPLATFORM_DESKTOP -llibs/raylib ^
-Ilibs\box2d\include\box2d -llibs/box2d ^
-lopengl32 -lgdi32 -lshell32 -luser32 -lwinmm