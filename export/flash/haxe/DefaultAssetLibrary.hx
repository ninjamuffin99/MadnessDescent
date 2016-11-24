package;


import haxe.Timer;
import haxe.Unserializer;
import lime.app.Future;
import lime.app.Preloader;
import lime.app.Promise;
import lime.audio.AudioSource;
import lime.audio.openal.AL;
import lime.audio.AudioBuffer;
import lime.graphics.Image;
import lime.net.HTTPRequest;
import lime.system.CFFI;
import lime.text.Font;
import lime.utils.Bytes;
import lime.utils.UInt8Array;
import lime.Assets;

#if sys
import sys.FileSystem;
#end

#if flash
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Loader;
import flash.events.Event;
import flash.events.IOErrorEvent;
import flash.events.ProgressEvent;
import flash.media.Sound;
import flash.net.URLLoader;
import flash.net.URLRequest;
#end


class DefaultAssetLibrary extends AssetLibrary {
	
	
	public var className (default, null) = new Map <String, Dynamic> ();
	public var path (default, null) = new Map <String, String> ();
	public var type (default, null) = new Map <String, AssetType> ();
	
	private var lastModified:Float;
	private var timer:Timer;
	
	
	public function new () {
		
		super ();
		
		#if (openfl && !flash)
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_monsterrat_ttf);
		
		
		
		#end
		
		#if flash
		
