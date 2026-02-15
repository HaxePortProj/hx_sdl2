package sdl2;

@:cppInclude("SDL2/SDL_mixer.h")
@:include("SDL2/SDL_mixer.h")
@:native("MIX_InitFlags")
extern enum MIX_InitFlags {
	@:native("MIX_INIT_FLAC")
	MIX_INIT_FLAC;
	@:native("MIX_INIT_MOD")
	MIX_INIT_MOD;
	@:native("MIX_INIT_MP3")
	MIX_INIT_MP3;
	@:native("MIX_INIT_OGG")
	MIX_INIT_OGG;
	@:native("MIX_INIT_MID")
	MIX_INIT_MID;
	@:native("MIX_INIT_OPUS")
	MIX_INIT_OPUS;
}

@:cppInclude("SDL2/SDL_mixer.h")
@:include("SDL2/SDL_mixer.h")
@:native("Mix_Chunk")
extern typedef Mix_Chunk = {
	@:native("allocated")
	var allocated:Int;

	@:native("abuf")
	var abuf:Ptr<UInt8>;

	@:native("alen")
	var alen:UInt32;

	@:native("volume")
	var volume:UInt8;
}

@:cppInclude("SDL2/SDL_mixer.h")
@:include("SDL2/SDL_mixer.h")
@:native("Mix_Fading")
extern enum Mix_Fading {
	@:native("MIX_NO_FADING")
	MIX_NO_FADING;
	@:native("MIX_FADING_OUT")
	MIX_FADING_OUT;
	@:native("MIX_FADING_IN")
	MIX_FADING_IN;
}

@:cppInclude("SDL2/SDL_mixer.h")
@:include("SDL2/SDL_mixer.h")
@:native("Mix_MusicType")
extern enum Mix_MusicType {
	@:native("MUS_NONE")
	MUS_NONE;
	@:native("MUS_CMD")
	MUS_CMD;
	@:native("MUS_WAV")
	MUS_WAV;
	@:native("MUS_MOD")
	MUS_MOD;
	@:native("MUS_MID")
	MUS_MID;
	@:native("MUS_OGG")
	MUS_OGG;
	@:native("MUS_MP3")
	MUS_MP3;
	@:native("MUS_FLAC")
	MUS_FLAC;
	@:native("MUS_OPUS")
	MUS_OPUS;
}

@:cppInclude("SDL2/SDL_mixer.h")
@:include("SDL2/SDL_mixer.h")
@:native("Mix_Music")
extern class Mix_Music {}

