package sdl2;

import cxx.*;
import cxx.num.*;
import sdl2.SDL_Video.SDL_Window;
import sdl2.SDL_Stdinc.SDL_bool;
import sdl2.SDL_Pixels.SDL_Color;

@:cppInclude("SDL2/SDL_render.h") @:include("SDL2/SDL_render.h")

@:cppInclude("SDL2/SDL_render.h")
@:include("SDL2/SDL_render.h")
@:native("SDL_RendererFlags")
extern enum SDL_RendererFlags {
    @:native("SDL_RENDERER_SOFTWARE")
    SDL_RENDERER_SOFTWARE;
    @:native("SDL_RENDERER_ACCELERATED")
    SDL_RENDERER_ACCELERATED;
    @:native("SDL_RENDERER_PRESENTVSYNC")
    SDL_RENDERER_PRESENTVSYNC;
    @:native("SDL_RENDERER_TARGETTEXTURE")
    SDL_RENDERER_TARGETTEXTURE;
}

@:cppInclude("SDL2/SDL_render.h")
@:include("SDL2/SDL_render.h")
@:native("SDL_RendererInfo")
extern typedef SDL_RendererInfo = {
    @:native("name")
    var name:ConstCharPtr;
    @:native("flags")
    var flags:UInt32;
    @:native("num_texture_formats")
    var num_texture_formats:UInt32;
    @:native("texture_formats")
    var texture_formats:UInt32;
    @:native("max_texture_width")
    var max_texture_width:Int;
    @:native("max_texture_height")
	var max_texture_height:Int;
}

@:cppInclude("SDL2/SDL_render.h")
@:include("SDL2/SDL_render.h")
@:native("SDL_TextureAccess")
extern enum SDL_TextureAccess {
    @:native("SDL_TEXTUREACCESS_STATIC")
    SDL_TEXTUREACCESS_STATIC;
    @:native("SDL_TEXTUREACCESS_STREAMING")
    SDL_TEXTUREACCESS_STREAMING;
    @:native("SDL_TEXTUREACCESS_TARGET")
    SDL_TEXTUREACCESS_TARGET;
}

@:cppInclude("SDL2/SDL_render.h")
@:include("SDL2/SDL_render.h")
@:native("SDL_TextureModulate")
extern enum SDL_TextureModulate {
    @:native("SDL_TEXTUREMODULATE_NONE")
    SDL_TEXTUREMODULATE_NONE;
    @:native("SDL_TEXTUREMODULATE_COLOR")
    SDL_TEXTUREMODULATE_COLOR;
    @:native("SDL_TEXTUREMODULATE_ALPHA")
    SDL_TEXTUREMODULATE_ALPHA;
}

@:cppInclude("SDL2/SDL_render.h")
@:include("SDL2/SDL_render.h")
@:native("SDL_RendererFlip")
extern enum SDL_RendererFlip {
    @:native("SDL_FLIP_NONE")
    SDL_FLIP_NONE;
    @:native("SDL_FLIP_HORIZONTAL")
    SDL_FLIP_HORIZONTAL;
    @:native("SDL_FLIP_VERTICAL")
    SDL_FLIP_VERTICAL;
}