		className.set ("assets/data/level0.oel", __ASSET__assets_data_level0_oel);
		type.set ("assets/data/level0.oel", AssetType.TEXT);
		className.set ("assets/data/level1.oel", __ASSET__assets_data_level1_oel);
		type.set ("assets/data/level1.oel", AssetType.TEXT);
		className.set ("assets/data/level2.oel", __ASSET__assets_data_level2_oel);
		type.set ("assets/data/level2.oel", AssetType.TEXT);
		className.set ("assets/data/level3.oel", __ASSET__assets_data_level3_oel);
		type.set ("assets/data/level3.oel", AssetType.TEXT);
		className.set ("assets/data/tilesbetter.png", __ASSET__assets_data_tilesbetter_png);
		type.set ("assets/data/tilesbetter.png", AssetType.IMAGE);
		className.set ("assets/data/tower.oep", __ASSET__assets_data_tower_oep);
		type.set ("assets/data/tower.oep", AssetType.TEXT);
		className.set ("assets/images/bg.png", __ASSET__assets_images_bg_png);
		type.set ("assets/images/bg.png", AssetType.IMAGE);
		className.set ("assets/images/credits thing.psd", __ASSET__assets_images_credits_thing_psd);
		type.set ("assets/images/credits thing.psd", AssetType.BINARY);
		className.set ("assets/images/creditstanerrandme.png", __ASSET__assets_images_creditstanerrandme_png);
		type.set ("assets/images/creditstanerrandme.png", AssetType.IMAGE);
		className.set ("assets/images/crtaniamtedmaybe.png", __ASSET__assets_images_crtaniamtedmaybe_png);
		type.set ("assets/images/crtaniamtedmaybe.png", AssetType.IMAGE);
		className.set ("assets/images/EndSlate.png", __ASSET__assets_images_endslate_png);
		type.set ("assets/images/EndSlate.png", AssetType.IMAGE);
		className.set ("assets/images/EndSlate.psd", __ASSET__assets_images_endslate_psd);
		type.set ("assets/images/EndSlate.psd", AssetType.BINARY);
		className.set ("assets/images/errorglitch.png", __ASSET__assets_images_errorglitch_png);
		type.set ("assets/images/errorglitch.png", AssetType.IMAGE);
		className.set ("assets/images/fg2.png", __ASSET__assets_images_fg2_png);
		type.set ("assets/images/fg2.png", AssetType.IMAGE);
		className.set ("assets/images/FileSelect.png", __ASSET__assets_images_fileselect_png);
		type.set ("assets/images/FileSelect.png", AssetType.IMAGE);
		className.set ("assets/images/goodenough.png", __ASSET__assets_images_goodenough_png);
		type.set ("assets/images/goodenough.png", AssetType.IMAGE);
		className.set ("assets/images/GRUNTFINALV_1.png", __ASSET__assets_images_gruntfinalv_1_png);
		type.set ("assets/images/GRUNTFINALV_1.png", AssetType.IMAGE);
		className.set ("assets/images/Madness _GRUNTGoogdv2.png", __ASSET__assets_images_madness__gruntgoogdv2_png);
		type.set ("assets/images/Madness _GRUNTGoogdv2.png", AssetType.IMAGE);
		className.set ("assets/images/Madness_Ghost.png", __ASSET__assets_images_madness_ghost_png);
		type.set ("assets/images/Madness_Ghost.png", AssetType.IMAGE);
		className.set ("assets/images/Madness_GruntBASE.png", __ASSET__assets_images_madness_gruntbase_png);
		type.set ("assets/images/Madness_GruntBASE.png", AssetType.IMAGE);
		className.set ("assets/images/noise.png", __ASSET__assets_images_noise_png);
		type.set ("assets/images/noise.png", AssetType.IMAGE);
		className.set ("assets/images/noise.psd", __ASSET__assets_images_noise_psd);
		type.set ("assets/images/noise.psd", AssetType.BINARY);
		className.set ("assets/images/Pistol.png", __ASSET__assets_images_pistol_png);
		type.set ("assets/images/Pistol.png", AssetType.IMAGE);
		className.set ("assets/images/PistolFIX.png", __ASSET__assets_images_pistolfix_png);
		type.set ("assets/images/PistolFIX.png", AssetType.IMAGE);
		className.set ("assets/images/rip.png", __ASSET__assets_images_rip_png);
		type.set ("assets/images/rip.png", AssetType.IMAGE);
		className.set ("assets/images/shitgun.png", __ASSET__assets_images_shitgun_png);
		type.set ("assets/images/shitgun.png", AssetType.IMAGE);
		className.set ("assets/music/MechDrone5.mp3", __ASSET__assets_music_mechdrone5_mp3);
		type.set ("assets/music/MechDrone5.mp3", AssetType.MUSIC);
		className.set ("assets/music/SPPOKY.mp3", __ASSET__assets_music_sppoky_mp3);
		type.set ("assets/music/SPPOKY.mp3", AssetType.MUSIC);
		className.set ("assets/music/YKOPPS.mp3", __ASSET__assets_music_ykopps_mp3);
		type.set ("assets/music/YKOPPS.mp3", AssetType.MUSIC);
		className.set ("assets/sounds/180414__jaraxe__zombie19.wav", __ASSET__assets_sounds_180414__jaraxe__zombie19_wav);
		type.set ("assets/sounds/180414__jaraxe__zombie19.wav", AssetType.SOUND);
		className.set ("assets/sounds/dial-up-modem-02.mp3", __ASSET__assets_sounds_dial_up_modem_02_mp3);
		type.set ("assets/sounds/dial-up-modem-02.mp3", AssetType.MUSIC);
		className.set ("assets/sounds/MechDrone4.mp3", __ASSET__assets_sounds_mechdrone4_mp3);
		type.set ("assets/sounds/MechDrone4.mp3", AssetType.MUSIC);
		className.set ("assets/sounds/reboot.mp3", __ASSET__assets_sounds_reboot_mp3);
		type.set ("assets/sounds/reboot.mp3", AssetType.MUSIC);
		className.set ("assets/sounds/rebootmeta.aup", __ASSET__assets_sounds_rebootmeta_aup);
		type.set ("assets/sounds/rebootmeta.aup", AssetType.TEXT);
		className.set ("assets/sounds/rebootmeta_data/e00/d00/e0000015.au", __ASSET__assets_sounds_rebootmeta_data_e00_d00_e0000015_au);
		type.set ("assets/sounds/rebootmeta_data/e00/d00/e0000015.au", AssetType.BINARY);
		className.set ("assets/sounds/rebootmeta_data/e00/d00/e0000385.au", __ASSET__assets_sounds_rebootmeta_data_e00_d00_e0000385_au);
		type.set ("assets/sounds/rebootmeta_data/e00/d00/e0000385.au", AssetType.BINARY);
		className.set ("assets/sounds/rebootmeta_data/e00/d00/e000050e.au", __ASSET__assets_sounds_rebootmeta_data_e00_d00_e000050e_au);
		type.set ("assets/sounds/rebootmeta_data/e00/d00/e000050e.au", AssetType.BINARY);
		className.set ("assets/sounds/rebootmeta_data/e00/d00/e0000520.au", __ASSET__assets_sounds_rebootmeta_data_e00_d00_e0000520_au);
		type.set ("assets/sounds/rebootmeta_data/e00/d00/e0000520.au", AssetType.TEXT);
		className.set ("assets/sounds/rebootmeta_data/e00/d00/e00005d9.au", __ASSET__assets_sounds_rebootmeta_data_e00_d00_e00005d9_au);
		type.set ("assets/sounds/rebootmeta_data/e00/d00/e00005d9.au", AssetType.TEXT);
		className.set ("assets/sounds/rebootmeta_data/e00/d00/e00006f2.au", __ASSET__assets_sounds_rebootmeta_data_e00_d00_e00006f2_au);
		type.set ("assets/sounds/rebootmeta_data/e00/d00/e00006f2.au", AssetType.TEXT);
		className.set ("assets/sounds/select.wav", __ASSET__assets_sounds_select_wav);
		type.set ("assets/sounds/select.wav", AssetType.SOUND);
		className.set ("assets/sounds/sounds-go-here.txt", __ASSET__assets_sounds_sounds_go_here_txt);
		type.set ("assets/sounds/sounds-go-here.txt", AssetType.TEXT);
		className.set ("assets/sounds/staticfix.mp3", __ASSET__assets_sounds_staticfix_mp3);
		type.set ("assets/sounds/staticfix.mp3", AssetType.MUSIC);
		className.set ("assets/sounds/Strange_Static-KP-1708174947.mp3", __ASSET__assets_sounds_strange_static_kp_1708174947_mp3);
		type.set ("assets/sounds/Strange_Static-KP-1708174947.mp3", AssetType.MUSIC);
		className.set ("assets/sounds/tvstatic.mp3", __ASSET__assets_sounds_tvstatic_mp3);
		type.set ("assets/sounds/tvstatic.mp3", AssetType.MUSIC);
		className.set ("assets/sounds/TV_Static-Mike_Koenig-1287909192.mp3", __ASSET__assets_sounds_tv_static_mike_koenig_1287909192_mp3);
		type.set ("assets/sounds/TV_Static-Mike_Koenig-1287909192.mp3", AssetType.MUSIC);
		className.set ("assets/sounds/zombie1.mp3", __ASSET__assets_sounds_zombie1_mp3);
		type.set ("assets/sounds/zombie1.mp3", AssetType.MUSIC);
		className.set ("assets/sounds/zombie2.mp3", __ASSET__assets_sounds_zombie2_mp3);
		type.set ("assets/sounds/zombie2.mp3", AssetType.MUSIC);
		className.set ("assets/sounds/zombie3.mp3", __ASSET__assets_sounds_zombie3_mp3);
		type.set ("assets/sounds/zombie3.mp3", AssetType.MUSIC);
		className.set ("flixel/sounds/beep.mp3", __ASSET__flixel_sounds_beep_mp3);
		type.set ("flixel/sounds/beep.mp3", AssetType.MUSIC);
		className.set ("flixel/sounds/flixel.mp3", __ASSET__flixel_sounds_flixel_mp3);
		type.set ("flixel/sounds/flixel.mp3", AssetType.MUSIC);
		className.set ("flixel/fonts/nokiafc22.ttf", __ASSET__flixel_fonts_nokiafc22_ttf);
		type.set ("flixel/fonts/nokiafc22.ttf", AssetType.FONT);
		className.set ("flixel/fonts/monsterrat.ttf", __ASSET__flixel_fonts_monsterrat_ttf);
		type.set ("flixel/fonts/monsterrat.ttf", AssetType.FONT);
		className.set ("flixel/images/ui/button.png", __ASSET__flixel_images_ui_button_png);
		type.set ("flixel/images/ui/button.png", AssetType.IMAGE);
		className.set ("flixel/images/logo/default.png", __ASSET__flixel_images_logo_default_png);
		type.set ("flixel/images/logo/default.png", AssetType.IMAGE);
		
		
		#elseif html5
		
