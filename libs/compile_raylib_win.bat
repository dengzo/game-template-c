call clang -c raylib/src/rcore.c -Os -Wall -DPLATFORM_DESKTOP
call clang -c raylib/src/rshapes.c -Os -Wall -DPLATFORM_DESKTOP
call clang -c raylib/src/rtextures.c -Os -Wall -DPLATFORM_DESKTOP
call clang -c raylib/src/rtext.c -Os -Wall -DPLATFORM__DESKTOP
call clang -c raylib/src/rmodels.c -Os -Wall -DPLATFORM_DESKTOP
call clang -c raylib/src/utils.c -Os -Wall -DPLATFORM_DESKTOP
call clang -c raylib/src/raudio.c -Os -Wall -DPLATFORM_DESKTOP

# call emar rcs libraylib.a rcore.o rshapes.o rtextures.o rtext.o rmodels.o utils.o raudio.o