@:cppInclude("SDL2/SDL_render.h")
@:include("SDL2/SDL_render.h")
@:native("SDL_Texture")
extern class SDL_Texture {
    @:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:cppInclude("SDL2/SDL_render.h")
@:include("SDL2/SDL_render.h")
@:native("SDL_Renderer")
extern class SDL_Renderer {
    @:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:cppInclude("SDL2/SDL_render.h")
@:include("SDL2/SDL_render.h")
@:native("SDL_Vertex")
@:valueType
extern class SDL_Vertex {
    public var position:SDL_Rect.SDL_FPoint;
    public var color:SDL_Color;
    public var tex_coord:SDL_Rect.SDL_FPoint;

    @:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:cppInclude("SDL2/SDL_render.h")
@:include("SDL2/SDL_render.h")
@:native("SDL_ScaleMode")
extern enum SDL_ScaleMode {
    @:native("SDL_ScaleModeNearest")
    SDL_ScaleModeNearest;
    @:native("SDL_ScaleModeLinear")
    SDL_ScaleModeLinear;
    @:native("SDL_ScaleModeBest")
    SDL_ScaleModeBest;
}

@:cppInclude("SDL2/SDL_render.h")
@:include("SDL2/SDL_render.h")
extern class SDL_Render {
	@:native("SDL_GetNumRenderDrivers")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_GetNumRenderDrivers():Int;

    @:native("SDL_GetRenderDriverInfo")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_GetRenderDriverInfo(index:Int, info:Ptr<SDL_RendererInfo>):Int;
    
    @:native("SDL_CreateWindowAndRenderer")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_CreateWindowAndRenderer(width:Int, height:Int, window_flags:UInt32, window:Ptr<SDL_Window>, renderer:Ptr<SDL_Renderer>):Int;

    @:native("SDL_CreateRenderer")
    @:include("SDL2/SDL_render.h")
	extern public static function SDL_CreateRenderer(window:Ptr<SDL_Window>, index:Int, flags:SDL_RendererFlags):Ptr<SDL_Renderer>;

    @:native("SDL_CreateSoftwareRenderer")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_CreateSoftwareRenderer(surface:Ptr<SDL_Surface>):Ptr<SDL_Renderer>;

    @:native("SDL_GetRenderer")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_GetRenderer(window:Ptr<SDL_Window>):Ptr<SDL_Renderer>;

    @:native("SDL_GetRendererInfo")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_GetRendererInfo(renderer:Ptr<SDL_Renderer>, info:Ptr<SDL_RendererInfo>):Int;
    
	@:native("SDL_GetRendererOutputSize")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_GetRendererOutputSize(renderer:Ptr<SDL_Renderer>, w:Ptr<Int>, h:Ptr<Int>):Int;

	@:native("SDL_CreateTexture")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_CreateTexture(renderer:Ptr<SDL_Renderer>, format:UInt32, access:SDL_TextureAccess, w:Int, h:Int):Ptr<SDL_Texture>;

	@:native("SDL_CreateTextureFromSurface")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_CreateTextureFromSurface(renderer:Ptr<SDL_Renderer>, surface:Ptr<SDL_Surface>):Ptr<SDL_Texture>;

    @:native("SDL_QueryTexture")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_QueryTexture(texture:Ptr<SDL_Texture>, format:Ptr<UInt32>, access:Ptr<Int>, w:Ptr<Int>, h:Ptr<Int>):Int;

	@:native("SDL_SetTextureColorMod")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_SetTextureColorMod(texture:Ptr<SDL_Texture>, r:UInt8, g:UInt8, b:UInt8):Int;

    @:native("SDL_GetTextureColorMod")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_GetTextureColorMod(texture:Ptr<SDL_Texture>, r:Ptr<UInt8>, g:Ptr<UInt8>, b:Ptr<UInt8>):Int;

    @:native("SDL_SetTextureAlphaMod")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_SetTextureAlphaMod(texture:Ptr<SDL_Texture>, alpha:UInt8):Int;

    @:native("SDL_GetTextureAlphaMod")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_GetTextureAlphaMod(texture:Ptr<SDL_Texture>, alpha:Ptr<UInt8>):Int;

    @:native("SDL_SetTextureBlendMode")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_SetTextureBlendMode(texture:Ptr<SDL_Texture>, blendMode:SDL_BlendMode):Int;

    @:native("SDL_SetRenderDrawBlendMode")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_SetRenderDrawBlendMode(renderer:Ptr<SDL_Renderer>, blendMode:SDL_BlendMode):Int;

    @:native("SDL_GetTextureBlendMode")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_GetTextureBlendMode(texture:Ptr<SDL_Texture>, blendMode:Ptr<SDL_BlendMode>):Int;

	@:native("SDL_UpdateTexture")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_UpdateTexture(texture:Ptr<SDL_Texture>, rect:Const<Ptr<SDL_Rect>>, pixels:Const<VoidPtr>, pitch:Int):Int;

	@:native("SDL_UpdateYUVTexture")
    @:include("SDL2/SDL_render.h")
	extern public static function SDL_UpdateYUVTexture(texture:Ptr<SDL_Texture>, rect:Const<Ptr<SDL_Rect>>, Yplane:Const<Ptr<UInt8>>, Ypitch:Int,
		Uplane:Const<Ptr<UInt8>>, Upitch:Int, Vplane:Const<Ptr<UInt8>>, Vpitch:Int):Int;

    @:native("SDL_LockTexture")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_LockTexture(texture:Ptr<SDL_Texture>, rect:Const<Ptr<SDL_Rect>>, pixels:VoidPtr, pitch:Ptr<Int>):Int;

    @:native("SDL_UnlockTexture")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_UnlockTexture(texture:Ptr<SDL_Texture>):Void;

    @:native("SDL_RenderTargetSupported")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_RenderTargetSupported(renderer:Ptr<SDL_Renderer>):Int;

    @:native("SDL_SetRenderTarget")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_SetRenderTarget(renderer:Ptr<SDL_Renderer>, texture:Ptr<SDL_Texture>):Int;

    @:native("SDL_GetRenderTarget")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_GetRenderTarget(renderer:Ptr<SDL_Renderer>):Ptr<SDL_Texture>;

	@:native("SDL_RenderSetLogicalSize")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_RenderSetLogicalSize(renderer:Ptr<SDL_Renderer>, w:Int, h:Int):Int;

	@:native("SDL_RenderGetLogicalSize")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_RenderGetLogicalSize(renderer:Ptr<SDL_Renderer>, w:Ptr<Int>, h:Ptr<Int>):Int;

	@:native("SDL_RenderSetIntegerScale")
    @:include("SDL2/SDL_render.h")
	extern public static function SDL_RenderSetIntegerScale(renderer:Ptr<SDL_Renderer>, enable:SDL_bool):Int;

	@:native("SDL_DestroyTexture")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_DestroyTexture(texture:Ptr<SDL_Texture>):Void;

	@:native("SDL_DestroyRenderer")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_DestroyRenderer(renderer:Ptr<SDL_Renderer>):Void;

	@:native("SDL_RenderCopy")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_RenderCopy(renderer:Ptr<SDL_Renderer>, texture:Ptr<SDL_Texture>, srcRect:Const<Ptr<SDL_Rect>>, dstRect:Ptr<SDL_Rect>):Int;

    @:native("SDL_RenderCopyEx")
    @:include("SDL2/SDL_render.h")
	extern public static function SDL_RenderCopyEx(renderer:Ptr<SDL_Renderer>, texture:Ptr<SDL_Texture>, srcRect:Const<Ptr<SDL_Rect>>, dstRect:Ptr<SDL_Rect>,
		angle:Float, center:Ptr<SDL_Rect.SDL_Point>, flip:SDL_RendererFlip):Int;

    @:native("SDL_RenderCopyExF")
    @:include("SDL2/SDL_render.h")
	extern public static function SDL_RenderCopyExF(renderer:Ptr<SDL_Renderer>, texture:Ptr<SDL_Texture>, srcRect:Const<Ptr<SDL_Rect>>, dstRect:Ptr<SDL_Rect.SDL_FRect>,
		angle:Float, center:Ptr<SDL_Rect.SDL_FPoint>, flip:SDL_RendererFlip):Int;

	@:native("SDL_RenderPresent")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_RenderPresent(renderer:Ptr<SDL_Renderer>):Int;

    @:native("SDL_RenderClear")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_RenderClear(renderer:Ptr<SDL_Renderer>):Int;

	@:native("SDL_SetRenderDrawColor")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_SetRenderDrawColor(renderer:Ptr<SDL_Renderer>, r:UInt8, g:UInt8, b:UInt8, a:UInt8):Int;

    @:native("SDL_RenderFillRect")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_RenderFillRect(renderer:Ptr<SDL_Renderer>, rect:Const<Ptr<SDL_Rect>>):Int;

    @:native("SDL_RenderGeometry")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_RenderGeometry(renderer:Ptr<SDL_Renderer>, texture:Ptr<SDL_Texture>, vertices:Ptr<SDL_Vertex>, num_vertices:Int, indices:Int, num_indices:Int):Int;

    @:native("SDL_SetTextureScaleMode")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_SetTextureScaleMode(texture:Ptr<SDL_Texture>, scaleMode:SDL_ScaleMode):Int;

    @:native("SDL_GetTextureScaleMode")
    @:include("SDL2/SDL_render.h")
    extern public static function SDL_GetTextureScaleMode(texture:Ptr<SDL_Texture>, blendMode:Ptr<SDL_ScaleMode>):Int;
}