		var id;
		id = "assets/data/level0.oel";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/level1.oel";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/level2.oel";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/level3.oel";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/tilesbetter.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/data/tower.oep";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/images/bg.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/credits thing.psd";
		path.set (id, id);
		
		type.set (id, AssetType.BINARY);
		id = "assets/images/creditstanerrandme.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/crtaniamtedmaybe.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/EndSlate.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/EndSlate.psd";
		path.set (id, id);
		
		type.set (id, AssetType.BINARY);
		id = "assets/images/errorglitch.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/fg2.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/FileSelect.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/goodenough.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/GRUNTFINALV_1.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/Madness _GRUNTGoogdv2.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/Madness_Ghost.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/Madness_GruntBASE.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/noise.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/noise.psd";
		path.set (id, id);
		
		type.set (id, AssetType.BINARY);
		id = "assets/images/Pistol.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/PistolFIX.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/rip.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/shitgun.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/music/MechDrone5.mp3";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		id = "assets/music/SPPOKY.mp3";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		id = "assets/music/YKOPPS.mp3";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		id = "assets/sounds/180414__jaraxe__zombie19.wav";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "assets/sounds/dial-up-modem-02.mp3";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		id = "assets/sounds/MechDrone4.mp3";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		id = "assets/sounds/reboot.mp3";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		id = "assets/sounds/rebootmeta.aup";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/sounds/rebootmeta_data/e00/d00/e0000015.au";
		path.set (id, id);
		
		type.set (id, AssetType.BINARY);
		id = "assets/sounds/rebootmeta_data/e00/d00/e0000385.au";
		path.set (id, id);
		
		type.set (id, AssetType.BINARY);
		id = "assets/sounds/rebootmeta_data/e00/d00/e000050e.au";
		path.set (id, id);
		
		type.set (id, AssetType.BINARY);
		id = "assets/sounds/rebootmeta_data/e00/d00/e0000520.au";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/sounds/rebootmeta_data/e00/d00/e00005d9.au";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/sounds/rebootmeta_data/e00/d00/e00006f2.au";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/sounds/select.wav";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "assets/sounds/sounds-go-here.txt";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/sounds/staticfix.mp3";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		id = "assets/sounds/Strange_Static-KP-1708174947.mp3";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		id = "assets/sounds/tvstatic.mp3";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		id = "assets/sounds/TV_Static-Mike_Koenig-1287909192.mp3";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		id = "assets/sounds/zombie1.mp3";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		id = "assets/sounds/zombie2.mp3";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		id = "assets/sounds/zombie3.mp3";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		id = "flixel/sounds/beep.mp3";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		id = "flixel/sounds/flixel.mp3";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		id = "flixel/fonts/nokiafc22.ttf";
		className.set (id, __ASSET__flixel_fonts_nokiafc22_ttf);
		
		type.set (id, AssetType.FONT);
		id = "flixel/fonts/monsterrat.ttf";
		className.set (id, __ASSET__flixel_fonts_monsterrat_ttf);
		
		type.set (id, AssetType.FONT);
		id = "flixel/images/ui/button.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/images/logo/default.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		
		
		var assetsPrefix = null;
		if (ApplicationMain.config != null && Reflect.hasField (ApplicationMain.config, "assetsPrefix")) {
			assetsPrefix = ApplicationMain.config.assetsPrefix;
		}
		if (assetsPrefix != null) {
			for (k in path.keys()) {
				path.set(k, assetsPrefix + path[k]);
			}
		}
		
		#else
		
		#if (windows || mac || linux)
		
		var useManifest = false;
		
		className.set ("assets/data/level0.oel", __ASSET__assets_data_level0_oel);
		type.set ("assets/data/level0.oel", AssetType.TEXT);
		
		className.set ("assets/data/level1.oel", __ASSET__assets_data_level1_oel);
		type.set ("assets/data/level1.oel", AssetType.TEXT);
		
		className.set ("assets/data/level2.oel", __ASSET__assets_data_level2_oel);
		type.set ("assets/data/level2.oel", AssetType.TEXT);
		
		className.set ("assets/data/level3.oel", __ASSET__assets_data_level3_oel);
		type.set ("assets/data/level3.oel", AssetType.TEXT);
		
		className.set ("assets/data/tilesbetter.png", __ASSET__assets_data_tilesbetter_png);
		type.set ("assets/data/tilesbetter.png", AssetType.IMAGE);
		
		className.set ("assets/data/tower.oep", __ASSET__assets_data_tower_oep);
		type.set ("assets/data/tower.oep", AssetType.TEXT);
		
		className.set ("assets/images/bg.png", __ASSET__assets_images_bg_png);
		type.set ("assets/images/bg.png", AssetType.IMAGE);
		
		className.set ("assets/images/credits thing.psd", __ASSET__assets_images_credits_thing_psd);
		type.set ("assets/images/credits thing.psd", AssetType.BINARY);
		
		className.set ("assets/images/creditstanerrandme.png", __ASSET__assets_images_creditstanerrandme_png);
		type.set ("assets/images/creditstanerrandme.png", AssetType.IMAGE);
		
		className.set ("assets/images/crtaniamtedmaybe.png", __ASSET__assets_images_crtaniamtedmaybe_png);
		type.set ("assets/images/crtaniamtedmaybe.png", AssetType.IMAGE);
		
		className.set ("assets/images/EndSlate.png", __ASSET__assets_images_endslate_png);
		type.set ("assets/images/EndSlate.png", AssetType.IMAGE);
		
		className.set ("assets/images/EndSlate.psd", __ASSET__assets_images_endslate_psd);
		type.set ("assets/images/EndSlate.psd", AssetType.BINARY);
		
		className.set ("assets/images/errorglitch.png", __ASSET__assets_images_errorglitch_png);
		type.set ("assets/images/errorglitch.png", AssetType.IMAGE);
		
		className.set ("assets/images/fg2.png", __ASSET__assets_images_fg2_png);
		type.set ("assets/images/fg2.png", AssetType.IMAGE);
		
		className.set ("assets/images/FileSelect.png", __ASSET__assets_images_fileselect_png);
		type.set ("assets/images/FileSelect.png", AssetType.IMAGE);
		
		className.set ("assets/images/goodenough.png", __ASSET__assets_images_goodenough_png);
		type.set ("assets/images/goodenough.png", AssetType.IMAGE);
		
