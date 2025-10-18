call emcc -c raylib/src/rcore.c -Os -Wall -DPLATFORM_WEB -DGRAPHICS_API_OPENGL_ES2
call emcc -c raylib/src/rshapes.c -Os -Wall -DPLATFORM_WEB -DGRAPHICS_API_OPENGL_ES2
call emcc -c raylib/src/rtextures.c -Os -Wall -DPLATFORM_WEB -DGRAPHICS_API_OPENGL_ES2
call emcc -c raylib/src/rtext.c -Os -Wall -DPLATFORM_WEB -DGRAPHICS_API_OPENGL_ES2
call emcc -c raylib/src/rmodels.c -Os -Wall -DPLATFORM_WEB -DGRAPHICS_API_OPENGL_ES2
call emcc -c raylib/src/utils.c -Os -Wall -DPLATFORM_WEB
call emcc -c raylib/src/raudio.c -Os -Wall -DPLATFORM_WEB

call emar rcs raylib_web.a rcore.o rshapes.o rtextures.o rtext.o rmodels.o utils.o raudio.o