package sdl2;

import cxx.*;
import cxx.num.*;

@:cppInclude("SDL2/SDL.h")
@:include("SDL2/SDL.h")
extern class SDL {
	@:native("SDL_INIT_TIMER")
	@:include("SDL2/SDL.h")
	extern public static var SDL_INIT_TIMER:UInt32;

	@:native("SDL_INIT_AUDIO")
	@:include("SDL2/SDL.h")
	extern public static var SDL_INIT_AUDIO:UInt32;

	@:native("SDL_INIT_VIDEO")
	@:include("SDL2/SDL.h")
    extern public static var SDL_INIT_VIDEO:UInt32;

	@:native("SDL_INIT_JOYSTICK")
	@:include("SDL2/SDL.h")
    extern public static var SDL_INIT_JOYSTICK:UInt32;

	@:native("SDL_INIT_GAMECONTROLLER")
	@:include("SDL2/SDL.h")
    extern public static var SDL_INIT_GAMECONTROLLER:UInt32;

    @:native("SDL_INIT_HAPTIC")
	@:include("SDL2/SDL.h")
    extern public static var SDL_INIT_HAPTIC:UInt32;
    
	@:native("SDL_INIT_EVENTS")
	@:include("SDL2/SDL.h")
    extern public static var SDL_INIT_EVENTS:UInt32;
    
	@:native("SDL_INIT_SENSOR")
	@:include("SDL2/SDL.h")
    extern public static var SDL_INIT_SENSOR:UInt32;

	@:native("SDL_INIT_NOPARACHUTE")
	@:include("SDL2/SDL.h")
    extern public static var SDL_INIT_NOPARACHUTE:UInt32;
    
	@:native("SDL_INIT_EVERYTHING")
	@:include("SDL2/SDL.h")
    extern public static var SDL_INIT_EVERYTHING:UInt32;
    
    @:native("SDL_Init")
	@:include("SDL2/SDL.h")
	extern public static function SDL_Init(flags:UInt32):Int32;

	@:native("SDL_InitSubSystem")
	@:include("SDL2/SDL.h")
    extern public static function SDL_InitSubSystem(flags:UInt32):Int32;

    @:native("SDL_QuitSubSystem")
	@:include("SDL2/SDL.h")
    extern public static function SDL_QuitSubSystem(flags:UInt32):Void;

	@:native("SDL_WasInit")
	@:include("SDL2/SDL.h")
    extern public static function SDL_WasInit(flags:UInt32):Int32;

	@:native("SDL_Quit")
	@:include("SDL2/SDL.h")
    extern public static function SDL_Quit():Void;
}