		className.set ("assets/images/GRUNTFINALV_1.png", __ASSET__assets_images_gruntfinalv_1_png);
		type.set ("assets/images/GRUNTFINALV_1.png", AssetType.IMAGE);
		
		className.set ("assets/images/Madness _GRUNTGoogdv2.png", __ASSET__assets_images_madness__gruntgoogdv2_png);
		type.set ("assets/images/Madness _GRUNTGoogdv2.png", AssetType.IMAGE);
		
		className.set ("assets/images/Madness_Ghost.png", __ASSET__assets_images_madness_ghost_png);
		type.set ("assets/images/Madness_Ghost.png", AssetType.IMAGE);
		
		className.set ("assets/images/Madness_GruntBASE.png", __ASSET__assets_images_madness_gruntbase_png);
		type.set ("assets/images/Madness_GruntBASE.png", AssetType.IMAGE);
		
		className.set ("assets/images/noise.png", __ASSET__assets_images_noise_png);
		type.set ("assets/images/noise.png", AssetType.IMAGE);
		
		className.set ("assets/images/noise.psd", __ASSET__assets_images_noise_psd);
		type.set ("assets/images/noise.psd", AssetType.BINARY);
		
		className.set ("assets/images/Pistol.png", __ASSET__assets_images_pistol_png);
		type.set ("assets/images/Pistol.png", AssetType.IMAGE);
		
		className.set ("assets/images/PistolFIX.png", __ASSET__assets_images_pistolfix_png);
		type.set ("assets/images/PistolFIX.png", AssetType.IMAGE);
		
		className.set ("assets/images/rip.png", __ASSET__assets_images_rip_png);
		type.set ("assets/images/rip.png", AssetType.IMAGE);
		
		className.set ("assets/images/shitgun.png", __ASSET__assets_images_shitgun_png);
		type.set ("assets/images/shitgun.png", AssetType.IMAGE);
		
		className.set ("assets/music/MechDrone5.mp3", __ASSET__assets_music_mechdrone5_mp3);
		type.set ("assets/music/MechDrone5.mp3", AssetType.MUSIC);
		
		className.set ("assets/music/SPPOKY.mp3", __ASSET__assets_music_sppoky_mp3);
		type.set ("assets/music/SPPOKY.mp3", AssetType.MUSIC);
		
		className.set ("assets/music/YKOPPS.mp3", __ASSET__assets_music_ykopps_mp3);
		type.set ("assets/music/YKOPPS.mp3", AssetType.MUSIC);
		
		className.set ("assets/sounds/180414__jaraxe__zombie19.wav", __ASSET__assets_sounds_180414__jaraxe__zombie19_wav);
		type.set ("assets/sounds/180414__jaraxe__zombie19.wav", AssetType.SOUND);
		
		className.set ("assets/sounds/dial-up-modem-02.mp3", __ASSET__assets_sounds_dial_up_modem_02_mp3);
		type.set ("assets/sounds/dial-up-modem-02.mp3", AssetType.MUSIC);
		
		className.set ("assets/sounds/MechDrone4.mp3", __ASSET__assets_sounds_mechdrone4_mp3);
		type.set ("assets/sounds/MechDrone4.mp3", AssetType.MUSIC);
		
		className.set ("assets/sounds/reboot.mp3", __ASSET__assets_sounds_reboot_mp3);
		type.set ("assets/sounds/reboot.mp3", AssetType.MUSIC);
		
		className.set ("assets/sounds/rebootmeta.aup", __ASSET__assets_sounds_rebootmeta_aup);
		type.set ("assets/sounds/rebootmeta.aup", AssetType.TEXT);
		
		className.set ("assets/sounds/rebootmeta_data/e00/d00/e0000015.au", __ASSET__assets_sounds_rebootmeta_data_e00_d00_e0000015_au);
		type.set ("assets/sounds/rebootmeta_data/e00/d00/e0000015.au", AssetType.BINARY);
		
		className.set ("assets/sounds/rebootmeta_data/e00/d00/e0000385.au", __ASSET__assets_sounds_rebootmeta_data_e00_d00_e0000385_au);
		type.set ("assets/sounds/rebootmeta_data/e00/d00/e0000385.au", AssetType.BINARY);
		
		className.set ("assets/sounds/rebootmeta_data/e00/d00/e000050e.au", __ASSET__assets_sounds_rebootmeta_data_e00_d00_e000050e_au);
		type.set ("assets/sounds/rebootmeta_data/e00/d00/e000050e.au", AssetType.BINARY);
		
		className.set ("assets/sounds/rebootmeta_data/e00/d00/e0000520.au", __ASSET__assets_sounds_rebootmeta_data_e00_d00_e0000520_au);
		type.set ("assets/sounds/rebootmeta_data/e00/d00/e0000520.au", AssetType.TEXT);
		
		className.set ("assets/sounds/rebootmeta_data/e00/d00/e00005d9.au", __ASSET__assets_sounds_rebootmeta_data_e00_d00_e00005d9_au);
		type.set ("assets/sounds/rebootmeta_data/e00/d00/e00005d9.au", AssetType.TEXT);
		
		className.set ("assets/sounds/rebootmeta_data/e00/d00/e00006f2.au", __ASSET__assets_sounds_rebootmeta_data_e00_d00_e00006f2_au);
		type.set ("assets/sounds/rebootmeta_data/e00/d00/e00006f2.au", AssetType.TEXT);
		
		className.set ("assets/sounds/select.wav", __ASSET__assets_sounds_select_wav);
		type.set ("assets/sounds/select.wav", AssetType.SOUND);
		
		className.set ("assets/sounds/sounds-go-here.txt", __ASSET__assets_sounds_sounds_go_here_txt);
		type.set ("assets/sounds/sounds-go-here.txt", AssetType.TEXT);
		
		className.set ("assets/sounds/staticfix.mp3", __ASSET__assets_sounds_staticfix_mp3);
		type.set ("assets/sounds/staticfix.mp3", AssetType.MUSIC);
		
		className.set ("assets/sounds/Strange_Static-KP-1708174947.mp3", __ASSET__assets_sounds_strange_static_kp_1708174947_mp3);
		type.set ("assets/sounds/Strange_Static-KP-1708174947.mp3", AssetType.MUSIC);
		