@:cppInclude("SDL2/SDL_mixer.h")
@:include("SDL2/SDL_mixer.h")
extern class SDL_Mixer {
	@:native("MIX_CHANNELS")
	@:include("SDL2/SDL_mixer.h")
	extern public static var MIX_CHANNELS:Int;

	@:native("MIX_DEFAULT_FORMAT")
	@:include("SDL2/SDL_mixer.h")
	extern public static var MIX_DEFAULT_FORMAT:Untyped;

	@:native("MIX_MAX_VOLUME")
	@:include("SDL2/SDL_mixer.h")
	extern public static var MIX_MAX_VOLUME:Int;

	@:native("Mix_Init")
	@:include("SDL2/SDL_mixer.h")
	extern public static function Mix_Init(flags:MIX_InitFlags):Int;

	@:native("Mix_Quit")
	@:include("SDL2/SDL_mixer.h")
	extern public static function Mix_Quit():Void;

	@:native("Mix_OpenAudio")
	@:include("SDL2/SDL_mixer.h")
	extern public static function Mix_OpenAudio(freq:Int, format:UInt16, channels:Int, chunksize:Int):Int;

	@:native("Mix_OpenAudioDevice")
	@:include("SDL2/SDL_mixer.h")
	extern public static function Mix_OpenAudioDevice(freq:Int, format:UInt16, channels:Int, chunksize:Int, device:ConstCharPtr, flags:Int):Int;

	@:native("Mix_QuerySpec")
	@:include("SDL2/SDL_mixer.h")
	extern public static function Mix_QuerySpec(outfreq:Ptr<Int>, format:Ptr<UInt16>, channels:Ptr<Int>):Int;

	@:native("Mix_AllocateChannels")
	@:include("SDL2/SDL_mixer.h")
	extern public static function Mix_AllocateChannels(numchannels:Int):Void;

	// @:native("Mix_LoadWAV_RW")
	// @:include("SDL2/SDL_mixer.h")
	// extern public static function Mix_LoadWAV_RW(src:SDL_RWops, freesrc:Int, out_chunk:Ptr<Mix_Chunk>):Mix_Chunk;

	@:native("Mix_LoadMUS")
	@:include("SDL2/SDL_mixer.h")
	extern public static function Mix_LoadMUS(file:ConstCharPtr):Ptr<Mix_Music>;

	@:native("Mix_LoadWAV")
	@:include("SDL2/SDL_mixer.h")
	extern public static function Mix_LoadWAV(file:ConstCharPtr):Ptr<Mix_Chunk>;

	@:native("Mix_FreeChunk")
	@:include("SDL2/SDL_mixer.h")
	extern public static function Mix_FreeChunk(chunk:Mix_Chunk):Void;

	@:native("Mix_FreeMusic")
	@:include("SDL2/SDL_mixer.h")
	extern public static function Mix_FreeMusic(music:Ptr<Mix_Music>):Void;

	@:native("Mix_PlayMusic")
	@:include("SDL2/SDL_mixer.h")
	extern public static function Mix_PlayMusic(music:Ptr<Mix_Music>, loops:Int):Int;

	@:native("Mix_GetError")
	@:include("SDL2/SDL_mixer.h")
	extern public static function Mix_GetError():ConstCharPtr;

	@:native("Mix_Volume")
	@:include("SDL2/SDL_mixer.h")
	extern public static function Mix_Volume(channel:Int, volume:Int):Void;

	@:native("Mix_VolumeChunk")
	@:include("SDL2/SDL_mixer.h")
	extern public static function Mix_VolumeChunk(chunk:Ptr<Mix_Chunk>, volume:Int):Void;

	@:native("Mix_VolumeMusic")
	@:include("SDL2/SDL_mixer.h")
	extern public static function Mix_VolumeMusic(volume:Int):Void;

	@:native("Mix_HaltChannel")
	@:include("SDL2/SDL_mixer.h")
	extern public static function Mix_HaltChannel(channel:Int):Void;

	@:native("Mix_HaltMusic")
	@:include("SDL2/SDL_mixer.h")
	extern public static function Mix_HaltMusic():Void;

	@:native("Mix_PlayChannel")
	@:include("SDL2/SDL_mixer.h")
	extern public static function Mix_PlayChannel(channel:Int, chunk:Ptr<Mix_Chunk>, loops:Int):Int;

	@:native("Mix_PlayingMusic")
	@:include("SDL2/SDL_mixer.h")
	extern public static function Mix_PlayingMusic():Int;

	@:native("Mix_PausedMusic")
	@:include("SDL2/SDL_mixer.h")
	extern public static function Mix_PausedMusic():Int;

	@:native("Mix_PauseMusic")
	@:include("SDL2/SDL_mixer.h")
	extern public static function Mix_PauseMusic():Void;

	@:native("Mix_ResumeMusic")
	@:include("SDL2/SDL_mixer.h")
	extern public static function Mix_ResumeMusic():Void;

	@:native("Mix_RewindMusic")
	@:include("SDL2/SDL_mixer.h")
	extern public static function Mix_RewindMusic():Void;

	@:native("Mix_HookMusicFinished")
	@:include("SDL2/SDL_mixer.h")
	extern public static function Mix_HookMusicFinished(onFinishedFunc:Void->VoidPtr):Void;
}
