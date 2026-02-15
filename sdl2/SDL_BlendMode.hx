package sdl2;

@:cppInclude("SDL2/SDL_blendmode.h") @:include("SDL2/SDL_blendmode.h")

@:cppInclude("SDL2/SDL_blendmode.h") 
@:include("SDL2/SDL_blendmode.h")
@:native("SDL_BlendMode")
extern enum SDL_BlendMode {
    @:native("SDL_BLENDMODE_NONE")
    SDL_BLENDMODE_NONE;
    @:native("SDL_BLENDMODE_BLEND")
    SDL_BLENDMODE_BLEND;
    @:native("SDL_BLENDMODE_ADD")
    SDL_BLENDMODE_ADD;
    @:native("SDL_BLENDMODE_MOD")
    SDL_BLENDMODE_MOD;
    @:native("SDL_BLENDMODE_INVALID")
    SDL_BLENDMODE_INVALID;
}
