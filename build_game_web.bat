emcc -o builds/web/index.html src/main.c ^
-Os -Wall -I. -s USE_GLFW=3 --shell-file web/minshell.html -DPLATFORM_WEB ^
./libs/raylib_web.a  -Ilibs/raylib/src/raylib.h -L. -Llibs/raylib_web.a ^
./libs/box2d_web.a -Ilibs/box2d/include/box2d/box2d.h -Llibs/box2d_web.a