		className.set ("assets/sounds/tvstatic.mp3", __ASSET__assets_sounds_tvstatic_mp3);
		type.set ("assets/sounds/tvstatic.mp3", AssetType.MUSIC);
		
		className.set ("assets/sounds/TV_Static-Mike_Koenig-1287909192.mp3", __ASSET__assets_sounds_tv_static_mike_koenig_1287909192_mp3);
		type.set ("assets/sounds/TV_Static-Mike_Koenig-1287909192.mp3", AssetType.MUSIC);
		
		className.set ("assets/sounds/zombie1.mp3", __ASSET__assets_sounds_zombie1_mp3);
		type.set ("assets/sounds/zombie1.mp3", AssetType.MUSIC);
		
		className.set ("assets/sounds/zombie2.mp3", __ASSET__assets_sounds_zombie2_mp3);
		type.set ("assets/sounds/zombie2.mp3", AssetType.MUSIC);
		
		className.set ("assets/sounds/zombie3.mp3", __ASSET__assets_sounds_zombie3_mp3);
		type.set ("assets/sounds/zombie3.mp3", AssetType.MUSIC);
		
		className.set ("flixel/sounds/beep.mp3", __ASSET__flixel_sounds_beep_mp3);
		type.set ("flixel/sounds/beep.mp3", AssetType.MUSIC);
		
		className.set ("flixel/sounds/flixel.mp3", __ASSET__flixel_sounds_flixel_mp3);
		type.set ("flixel/sounds/flixel.mp3", AssetType.MUSIC);
		
		className.set ("flixel/fonts/nokiafc22.ttf", __ASSET__flixel_fonts_nokiafc22_ttf);
		type.set ("flixel/fonts/nokiafc22.ttf", AssetType.FONT);
		
		className.set ("flixel/fonts/monsterrat.ttf", __ASSET__flixel_fonts_monsterrat_ttf);
		type.set ("flixel/fonts/monsterrat.ttf", AssetType.FONT);
		
		className.set ("flixel/images/ui/button.png", __ASSET__flixel_images_ui_button_png);
		type.set ("flixel/images/ui/button.png", AssetType.IMAGE);
		
		className.set ("flixel/images/logo/default.png", __ASSET__flixel_images_logo_default_png);
		type.set ("flixel/images/logo/default.png", AssetType.IMAGE);
		
		
		if (useManifest) {
			
			loadManifest ();
			
			if (Sys.args ().indexOf ("-livereload") > -1) {
				
				var path = FileSystem.fullPath ("manifest");
				lastModified = FileSystem.stat (path).mtime.getTime ();
				
				timer = new Timer (2000);
				timer.run = function () {
					
					var modified = FileSystem.stat (path).mtime.getTime ();
					
					if (modified > lastModified) {
						
						lastModified = modified;
						loadManifest ();
						
						onChange.dispatch ();
						
					}
					
				}
				
			}
			
		}
		
		#else
		
		loadManifest ();
		
