call clang -c raylib/src/rcore.c -Iraylib/src/external/glfw/include -std=c99 -Wall -DPLATFORM_DESKTOP -DGRAPHICS_API_OPENGL_33 -Wno-unused-parameter
call clang -c raylib/src/rglfw.c -std=c99 -Wall -DPLATFORM_DESKTOP -DGRAPHICS_API_OPENGL_33 -Wno-unused-parameter
call clang -c raylib/src/rshapes.c -std=c99 -Wall -DPLATFORM_DESKTOP -DGRAPHICS_API_OPENGL_33 -Wno-unused-parameter
call clang -c raylib/src/rtextures.c -std=c99 -Wall -DPLATFORM_DESKTOP -DGRAPHICS_API_OPENGL_33 -Wno-unused-parameter
call clang -c raylib/src/rtext.c -std=c99 -Wall -DPLATFORM_DESKTOP -DGRAPHICS_API_OPENGL_33 -Wno-unused-parameter
call clang -c raylib/src/rmodels.c -std=c99 -Wall -DPLATFORM_DESKTOP -DGRAPHICS_API_OPENGL_33 -Wno-unused-parameter
call clang -c raylib/src/utils.c -std=c99 -Wall -DPLATFORM_DESKTOP -DGRAPHICS_API_OPENGL_33 -Wno-unused-parameter
call clang -c raylib/src/raudio.c -std=c99 -Wall -DPLATFORM_DESKTOP -DGRAPHICS_API_OPENGL_33 -Wno-unused-parameter

call llvm-ar rcs raylib.lib rcore.o rglfw.o rshapes.o rtextures.o rtext.o rmodels.o utils.o raudio.o