package sdl2;

import cxx.*;
import cxx.num.*;

@:cppInclude("SDL2/SDL_stdinc.h") @:include("SDL2/SDL_stdinc.h")

@:cppInclude("SDL2/SDL_stdinc.h")
@:include("SDL2/SDL_stdinc.h")
extern class SDL_Stdinc {
    @:native("SDL_memset")
    @:include("SDL2/SDL_stdinc.h")
	extern public static function SDL_memset(dst:VoidPtr, c:Int, len:SizeT):VoidPtr;

	@:native("SDL_memcpy")
	@:include("SDL2/SDL_stdinc.h")
	extern public static function SDL_memcpy(dst:VoidPtr, src:VoidPtr, len:SizeT):VoidPtr;

	@:native("SDL_malloc")
	@:include("SDL2/SDL_stdinc.h")
	extern public static function SDL_malloc(size:SizeT):VoidPtr;

	@:native("SDL_zero")
	@:include("SDL2/SDL_stdinc.h")
	extern public static function SDL_zero(dst:VoidPtr):VoidPtr;
}

@:cppInclude("SDL2/SDL_stdinc.h")
@:include("SDL2/SDL_stdinc.h")
@:native("SDL_bool")
extern enum SDL_bool {
	@:native("SDL_FALSE")
	SDL_FALSE;
	@:native("SDL_TRUE")
	SDL_TRUE;
}