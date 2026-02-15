package sdl2;

import cxx.*;
import cxx.num.*;

@:cppInclude("SDL2/SDL_rwops.h") @:include("SDL2/SDL_rwops.h")

@:include("SDL2/SDL_rwops.h")
@:native("SDL_RWops")
extern typedef SDL_RWops = {
    @:native("size")
    var size:Ptr<Int64>;
    @:native("seek")
    var seek:Ptr<Int64>;
    @:native("read")
    var read:Ptr<SizeT>;
    @:native("write")
	var write:Ptr<SizeT>;
    @:native("close")
	var close:Ptr<SizeT>;
}

@:cppInclude("SDL2/SDL_rwops.h") 
@:include("SDL2/SDL_rwops.h")
extern class SDL_RWopsClass {
	@:native("RW_SEEK_END")
	@:include("SDL2/SDL_rwops.h")
	extern public static
	var RW_SEEK_END:Int;

	@:native("SDL_RWFromFile")
	@:include("SDL2/SDL_rwops.h")
    extern public static function SDL_RWFromFile(file:ConstCharPtr, mode:ConstCharPtr):Ptr<SDL_RWops>;

	@:native("SDL_RWseek")
    @:include("SDL2/SDL_rwops.h")
    extern public static function SDL_RWseek(ptr:Ptr<SDL_RWops>, offset:Int64, whence:Int):Int64;

    @:native("SDL_RWclose")
    @:include("SDL2/SDL_rwops.h")
    extern public static function SDL_RWclose(ptr:Ptr<SDL_RWops>):Int;
}
