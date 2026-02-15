package sdl2;

import cxx.*;
import sdl2.SDL_Render.SDL_Texture;
import sdl2.SDL_Render.SDL_Renderer;

@:cppInclude("SDL2/SDL_image.h") @:include("SDL2/SDL_image.h")

@:include("SDL2/SDL_image.h")
@:native("IMG_InitFlags")
extern enum IMG_InitFlags {
    @:native("IMG_INIT_JPG")
    IMG_INIT_JPG;
    @:native("IMG_INIT_PNG")
    IMG_INIT_PNG;
    @:native("IMG_INIT_TIF")
    IMG_INIT_TIF;
    @:native("IMG_INIT_WEBP")
    IMG_INIT_WEBP;
}


@:cppInclude("SDL2/SDL_image.h") 
@:include("SDL2/SDL_image.h")
extern class SDL_Image {
    @:native("IMG_Init")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_Init(flags:IMG_InitFlags):Int;

    @:native("IMG_Quit")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_Quit():Void;

	@:native("IMG_LoadTyped_RW")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_LoadTyped_RW(src:SDL_RWops, freesrc:Int, type:ConstCharPtr):Ptr<SDL_Surface>;

    @:native("IMG_Load")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_Load(file:ConstCharPtr):Ptr<SDL_Surface>;

    @:native("IMG_Load_RW")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_Load_RW(src:Ptr<SDL_RWops>, freesrc:Int):Ptr<SDL_Surface>;

    @:native("IMG_LoadTexture")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_LoadTexture(renderer:Ptr<SDL_Renderer>, file:ConstCharPtr):Ptr<SDL_Texture>;

    @:native("IMG_LoadTexture_RW")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_LoadTexture_RW(renderer:Ptr<SDL_Renderer>, src:Ptr<SDL_RWops>, freesrc:Int):Ptr<SDL_Texture>;

    @:native("IMG_LoadTextureTyped_RW")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_LoadTextureTyped_RW(renderer:Ptr<SDL_Renderer>, src:Ptr<SDL_RWops>, freesrc:Int, type:ConstCharPtr):Ptr<SDL_Texture>;

	////////////////////////////

	@:native("IMG_isICO")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_isICO(src:SDL_RWops):Int;

    @:native("IMG_isCUR")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_isCUR(src:SDL_RWops):Int;

    @:native("IMG_isBMP")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_isBMP(src:SDL_RWops):Int;

    @:native("IMG_isGIF")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_isGIF(src:SDL_RWops):Int;

    @:native("IMG_isJPG")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_isJPG(src:SDL_RWops):Int;

    @:native("IMG_isLBM")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_isLBM(src:SDL_RWops):Int;

    @:native("IMG_isPCX")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_isPCX(src:SDL_RWops):Int;

    @:native("IMG_isPNG")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_isPNG(src:SDL_RWops):Int;

    @:native("IMG_isPNM")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_isPNM(src:SDL_RWops):Int;

	@:native("IMG_isSVG")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_isSVG(src:SDL_RWops):Int;

	@:native("IMG_isTIF")
    @:include("SDL2/SDL_image.h")
	extern public static function IMG_isTIF(src:SDL_RWops):Int;

	@:native("IMG_isXCF")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_isXCF(src:SDL_RWops):Int;

    @:native("IMG_isXPM")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_isXPM(src:SDL_RWops):Int;

    @:native("IMG_isXV")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_isXV(src:SDL_RWops):Int;

    @:native("IMG_isWEBP")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_isWEBP(src:SDL_RWops):Int;

    ////////////////////////////

	@:native("IMG_LoadICO_RW")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_LoadICO_RW(src:SDL_RWops):Ptr<SDL_Surface>;

    @:native("IMG_LoadCUR_RW")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_LoadCUR_RW(src:SDL_RWops):Ptr<SDL_Surface>;

    @:native("IMG_LoadBMP_RW")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_LoadBMP_RW(src:SDL_RWops):Ptr<SDL_Surface>;

    @:native("IMG_LoadGIF_RW")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_LoadGIF_RW(src:SDL_RWops):Ptr<SDL_Surface>;

    @:native("IMG_LoadJPG_RW")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_LoadJPG_RW(src:SDL_RWops):Ptr<SDL_Surface>;

    @:native("IMG_LoadLBM_RW")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_LoadLBM_RW(src:SDL_RWops):Ptr<SDL_Surface>;

    @:native("IMG_LoadPCX_RW")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_LoadPCX_RW(src:SDL_RWops):Ptr<SDL_Surface>;

    @:native("IMG_LoadPNG_RW")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_LoadPNG_RW(src:SDL_RWops):Ptr<SDL_Surface>;

    @:native("IMG_LoadPNM_RW")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_LoadPNM_RW(src:SDL_RWops):Ptr<SDL_Surface>;

    @:native("IMG_LoadSVG_RW")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_LoadSVG_RW(src:SDL_RWops):Ptr<SDL_Surface>;

	@:native("IMG_LoadTGA_RW")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_LoadTGA_RW(src:SDL_RWops):Ptr<SDL_Surface>;

    @:native("IMG_LoadTIF_RW")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_LoadTIF_RW(src:SDL_RWops):Ptr<SDL_Surface>;

    @:native("IMG_LoadXCF_RW")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_LoadXCF_RW(src:SDL_RWops):Ptr<SDL_Surface>;

    @:native("IMG_LoadXPM_RW")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_LoadXPM_RW(src:SDL_RWops):Ptr<SDL_Surface>;

    @:native("IMG_LoadXV_RW")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_LoadXV_RW(src:SDL_RWops):Ptr<SDL_Surface>;

    @:native("IMG_LoadWEBP_RW")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_LoadWEBP_RW(src:SDL_RWops):Ptr<SDL_Surface>;

	@:native("IMG_ReadXPMFromArray")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_ReadXPMFromArray(xpm:Ptr<ConstCharPtr>):Ptr<SDL_Surface>;

	////////////////////////////

	@:native("IMG_SavePNG")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_SavePNG(surface:Ptr<SDL_Surface>, file:ConstCharPtr):Int;

    @:native("IMG_SavePNG_RW")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_SavePNG_RW(surface:Ptr<SDL_Surface>, dst:SDL_RWops, freedst:Int):Int;

	@:native("IMG_SaveJPG")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_SaveJPG(surface:Ptr<SDL_Surface>, file:ConstCharPtr):Int;

    @:native("IMG_SaveJPG_RW")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_SaveJPG_RW(surface:Ptr<SDL_Surface>, dst:SDL_RWops, freedst:Int):Int;

	@:native("IMG_GetError")
    @:include("SDL2/SDL_image.h")
    extern public static function IMG_GetError():ConstCharPtr;
}