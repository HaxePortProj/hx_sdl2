package sdl2;

import cxx.*;
import cxx.num.*;

@:cppInclude("SDL2/SDL_video.h") @:include("SDL2/SDL_video.h")

@:cppInclude("SDL2/SDL_video.h")
@:include("SDL2/SDL_video.h")
@:native("SDL_DisplayMode")
extern typedef SDL_DisplayMode = {
    @:native("format")
    var format:UInt32;
    @:native("w")
    var w:Int;
    @:native("h")
    var h:Int;
    @:native("refresh_rate")
    var refresh_rate:Int;
    @:native("driverdata")
    var driverdata:VoidPtr;
}

@:cppInclude("SDL2/SDL_video.h") 
@:include("SDL2/SDL_video.h") 
@:native("SDL_Window")
extern class SDL_Window {}

@:cppInclude("SDL2/SDL_video.h") 
@:include("SDL2/SDL_video.h") 
@:native("SDL_WindowFlags")
extern enum SDL_WindowFlags {
    @:native("SDL_WINDOW_FULLSCREEN")
    SDL_WINDOW_FULLSCREEN;
    @:native("SDL_WINDOW_OPENGL")
    SDL_WINDOW_OPENGL;
	@:native("SDL_WINDOW_SHOWN")
	SDL_WINDOW_SHOWN;
	@:native("SDL_WINDOW_HIDDEN")
	SDL_WINDOW_HIDDEN;
	@:native("SDL_WINDOW_BORDERLESS")
	SDL_WINDOW_BORDERLESS;
	@:native("SDL_WINDOW_RESIZABLE")
	SDL_WINDOW_RESIZABLE;
    @:native("SDL_WINDOW_MINIMIZED")
    SDL_WINDOW_MINIMIZED;
    @:native("SDL_WINDOW_MAXIMIZED")
    SDL_WINDOW_MAXIMIZED;
    @:native("SDL_WINDOW_INPUT_GRABBED")
    SDL_WINDOW_INPUT_GRABBED;
    @:native("SDL_WINDOW_INPUT_FOCUS")
    SDL_WINDOW_INPUT_FOCUS;
    @:native("SDL_WINDOW_MOUSE_FOCUS")
    SDL_WINDOW_MOUSE_FOCUS;
	@:native("SDL_WINDOW_FULLSCREEN_DESKTOP")
	SDL_WINDOW_FULLSCREEN_DESKTOP;
    @:native("SDL_WINDOW_FOREIGN")
    SDL_WINDOW_FOREIGN;
    @:native("SDL_WINDOW_ALLOW_HIGHDPI")
    SDL_WINDOW_ALLOW_HIGHDPI;
    @:native("SDL_WINDOW_MOUSE_CAPTURE")
    SDL_WINDOW_MOUSE_CAPTURE;
    @:native("SDL_WINDOW_ALWAYS_ON_TOP")
    SDL_WINDOW_ALWAYS_ON_TOP;
    @:native("SDL_WINDOW_SKIP_TASKBAR")
    SDL_WINDOW_SKIP_TASKBAR;
    @:native("SDL_WINDOW_UTILITY")
    SDL_WINDOW_UTILITY;
    @:native("SDL_WINDOW_TOOLTIP")
    SDL_WINDOW_TOOLTIP;
    @:native("SDL_WINDOW_POPUP_MENU")
    SDL_WINDOW_POPUP_MENU;
	@:native("SDL_WINDOW_WIIU_GAMEPAD_ONLY")
    SDL_WINDOW_WIIU_GAMEPAD_ONLY;
	@:native("SDL_WINDOW_WIIU_TV_ONLY")
	SDL_WINDOW_WIIU_TV_ONLY;
	@:native("SDL_WINDOW_VULKAN")
    SDL_WINDOW_VULKAN;
}

