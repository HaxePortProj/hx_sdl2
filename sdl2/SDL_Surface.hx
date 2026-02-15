package sdl2;

import sdl2.SDL_Surface.SDL_Surface;
import cxx.*;
import cxx.num.*;

@:cppInclude("SDL2/SDL_surface.h") @:include("SDL2/SDL_surface.h")

@:native("SDL_BlitMap")
@:valueType
extern class SDL_BlitMap {
    @:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:include("SDL2/SDL_surface.h")
@:native("SDL_Surface")
@:valueType
extern class SDL_Surface {
    @:include("SDL2/SDL_surface.h")
	public var flags:UInt32;
    @:include("SDL2/SDL_surface.h")
    public var format:Ptr<SDL_Pixels.SDL_PixelFormat>;
    @:include("SDL2/SDL_surface.h")
    public var w:UInt32;
    @:include("SDL2/SDL_surface.h")
    public var h:UInt32;
    @:include("SDL2/SDL_surface.h")
    public var pitch:UInt32;
    @:include("SDL2/SDL_surface.h")
    public var pixels:VoidPtr;
    @:include("SDL2/SDL_surface.h")
    public var userdata:VoidPtr;
    @:include("SDL2/SDL_surface.h")
    public var locked:UInt32;
    @:include("SDL2/SDL_surface.h")
    public var lock_data:VoidPtr;
    @:include("SDL2/SDL_surface.h")
    public var clip_rect:SDL_Rect;
    @:include("SDL2/SDL_surface.h")
    public var map:Ptr<SDL_BlitMap>;
    @:include("SDL2/SDL_surface.h")
    public var refcount:Int;

    @:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:cppInclude("SDL2/SDL_surface.h") 
@:include("SDL2/SDL_surface.h")
extern class SDL_SurfaceClass {
    @:native("SDL_FreeSurface")
    @:include("SDL2/SDL_surface.h")
    extern public static function SDL_FreeSurface(surface:Ptr<SDL_Surface>):Int;

    @:native("SDL_CreateRGBSurface")
    @:include("SDL2/SDL_surface.h")
    extern public static function SDL_CreateRGBSurface(flags:UInt32, width:UInt32, height:UInt32, depth:UInt32, Rmask:UInt32, Gmask:UInt32, Bmask:UInt32, Amask:UInt32):Ptr<SDL_Surface>;

    @:native("SDL_FillRect")
    @:include("SDL2/SDL_surface.h")
    extern public static function SDL_FillRect(dst:Ptr<SDL_Surface>, rect:Ptr<SDL_Rect>, color:UInt32):Int;
}