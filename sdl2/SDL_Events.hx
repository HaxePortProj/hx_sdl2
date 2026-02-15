package sdl2;

import cxx.*;
import cxx.num.*;

@:cppInclude("SDL2/SDL_events.h")
@:include("SDL2/SDL_events.h")
extern class SDL_Events {
	@:native("SDL_QUIT")
	@:include("SDL2/SDL_events.h")
	extern public static var SDL_QUIT:UInt32;

	@:native("SDL_CONTROLLERDEVICEADDED")
	@:include("SDL2/SDL_events.h")
	extern public static var SDL_CONTROLLERDEVICEADDED:UInt32;

	@:native("SDL_CONTROLLERBUTTONDOWN")
	@:include("SDL2/SDL_events.h")
	extern public static var SDL_CONTROLLERBUTTONDOWN:UInt32;

	@:native("SDL_PollEvent")
	@:include("SDL2/SDL_events.h")
	extern public static function SDL_PollEvent(event:Ptr<SDL_Event>):Int;
}

@:cppInclude("SDL2/SDL_events.h")
@:include("SDL2/SDL_events.h")
@:native("SDL_Event")
@:valueType
extern class SDL_Event {
	public var type:UInt32;
	public var cdevice:SDL_ControllerDeviceEvent;
	public var cbutton:SDL_ControllerButtonEvent;

	@:haxe.warning("-WExternWithExpr")
	public function new() {}
}

@:cppInclude("SDL2/SDL_events.h")
@:include("SDL2/SDL_events.h")
@:native("SDL_ControllerDeviceEvent")
@:valueType
extern class SDL_ControllerDeviceEvent {
	public var type:UInt32;
	public var timestamp:UInt32;
	public var which:Int32;

	@:haxe.warning("-WExternWithExpr")
	public function new() {}
}

@:cppInclude("SDL2/SDL_events.h")
@:include("SDL2/SDL_events.h")
@:native("SDL_ControllerButtonEvent")
@:valueType
extern class SDL_ControllerButtonEvent {
	public var type:UInt32;
	public var timestamp:UInt32;
	public var which:Int32;
	public var button:UInt8;
	public var state:UInt8;

	@:haxe.warning("-WExternWithExpr")
	public function new() {}
}