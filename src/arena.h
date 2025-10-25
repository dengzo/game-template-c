#ifndef ARENA_H
#define ARENA_H

#include "eb.h"

#include <string.h>
#include <stdlib.h>

typedef struct Arena {
	u8* buffer;
	u32 buffer_length;
	u32 offset;
} Arena;

Arena arena_init(u32 size) {
	Arena arena = {};
	arena.buffer = malloc(size);
	arena.buffer_length = size;
	arena.offset = 0;
	return arena;
}

void *arena_alloc(Arena* arena, u32 size) {
	if (arena->offset + size > arena->buffer_length) return 0;

	void *ptr = &arena->buffer[arena->offset];
	arena->offset += size;

	// Zero new memory by default
	memset(ptr, 0, size);
	return ptr;
}

void arena_free(Arena* arena) {
	arena->offset = 0;
}

#endif