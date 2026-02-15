package sdl2;

@:native("SDL_AudioFormat")
@:include("SDL2/SDL_audio.h")
extern typedef SDL_AudioFormat = UInt16;

@:native("SDL_AudioDeviceID")
@:include("SDL2/SDL_audio.h")
extern typedef SDL_AudioDeviceID = UInt32;

@:native("SDL_AudioCallback")
@:include("SDL2/SDL_audio.h")
extern typedef SDL_AudioCallback = (data:VoidPtr, stream:UInt8, len:Int) -> Void;

@:native("SDL_AudioSpec")
@:include("SDL2/SDL_audio.h")
@:valueType
extern class SDL_AudioSpec {
	public var freq:Int;
	public var format:SDL_AudioFormat;
	public var channels:UInt8;
	public var silence:UInt8;
	public var samples:UInt16;
	public var padding:UInt16;
	public var size:UInt32;
	public var callback:SDL_AudioCallback;
	public var userdata:VoidPtr;

	@:haxe.warning("-WExternWithExpr")
	public function new() {}
}

@:native("SDL_AudioStatus")
@:include("SDL2/SDL_audio.h")
extern enum SDL_AudioStatus {
	@:native("SDL_AUDIO_STOPPED")
	SDL_AUDIO_STOPPED;
	@:native("SDL_AUDIO_PLAYING")
	SDL_AUDIO_PLAYING;
	@:native("SDL_AUDIO_PAUSED")
	SDL_AUDIO_PAUSED;
}

extern class SDL_Audio {
    @:native("SDL_MIX_MAXVOLUME")
    @:include("SDL2/SDL_audio.h")
	extern public static var SDL_MIX_MAXVOLUME:UInt8;

	@:native("AUDIO_S16MSB")
    @:include("SDL2/SDL_audio.h")
	extern public static var AUDIO_S16MSB:SDL_AudioFormat;

	@:native("SDL_AUDIO_ALLOW_ANY_CHANGE")
	@:include("SDL2/SDL_audio.h")
	extern public static var SDL_AUDIO_ALLOW_ANY_CHANGE:Int;

	@:native("SDL_AudioInit")
	@:include("SDL2/SDL_audio.h")
	extern public static function SDL_AudioInit(name:ConstCharPtr):Int;

	@:native("SDL_AudioQuit")
	@:include("SDL2/SDL_audio.h")
	extern public static function SDL_AudioQuit():Void;

	@:native("SDL_GetCurrentAudioDriver")
	@:include("SDL2/SDL_audio.h")
	extern public static function SDL_GetCurrentAudioDriver():ConstCharPtr;

	@:native("SDL_OpenAudio")
	@:include("SDL2/SDL_audio.h")
	extern public static function SDL_OpenAudio(desired:Ptr<SDL_AudioSpec>, obtained:Ptr<SDL_AudioSpec>):Int;

	@:native("SDL_OpenAudioDevice")
	@:include("SDL2/SDL_audio.h")
	extern public static function SDL_OpenAudioDevice(device:ConstCharPtr, iscapture:Int, desired:Ptr<SDL_AudioSpec>, obtained:Ptr<SDL_AudioSpec>,
		allowed_changes:Int):SDL_AudioDeviceID;

	@:native("SDL_PauseAudio")
	@:include("SDL2/SDL_audio.h")
	extern public static function SDL_PauseAudio(pause_on:Int):Void;

	@:native("SDL_PauseAudioDevice")
	@:include("SDL2/SDL_audio.h")
	extern public static function SDL_PauseAudioDevice(device:SDL_AudioDeviceID, pause_on:Int):Void;

	@:native("SDL_CloseAudio")
	@:include("SDL2/SDL_audio.h")
	extern public static function SDL_CloseAudio():Void;

	@:native("SDL_CloseAudioDevice")
	@:include("SDL2/SDL_audio.h")
	extern public static function SDL_CloseAudioDevice(device:SDL_AudioDeviceID):Void;

	@:native("SDL_GetAudioStatus")
	@:include("SDL2/SDL_audio.h")
	extern public static function SDL_GetAudioStatus():SDL_AudioStatus;

	@:native("SDL_GetAudioDeviceStatus")
	@:include("SDL2/SDL_audio.h")
	extern public static function SDL_GetAudioDeviceStatus(device:SDL_AudioDeviceID):SDL_AudioStatus;

	@:native("SDL_FreeWAV")
	@:include("SDL2/SDL_audio.h")
	extern public static function SDL_FreeWAV(audio_buf:Ptr<UInt8>):Void;

	@:native("SDL_LoadWAV")
	@:include("SDL2/SDL_audio.h")
	extern public static function SDL_LoadWAV(file:ConstCharPtr, spec:Ptr<SDL_AudioSpec>, audio_buf:Ptr<UInt8>, audio_len:Ptr<UInt32>):Ptr<UInt8>;

	@:native("SDL_LockAudioDevice")
	@:include("SDL2/SDL_audio.h")
	extern public static function SDL_LockAudioDevice(device:SDL_AudioDeviceID):Void;

	@:native("SDL_UnlockAudioDevice")
	@:include("SDL2/SDL_audio.h")
	extern public static function SDL_UnlockAudioDevice(device:SDL_AudioDeviceID):Void;

	@:native("SDL_QueueAudio")
	@:include("SDL2/SDL_audio.h")
	extern public static function SDL_QueueAudio(device:SDL_AudioDeviceID, audio_buf:Ptr<UInt8>, len:UInt32):Void;

	@:native("SDL_MixAudioFormat")
	@:include("SDL2/SDL_audio.h")
	extern public static function SDL_MixAudioFormat(dst:Ptr<UInt8>, src:Ptr<UInt8>, format:SDL_AudioFormat, len:UInt32, volume:UInt8):Void;
}
