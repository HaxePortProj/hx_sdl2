package sdl2;

import cxx.*;
import cxx.num.*;

@:cppInclude("SDL2/SDL_pixels.h")
@:include("SDL2/SDL_pixels.h")

@:native("SDL_Color")
@:include("SDL2/SDL_pixels.h")
@:valueType
extern class SDL_Color {
    @:include("SDL2/SDL_pixels.h")
    extern public var r:UInt8;
    @:include("SDL2/SDL_pixels.h")
    extern public var g:UInt8;
    @:include("SDL2/SDL_pixels.h")
    extern public var b:UInt8;
    @:include("SDL2/SDL_pixels.h")
    extern public var a:UInt8;

    @:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:native("SDL_Palette")
@:include("SDL2/SDL_pixels.h")
@:valueType
extern class SDL_Palette {
    @:include("SDL2/SDL_pixels.h")
    extern public var ncolors:Int;
    @:include("SDL2/SDL_pixels.h")
    extern public var colors:Ptr<SDL_Color>;
    @:include("SDL2/SDL_pixels.h")
    extern public var version:UInt32;
    @:include("SDL2/SDL_pixels.h")
    extern public var refcount:Int;

    @:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:native("SDL_PixelFormat")
@:include("SDL2/SDL_pixels.h")
@:valueType
extern class SDL_PixelFormat {
    @:include("SDL2/SDL_pixels.h")
    public var format:UInt32;
    @:include("SDL2/SDL_pixels.h")
    public var palette:Ptr<SDL_Palette>;
    @:include("SDL2/SDL_pixels.h")
    public var BitsPerPixel:UInt8;
    @:include("SDL2/SDL_pixels.h")
    public var BytesPerPixel:UInt8;
    @:include("SDL2/SDL_pixels.h")
    public var padding:CArray<Char>;
    @:include("SDL2/SDL_pixels.h")
    public var Rmask:UInt32;
    @:include("SDL2/SDL_pixels.h")
    public var Gmask:UInt32;
    @:include("SDL2/SDL_pixels.h")
    public var Bmask:UInt32;
    @:include("SDL2/SDL_pixels.h")
    public var Amask:UInt32;
    @:include("SDL2/SDL_pixels.h")
    public var Rloss:UInt8;
    @:include("SDL2/SDL_pixels.h")
    public var Gloss:UInt8;
    @:include("SDL2/SDL_pixels.h")
    public var Bloss:UInt8;
    @:include("SDL2/SDL_pixels.h")
    public var Aloss:UInt8;
    @:include("SDL2/SDL_pixels.h")
    public var Rshift:UInt8;
    @:include("SDL2/SDL_pixels.h")
    public var Gshift:UInt8;
    @:include("SDL2/SDL_pixels.h")
    public var Bshift:UInt8;
    @:include("SDL2/SDL_pixels.h")
    public var Ashift:UInt8;
    @:include("SDL2/SDL_pixels.h")
    public var refcount:Int;
    @:include("SDL2/SDL_pixels.h")
    public var next:Ptr<SDL_PixelFormat>;

    @:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:include("SDL2/SDL_pixels.h")
extern class SDL_PixelsClass {

    @:native("SDL_PIXELFORMAT_RGBA8888")
    @:include("SDL2/SDL_pixels.h")
    extern public static var SDL_PIXELFORMAT_RGBA8888:UInt32;

    @:native("SDL_MapRGBA")
    @:include("SDL2/SDL_pixels.h")
    extern public static function SDL_MapRGBA(format:Const<Ptr<SDL_PixelFormat>>, r:UInt8, g:UInt8, b:UInt8, a:UInt8):UInt32;
}