		#end
		#end
		
	}
	
	
	public override function exists (id:String, type:String):Bool {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		var assetType = this.type.get (id);
		
		if (assetType != null) {
			
			if (assetType == requestedType || ((requestedType == SOUND || requestedType == MUSIC) && (assetType == MUSIC || assetType == SOUND))) {
				
				return true;
				
			}
			
			#if flash
			
			if (requestedType == BINARY && (assetType == BINARY || assetType == TEXT || assetType == IMAGE)) {
				
				return true;
				
			} else if (requestedType == TEXT && assetType == BINARY) {
				
				return true;
				
			} else if (requestedType == null || path.exists (id)) {
				
				return true;
				
			}
			
			#else
			
			if (requestedType == BINARY || requestedType == null || (assetType == BINARY && requestedType == TEXT)) {
				
				return true;
				
			}
			
			#end
			
		}
		
		return false;
		
	}
	
	
	public override function getAudioBuffer (id:String):AudioBuffer {
		
		#if flash
		
		var buffer = new AudioBuffer ();
		buffer.src = cast (Type.createInstance (className.get (id), []), Sound);
		return buffer;
		
		#elseif html5
		
		return null;
		//return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		if (className.exists(id)) return AudioBuffer.fromBytes (cast (Type.createInstance (className.get (id), []), Bytes));
		else return AudioBuffer.fromFile (path.get (id));
		
		#end
		
	}
	
	
	public override function getBytes (id:String):Bytes {
		
		#if flash
		
		switch (type.get (id)) {
			
			case TEXT, BINARY:
				
				return Bytes.ofData (cast (Type.createInstance (className.get (id), []), flash.utils.ByteArray));
			
			case IMAGE:
				
				var bitmapData = cast (Type.createInstance (className.get (id), []), BitmapData);
				return Bytes.ofData (bitmapData.getPixels (bitmapData.rect));
			
			default:
				
				return null;
			
		}
		
		return cast (Type.createInstance (className.get (id), []), Bytes);
		
		#elseif html5
		
		var loader = Preloader.loaders.get (path.get (id));
		
		if (loader == null) {
			
			return null;
			
		}
		
		var bytes = loader.bytes;
		
		if (bytes != null) {
			
			return bytes;
			
		} else {
			
			return null;
		}
		
		#else
		
		if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), Bytes);
		else return Bytes.readFile (path.get (id));
		
		#end
		
	}
	
	
	public override function getFont (id:String):Font {
		
		#if flash
		
		var src = Type.createInstance (className.get (id), []);
		
		var font = new Font (src.fontName);
		font.src = src;
		return font;
		
		#elseif html5
		
		return cast (Type.createInstance (className.get (id), []), Font);
		
		#else
		
		if (className.exists (id)) {
			
			var fontClass = className.get (id);
			return cast (Type.createInstance (fontClass, []), Font);
			
		} else {
			
			return Font.fromFile (path.get (id));
			
		}
		
		#end
		
	}
	
	
	public override function getImage (id:String):Image {
		
		#if flash
		
		return Image.fromBitmapData (cast (Type.createInstance (className.get (id), []), BitmapData));
		
		#elseif html5
		
		return Image.fromImageElement (Preloader.images.get (path.get (id)));
		
		#else
		
		if (className.exists (id)) {
			
			var fontClass = className.get (id);
			return cast (Type.createInstance (fontClass, []), Image);
			
		} else {
			
			return Image.fromFile (path.get (id));
			
		}
		
		#end
		
	}
	
	
	/*public override function getMusic (id:String):Dynamic {
		
		#if flash
		
		return cast (Type.createInstance (className.get (id), []), Sound);
		
		#elseif openfl_html5
		
		//var sound = new Sound ();
		//sound.__buffer = true;
		//sound.load (new URLRequest (path.get (id)));
		//return sound;
		return null;
		
		#elseif html5
		
		return null;
		//return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		return null;
		//if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), Sound);
		//else return new Sound (new URLRequest (path.get (id)), null, true);
		
		#end
		
	}*/
	
	
	public override function getPath (id:String):String {
		
		//#if ios
		
		//return SystemPath.applicationDirectory + "/assets/" + path.get (id);
		
		//#else
		
		return path.get (id);
		
		//#end
		
	}
	
	
	public override function getText (id:String):String {
		
		#if html5
		
		var loader = Preloader.loaders.get (path.get (id));
		
		if (loader == null) {
			
			return null;
			
		}
		
		var bytes = loader.bytes;
		
		if (bytes != null) {
			
			return bytes.getString (0, bytes.length);
			
		} else {
			
			return null;
		}
		
		#else
		
		var bytes = getBytes (id);
		
		if (bytes == null) {
			
			return null;
			
		} else {
			
			return bytes.getString (0, bytes.length);
			
		}
		
		#end
		
	}
	
	
	public override function isLocal (id:String, type:String):Bool {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		
		#if flash
		
		//if (requestedType != AssetType.MUSIC && requestedType != AssetType.SOUND) {
			
			return className.exists (id);
			
		//}
		
		#end
		
		return true;
		
	}
	
	
	public override function list (type:String):Array<String> {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		var items = [];
		
		for (id in this.type.keys ()) {
			
			if (requestedType == null || exists (id, type)) {
				
				items.push (id);
				
			}
			
		}
		
		return items;
		
	}
	
	
	public override function loadAudioBuffer (id:String):Future<AudioBuffer> {
		
		var promise = new Promise<AudioBuffer> ();
		
		#if (flash)
		
		if (path.exists (id)) {
			
			var soundLoader = new Sound ();
			soundLoader.addEventListener (Event.COMPLETE, function (event) {
				
				var audioBuffer:AudioBuffer = new AudioBuffer();
				audioBuffer.src = event.currentTarget;
				promise.complete (audioBuffer);
				
			});
			soundLoader.addEventListener (ProgressEvent.PROGRESS, function (event) {
				
				if (event.bytesTotal == 0) {
					
					promise.progress (0);
					
				} else {
					
					promise.progress (event.bytesLoaded / event.bytesTotal);
					
				}
				
			});
			soundLoader.addEventListener (IOErrorEvent.IO_ERROR, promise.error);
			soundLoader.load (new URLRequest (path.get (id)));
			
		} else {
			
			promise.complete (getAudioBuffer (id));
			
		}
		
		#else
		
		promise.completeWith (new Future<AudioBuffer> (function () return getAudioBuffer (id)));
		
		#end
		
		return promise.future;
		
	}
	
	
	public override function loadBytes (id:String):Future<Bytes> {
		
		var promise = new Promise<Bytes> ();
		
		#if flash
		
		if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.dataFormat = flash.net.URLLoaderDataFormat.BINARY;
			loader.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bytes = Bytes.ofData (event.currentTarget.data);
				promise.complete (bytes);
				
			});
			loader.addEventListener (ProgressEvent.PROGRESS, function (event) {
				
				if (event.bytesTotal == 0) {
					
					promise.progress (0);
					
				} else {
					
					promise.progress (event.bytesLoaded / event.bytesTotal);
					
				}
				
			});
			loader.addEventListener (IOErrorEvent.IO_ERROR, promise.error);
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			promise.complete (getBytes (id));
			
		}
		
		#elseif html5
		
		if (path.exists (id)) {
			
			var request = new HTTPRequest ();
			promise.completeWith (request.load (path.get (id) + "?" + Assets.cache.version));
			
		} else {
			
			promise.complete (getBytes (id));
			
		}
		
		#else
		
		promise.completeWith (new Future<Bytes> (function () return getBytes (id)));
		
		#end
		
		return promise.future;
		
	}
	
	
	public override function loadImage (id:String):Future<Image> {
		
		var promise = new Promise<Image> ();
		
		#if flash
		
		if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bitmapData = cast (event.currentTarget.content, Bitmap).bitmapData;
				promise.complete (Image.fromBitmapData (bitmapData));
				
			});
			loader.contentLoaderInfo.addEventListener (ProgressEvent.PROGRESS, function (event) {
				
				if (event.bytesTotal == 0) {
					
					promise.progress (0);
					
				} else {
					
					promise.progress (event.bytesLoaded / event.bytesTotal);
					
				}
				
			});
			loader.contentLoaderInfo.addEventListener (IOErrorEvent.IO_ERROR, promise.error);
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			promise.complete (getImage (id));
			
		}
		
		#elseif html5
		
		if (path.exists (id)) {
			
			var image = new js.html.Image ();
			image.onload = function (_):Void {
				
				promise.complete (Image.fromImageElement (image));
				
			}
			image.onerror = promise.error;
			image.src = path.get (id) + "?" + Assets.cache.version;
			
		} else {
			
			promise.complete (getImage (id));
			
		}
		
		#else
		
		promise.completeWith (new Future<Image> (function () return getImage (id)));
		
		#end
		
		return promise.future;
		
	}
	
	
	#if (!flash && !html5)
	private function loadManifest ():Void {
		
		try {
			
			#if blackberry
			var bytes = Bytes.readFile ("app/native/manifest");
			#elseif tizen
			var bytes = Bytes.readFile ("../res/manifest");
			#elseif emscripten
			var bytes = Bytes.readFile ("assets/manifest");
			#elseif (mac && java)
			var bytes = Bytes.readFile ("../Resources/manifest");
			#elseif (ios || tvos)
			var bytes = Bytes.readFile ("assets/manifest");
			#else
			var bytes = Bytes.readFile ("manifest");
			#end
			
			if (bytes != null) {
				
				if (bytes.length > 0) {
					
					var data = bytes.getString (0, bytes.length);
					
					if (data != null && data.length > 0) {
						
						var manifest:Array<Dynamic> = Unserializer.run (data);
						
						for (asset in manifest) {
							
							if (!className.exists (asset.id)) {
								
								#if (ios || tvos)
								path.set (asset.id, "assets/" + asset.path);
								#else
								path.set (asset.id, asset.path);
								#end
								type.set (asset.id, cast (asset.type, AssetType));
								
							}
							
						}
						
					}
					
				}
				
			} else {
				
				trace ("Warning: Could not load asset manifest (bytes was null)");
				
			}
		
		} catch (e:Dynamic) {
			
			trace ('Warning: Could not load asset manifest (${e})');
			
		}
		
	}
	#end
	
	
	public override function loadText (id:String):Future<String> {
		
		var promise = new Promise<String> ();
		
		#if html5
		
		if (path.exists (id)) {
			
			var request = new HTTPRequest ();
			var future = request.load (path.get (id) + "?" + Assets.cache.version);
			future.onProgress (function (progress) promise.progress (progress));
			future.onError (function (msg) promise.error (msg));
			future.onComplete (function (bytes) promise.complete (bytes.getString (0, bytes.length)));
			
		} else {
			
			promise.complete (getText (id));
			
		}
		
		#else
		
		promise.completeWith (loadBytes (id).then (function (bytes) {
			
			return new Future<String> (function () {
				
				if (bytes == null) {
					
					return null;
					
				} else {
					
					return bytes.getString (0, bytes.length);
					
				}
				
			});
			
		}));
		
		#end
		
		return promise.future;
		
	}
	
	
}


