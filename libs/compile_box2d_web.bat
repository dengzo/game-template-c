set CFLAGS=-Ibox2d/include --target=wasm32 -D__EMSCRIPTEN__ -DNDEBUG -O3 -DBOX2D_DISABLE_SIMD -msimd128

call emcc -c box2d/src/aabb.c -o aabb.o %CFLAGS%
call emcc -c box2d/src/arena_allocator.c -o arena_allocator.o %CFLAGS%
call emcc -c box2d/src/array.c -o array.o %CFLAGS%
call emcc -c box2d/src/bitset.c -o bitset.o %CFLAGS%
call emcc -c box2d/src/body.c -o body.o %CFLAGS%
call emcc -c box2d/src/broad_phase.c -o broad_phase.o %CFLAGS%
call emcc -c box2d/src/constraint_graph.c -o constraint_graph.o %CFLAGS%
call emcc -c box2d/src/contact.c -o contact.o %CFLAGS%
call emcc -c box2d/src/contact_solver.c -o contact_solver.o %CFLAGS%
call emcc -c box2d/src/core.c -o core.o %CFLAGS%
call emcc -c box2d/src/distance.c -o distance.o %CFLAGS%
call emcc -c box2d/src/distance_joint.c -o distance_joint.o %CFLAGS%
call emcc -c box2d/src/dynamic_tree.c -o dynamic_tree.o %CFLAGS%
call emcc -c box2d/src/geometry.c -o geometry.o %CFLAGS%
call emcc -c box2d/src/hull.c -o hull.o %CFLAGS%
call emcc -c box2d/src/id_pool.c -o id_pool.o %CFLAGS%
call emcc -c box2d/src/island.c -o island.o %CFLAGS%
call emcc -c box2d/src/joint.c -o joint.o %CFLAGS%
call emcc -c box2d/src/manifold.c -o manifold.o %CFLAGS%
call emcc -c box2d/src/math_functions.c -o math_functions.o %CFLAGS%
call emcc -c box2d/src/motor_joint.c -o motor_joint.o %CFLAGS%
call emcc -c box2d/src/mouse_joint.c -o mouse_joint.o %CFLAGS%
call emcc -c box2d/src/mover.c -o mover.o %CFLAGS%
call emcc -c box2d/src/prismatic_joint.c -o prismatic_joint.o %CFLAGS%
call emcc -c box2d/src/revolute_joint.c -o revolute_joint.o %CFLAGS%
call emcc -c box2d/src/sensor.c -o sensor.o %CFLAGS%
call emcc -c box2d/src/shape.c -o shape.o %CFLAGS%
call emcc -c box2d/src/solver.c -o solver.o %CFLAGS%
call emcc -c box2d/src/solver_set.c -o solver_set.o %CFLAGS%
call emcc -c box2d/src/table.c -o table.o %CFLAGS%
call emcc -c box2d/src/timer.c -o timer.o %CFLAGS%
call emcc -c box2d/src/types.c -o types.o %CFLAGS%
call emcc -c box2d/src/weld_joint.c -o weld_joint.o %CFLAGS%
call emcc -c box2d/src/wheel_joint.c -o wheel_joint.o %CFLAGS%
call emcc -c box2d/src/world.c -o world.o %CFLAGS%

call emar rcs box2d_web.a ^
aabb.o ^
arena_allocator.o ^
array.o ^
bitset.o ^
body.o ^
broad_phase.o ^
constraint_graph.o ^
contact.o ^
contact_solver.o ^
core.o ^
distance.o ^
distance_joint.o ^
dynamic_tree.o ^
geometry.o ^
hull.o ^
id_pool.o ^
island.o ^
joint.o ^
manifold.o ^
math_functions.o ^
motor_joint.o ^
mouse_joint.o ^
mover.o ^
prismatic_joint.o ^
revolute_joint.o ^
sensor.o ^
shape.o ^
solver.o ^
solver_set.o ^
table.o ^
timer.o ^
types.o ^
weld_joint.o ^
wheel_joint.o ^
world.o