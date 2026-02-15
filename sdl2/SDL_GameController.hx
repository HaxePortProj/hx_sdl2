package sdl2;

import cxx.*;
import cxx.num.*;

@:cppInclude("SDL2/SDL_gamecontroller.h")
@:include("SDL2/SDL_gamecontroller.h")
@:native("SDL_GameController")
extern class SDL_GameController {
	@:haxe.warning("-WExternWithExpr")
	public function new() {}
}

@:cppInclude("SDL2/SDL_gamecontroller.h")
@:include("SDL2/SDL_gamecontroller.h")
extern class SDL_GameControllerStatic {
	@:native("SDL_GameControllerOpen")
	@:include("SDL2/SDL_gamecontroller.h")
	extern public static function SDL_GameControllerOpen(joystick_index:Int):Ptr<SDL_GameController>;

	@:native("SDL_CONTROLLER_BUTTON_START")
	@:include("SDL2/SDL_gamecontroller.h")
	extern public static var SDL_CONTROLLER_BUTTON_START:UInt8;
}