#if !display
#if flash

@:keep @:bind #if display private #end class __ASSET__assets_data_level0_oel extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_data_level1_oel extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_data_level2_oel extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_data_level3_oel extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_data_tilesbetter_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_data_tower_oep extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_images_bg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_credits_thing_psd extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_images_creditstanerrandme_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_crtaniamtedmaybe_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_endslate_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_endslate_psd extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_images_errorglitch_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_fg2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_fileselect_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_goodenough_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_gruntfinalv_1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_madness__gruntgoogdv2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_madness_ghost_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_madness_gruntbase_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_noise_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_noise_psd extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_images_pistol_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_pistolfix_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_rip_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_shitgun_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_music_mechdrone5_mp3 extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_music_sppoky_mp3 extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_music_ykopps_mp3 extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_180414__jaraxe__zombie19_wav extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_dial_up_modem_02_mp3 extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_mechdrone4_mp3 extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_reboot_mp3 extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_rebootmeta_aup extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_rebootmeta_data_e00_d00_e0000015_au extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_rebootmeta_data_e00_d00_e0000385_au extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_rebootmeta_data_e00_d00_e000050e_au extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_rebootmeta_data_e00_d00_e0000520_au extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_rebootmeta_data_e00_d00_e00005d9_au extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_rebootmeta_data_e00_d00_e00006f2_au extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_select_wav extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_sounds_go_here_txt extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_staticfix_mp3 extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_strange_static_kp_1708174947_mp3 extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_tvstatic_mp3 extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_tv_static_mike_koenig_1287909192_mp3 extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_zombie1_mp3 extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_zombie2_mp3 extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_zombie3_mp3 extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends flash.text.Font { }
@:keep @:bind #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends flash.text.Font { }
@:keep @:bind #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }


#elseif html5




















































@:keep #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { super (); name = "Nokia Cellphone FC Small"; } } 
@:keep #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { super (); name = "Monsterrat"; } } 




#else



#if (windows || mac || linux || cpp)


