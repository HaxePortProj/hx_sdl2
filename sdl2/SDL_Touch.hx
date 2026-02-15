package sdl2;

@:cppInclude("SDL2/SDL_touch.h") @:include("SDL2/SDL_touch.h")
@:cppInclude("SDL2/SDL_touch.h")
@:include("SDL2/SDL_touch.h")
@:native("SDL_TouchID")
typedef SDL_TouchID = Int64;

@:cppInclude("SDL2/SDL_touch.h")
@:include("SDL2/SDL_touch.h")
@:native("SDL_FingerID")
typedef SDL_FingerID = Int64;

@:cppInclude("SDL2/SDL_touch.h")
@:include("SDL2/SDL_touch.h")
@:native("SDL_Finger")
extern typedef SDL_Finger = {
	@:native("id")
	var id:SDL_FingerID;
	@:native("x")
	var x:Float;
	@:native("y")
	var y:Float;
	@:native("pressure")
	var pressure:Float;
}

@:cppInclude("SDL2/SDL_touch.h")
@:include("SDL2/SDL_touch.h")
extern class SDL_Touch {
	@:native("SDL_TOUCH_MOUSEID")
	extern public static var SDL_TOUCH_MOUSEID:UInt32;

	@:native("SDL_GetNumTouchDevices")
	@:include("SDL2/SDL_touch.h")
	extern public static function SDL_GetNumTouchDevices():Int;

	@:native("SDL_GetTouchDevice")
	@:include("SDL2/SDL_touch.h")
	extern public static function SDL_GetTouchDevice(index:Int):SDL_TouchID;

	@:native("SDL_GetNumTouchFingers")
	@:include("SDL2/SDL_touch.h")
	extern public static function SDL_GetNumTouchFingers(touchID:SDL_TouchID):Int;

	@:native("SDL_GetTouchFinger")
	@:include("SDL2/SDL_touch.h")
	extern public static function SDL_GetTouchFinger(touchID:SDL_TouchID, index:Int):Ptr<SDL_Finger>;
}
