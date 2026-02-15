package sdl2;

import cxx.*;
import cxx.num.*;
import sdl2.SDL_Pixels.SDL_Color;

@:include("SDL2/SDL_ttf.h")
@:native("TTF_Font")
extern typedef TTF_Font = Int;

@:cppInclude("SDL2/SDL_ttf.h") 
@:include("SDL2/SDL_ttf.h")
extern class SDL_TTF {
    @:native("TTF_STYLE_NORMAL")
    @:include("SDL2/SDL_ttf.h")
    public static var TTF_STYLE_NORMAL:Int;

    @:native("TTF_STYLE_BOLD")
    @:include("SDL2/SDL_ttf.h")
    public static var TTF_STYLE_BOLD:Int;

    @:native("TTF_STYLE_ITALIC")
    @:include("SDL2/SDL_ttf.h")
    public static var TTF_STYLE_ITALIC:Int;

    @:native("TTF_STYLE_UNDERLINE")
    @:include("SDL2/SDL_ttf.h")
    public static var TTF_STYLE_UNDERLINE:Int;

    @:native("TTF_STYLE_STRIKETHROUGH")
    @:include("SDL2/SDL_ttf.h")
    public static var TTF_STYLE_STRIKETHROUGH:Int;

    ////////////////////////////////////////

    @:native("TTF_Init")
    @:include("SDL2/SDL_ttf.h")
    extern public static function TTF_Init():Int;

    @:native("TTF_SetFontStyle")
    @:include("SDL2/SDL_ttf.h")
    extern public static function TTF_SetFontStyle(font:Ptr<TTF_Font>, style:Int):Void;

    @:native("TTF_GetFontStyle")
    @:include("SDL2/SDL_ttf.h")
    extern public static function TTF_GetFontStyle(font:Ptr<TTF_Font>):Int;

    @:native("TTF_OpenFont")
    @:include("SDL2/SDL_ttf.h")
    extern public static function TTF_OpenFont(file:ConstCharPtr, ptsize:Int):Ptr<TTF_Font>;

    @:native("TTF_RenderText_Blended")
    @:include("SDL2/SDL_ttf.h")
    extern public static function TTF_RenderText_Blended(font:Ptr<TTF_Font>, text:ConstCharPtr, fg:SDL_Color):Ptr<SDL_Surface>;

    @:native("TTF_CloseFont")
    @:include("SDL2/SDL_ttf.h")
    extern public static function TTF_CloseFont(font:Ptr<TTF_Font>):Void;

    @:native("TTF_Quit")
    @:include("SDL2/SDL_ttf.h")
    extern public static function TTF_Quit():Void;

    @:native("TTF_GetError")
    @:include("SDL2/SDL_ttf.h")
    extern public static function TTF_GetError():ConstCharPtr;
}