@:file("assets/data/level0.oel") #if display private #end class __ASSET__assets_data_level0_oel extends lime.utils.Bytes {}
@:file("assets/data/level1.oel") #if display private #end class __ASSET__assets_data_level1_oel extends lime.utils.Bytes {}
@:file("assets/data/level2.oel") #if display private #end class __ASSET__assets_data_level2_oel extends lime.utils.Bytes {}
@:file("assets/data/level3.oel") #if display private #end class __ASSET__assets_data_level3_oel extends lime.utils.Bytes {}
@:image("assets/data/tilesbetter.png") #if display private #end class __ASSET__assets_data_tilesbetter_png extends lime.graphics.Image {}
@:file("assets/data/tower.oep") #if display private #end class __ASSET__assets_data_tower_oep extends lime.utils.Bytes {}
@:image("assets/images/bg.png") #if display private #end class __ASSET__assets_images_bg_png extends lime.graphics.Image {}
@:file("assets/images/credits thing.psd") #if display private #end class __ASSET__assets_images_credits_thing_psd extends lime.utils.Bytes {}
@:image("assets/images/creditstanerrandme.png") #if display private #end class __ASSET__assets_images_creditstanerrandme_png extends lime.graphics.Image {}
@:image("assets/images/crtaniamtedmaybe.png") #if display private #end class __ASSET__assets_images_crtaniamtedmaybe_png extends lime.graphics.Image {}
@:image("assets/images/EndSlate.png") #if display private #end class __ASSET__assets_images_endslate_png extends lime.graphics.Image {}
@:file("assets/images/EndSlate.psd") #if display private #end class __ASSET__assets_images_endslate_psd extends lime.utils.Bytes {}
@:image("assets/images/errorglitch.png") #if display private #end class __ASSET__assets_images_errorglitch_png extends lime.graphics.Image {}
@:image("assets/images/fg2.png") #if display private #end class __ASSET__assets_images_fg2_png extends lime.graphics.Image {}
@:image("assets/images/FileSelect.png") #if display private #end class __ASSET__assets_images_fileselect_png extends lime.graphics.Image {}
@:image("assets/images/goodenough.png") #if display private #end class __ASSET__assets_images_goodenough_png extends lime.graphics.Image {}
@:image("assets/images/GRUNTFINALV_1.png") #if display private #end class __ASSET__assets_images_gruntfinalv_1_png extends lime.graphics.Image {}
@:image("assets/images/Madness _GRUNTGoogdv2.png") #if display private #end class __ASSET__assets_images_madness__gruntgoogdv2_png extends lime.graphics.Image {}
@:image("assets/images/Madness_Ghost.png") #if display private #end class __ASSET__assets_images_madness_ghost_png extends lime.graphics.Image {}
@:image("assets/images/Madness_GruntBASE.png") #if display private #end class __ASSET__assets_images_madness_gruntbase_png extends lime.graphics.Image {}
@:image("assets/images/noise.png") #if display private #end class __ASSET__assets_images_noise_png extends lime.graphics.Image {}
@:file("assets/images/noise.psd") #if display private #end class __ASSET__assets_images_noise_psd extends lime.utils.Bytes {}
@:image("assets/images/Pistol.png") #if display private #end class __ASSET__assets_images_pistol_png extends lime.graphics.Image {}
@:image("assets/images/PistolFIX.png") #if display private #end class __ASSET__assets_images_pistolfix_png extends lime.graphics.Image {}
@:image("assets/images/rip.png") #if display private #end class __ASSET__assets_images_rip_png extends lime.graphics.Image {}
@:image("assets/images/shitgun.png") #if display private #end class __ASSET__assets_images_shitgun_png extends lime.graphics.Image {}
@:file("assets/music/MechDrone5.mp3") #if display private #end class __ASSET__assets_music_mechdrone5_mp3 extends lime.utils.Bytes {}
@:file("assets/music/SPPOKY.mp3") #if display private #end class __ASSET__assets_music_sppoky_mp3 extends lime.utils.Bytes {}
@:file("assets/music/YKOPPS.mp3") #if display private #end class __ASSET__assets_music_ykopps_mp3 extends lime.utils.Bytes {}
@:file("assets/sounds/180414__jaraxe__zombie19.wav") #if display private #end class __ASSET__assets_sounds_180414__jaraxe__zombie19_wav extends lime.utils.Bytes {}
@:file("assets/sounds/dial-up-modem-02.mp3") #if display private #end class __ASSET__assets_sounds_dial_up_modem_02_mp3 extends lime.utils.Bytes {}
@:file("assets/sounds/MechDrone4.mp3") #if display private #end class __ASSET__assets_sounds_mechdrone4_mp3 extends lime.utils.Bytes {}
@:file("assets/sounds/reboot.mp3") #if display private #end class __ASSET__assets_sounds_reboot_mp3 extends lime.utils.Bytes {}
@:file("assets/sounds/rebootmeta.aup") #if display private #end class __ASSET__assets_sounds_rebootmeta_aup extends lime.utils.Bytes {}
@:file("assets/sounds/rebootmeta_data/e00/d00/e0000015.au") #if display private #end class __ASSET__assets_sounds_rebootmeta_data_e00_d00_e0000015_au extends lime.utils.Bytes {}
@:file("assets/sounds/rebootmeta_data/e00/d00/e0000385.au") #if display private #end class __ASSET__assets_sounds_rebootmeta_data_e00_d00_e0000385_au extends lime.utils.Bytes {}
@:file("assets/sounds/rebootmeta_data/e00/d00/e000050e.au") #if display private #end class __ASSET__assets_sounds_rebootmeta_data_e00_d00_e000050e_au extends lime.utils.Bytes {}
@:file("assets/sounds/rebootmeta_data/e00/d00/e0000520.au") #if display private #end class __ASSET__assets_sounds_rebootmeta_data_e00_d00_e0000520_au extends lime.utils.Bytes {}
@:file("assets/sounds/rebootmeta_data/e00/d00/e00005d9.au") #if display private #end class __ASSET__assets_sounds_rebootmeta_data_e00_d00_e00005d9_au extends lime.utils.Bytes {}
@:file("assets/sounds/rebootmeta_data/e00/d00/e00006f2.au") #if display private #end class __ASSET__assets_sounds_rebootmeta_data_e00_d00_e00006f2_au extends lime.utils.Bytes {}
@:file("assets/sounds/select.wav") #if display private #end class __ASSET__assets_sounds_select_wav extends lime.utils.Bytes {}
@:file("assets/sounds/sounds-go-here.txt") #if display private #end class __ASSET__assets_sounds_sounds_go_here_txt extends lime.utils.Bytes {}
@:file("assets/sounds/staticfix.mp3") #if display private #end class __ASSET__assets_sounds_staticfix_mp3 extends lime.utils.Bytes {}
@:file("assets/sounds/Strange_Static-KP-1708174947.mp3") #if display private #end class __ASSET__assets_sounds_strange_static_kp_1708174947_mp3 extends lime.utils.Bytes {}
@:file("assets/sounds/tvstatic.mp3") #if display private #end class __ASSET__assets_sounds_tvstatic_mp3 extends lime.utils.Bytes {}
@:file("assets/sounds/TV_Static-Mike_Koenig-1287909192.mp3") #if display private #end class __ASSET__assets_sounds_tv_static_mike_koenig_1287909192_mp3 extends lime.utils.Bytes {}
@:file("assets/sounds/zombie1.mp3") #if display private #end class __ASSET__assets_sounds_zombie1_mp3 extends lime.utils.Bytes {}
@:file("assets/sounds/zombie2.mp3") #if display private #end class __ASSET__assets_sounds_zombie2_mp3 extends lime.utils.Bytes {}
@:file("assets/sounds/zombie3.mp3") #if display private #end class __ASSET__assets_sounds_zombie3_mp3 extends lime.utils.Bytes {}
@:file("C:/HaxeToolkit/haxe/lib/flixel/4,2,0/assets/sounds/beep.mp3") #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends lime.utils.Bytes {}
@:file("C:/HaxeToolkit/haxe/lib/flixel/4,2,0/assets/sounds/flixel.mp3") #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends lime.utils.Bytes {}
@:font("C:/HaxeToolkit/haxe/lib/flixel/4,2,0/assets/fonts/nokiafc22.ttf") #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:font("C:/HaxeToolkit/haxe/lib/flixel/4,2,0/assets/fonts/monsterrat.ttf") #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:image("C:/HaxeToolkit/haxe/lib/flixel/4,2,0/assets/images/ui/button.png") #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:image("C:/HaxeToolkit/haxe/lib/flixel/4,2,0/assets/images/logo/default.png") #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}



#end
#end

#if (openfl && !flash)
@:keep #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { var font = new __ASSET__flixel_fonts_nokiafc22_ttf (); src = font.src; name = font.name; super (); }}
@:keep #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { var font = new __ASSET__flixel_fonts_monsterrat_ttf (); src = font.src; name = font.name; super (); }}

#end

#end