@:cppInclude("SDL2/SDL_video.h") 
@:include("SDL2/SDL_video.h") 
@:native("SDL_WindowFlags")
extern enum SDL_WindowEventID {
    @:native("SDL_WINDOWEVENT_NONE")
    SDL_WINDOWEVENT_NONE;
    @:native("SDL_WINDOWEVENT_SHOWN")
    SDL_WINDOWEVENT_SHOWN;
    @:native("SDL_WINDOWEVENT_HIDDEN")
    SDL_WINDOWEVENT_HIDDEN;
    @:native("SDL_WINDOWEVENT_EXPOSED")
    SDL_WINDOWEVENT_EXPOSED;
    @:native("SDL_WINDOWEVENT_MOVED")
    SDL_WINDOWEVENT_MOVED;
    @:native("SDL_WINDOWEVENT_RESIZED")
    SDL_WINDOWEVENT_RESIZED;
    @:native("SDL_WINDOWEVENT_SIZE_CHANGED")
    SDL_WINDOWEVENT_SIZE_CHANGED;
    @:native("SDL_WINDOWEVENT_MINIMIZED")
    SDL_WINDOWEVENT_MINIMIZED;
    @:native("SDL_WINDOWEVENT_MAXIMIZED")
    SDL_WINDOWEVENT_MAXIMIZED;
    @:native("SDL_WINDOWEVENT_RESTORED")
    SDL_WINDOWEVENT_RESTORED;
    @:native("SDL_WINDOWEVENT_ENTER")
    SDL_WINDOWEVENT_ENTER;
    @:native("SDL_WINDOWEVENT_LEAVE")
    SDL_WINDOWEVENT_LEAVE;
    @:native("SDL_WINDOWEVENT_FOCUS_GAINED")
    SDL_WINDOWEVENT_FOCUS_GAINED;
    @:native("SDL_WINDOWEVENT_FOCUS_LOST")
    SDL_WINDOWEVENT_FOCUS_LOST;
    @:native("SDL_WINDOWEVENT_CLOSE")
    SDL_WINDOWEVENT_CLOSE;
    @:native("SDL_WINDOWEVENT_TAKE_FOCUS")
    SDL_WINDOWEVENT_TAKE_FOCUS;
    @:native("SDL_WINDOWEVENT_HIT_TEST")
    SDL_WINDOWEVENT_HIT_TEST;
}

@:cppInclude("SDL2/SDL_video.h") 
@:include("SDL2/SDL_video.h") 
@:native("SDL_DisplayEventID")
extern enum SDL_DisplayEventID {
    @:native("SDL_DISPLAYEVENT_NONE")
    SDL_DISPLAYEVENT_NONE;
	@:native("SDL_DISPLAYEVENT_ORIENTATION")
	SDL_DISPLAYEVENT_ORIENTATION;
}

@:cppInclude("SDL2/SDL_video.h") 
@:include("SDL2/SDL_video.h") 
@:native("SDL_DisplayOrientation")
extern enum SDL_DisplayOrientation {
    @:native("SDL_ORIENTATION_UNKNOWN")
    SDL_ORIENTATION_UNKNOWN;
    @:native("SDL_ORIENTATION_LANDSCAPE")
    SDL_ORIENTATION_LANDSCAPE;
    @:native("SDL_ORIENTATION_LANDSCAPE_FLIPPED")
    SDL_ORIENTATION_LANDSCAPE_FLIPPED;
    @:native("SDL_ORIENTATION_PORTRAIT")
    SDL_ORIENTATION_PORTRAIT;
    @:native("SDL_ORIENTATION_PORTRAIT_FLIPPED")
    SDL_ORIENTATION_PORTRAIT_FLIPPED;
}

@:cppInclude("SDL2/SDL_video.h")
@:include("SDL2/SDL_video.h") 
extern class SDL_Video {

	@:native("SDL_WINDOWPOS_CENTERED")
    @:include("SDL2/SDL_video.h")
    extern public static var SDL_WINDOWPOS_CENTERED:Int;

	@:native("SDL_WINDOWPOS_UNDEFINED")
    @:include("SDL2/SDL_video.h")
    extern public static var SDL_WINDOWPOS_UNDEFINED:Int;

	@:native("SDL_CreateWindow")
    @:include("SDL2/SDL_video.h")
	extern public static function SDL_CreateWindow(title:ConstCharPtr, x:Int, y:Int, w:Int, h:Int, flags:UInt32):Ptr<SDL_Window>;

    @:native("SDL_DestroyWindow")
    @:include("SDL2/SDL_video.h")
    extern public static function SDL_DestroyWindow(window:Ptr<SDL_Window>):Void;

	@:native("SDL_VideoQuit")
    @:include("SDL2/SDL_video.h")
	extern public static function SDL_VideoQuit():Void;
}