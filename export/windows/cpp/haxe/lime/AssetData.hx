package lime;


import lime.utils.Assets;


class AssetData {

	private static var initialized:Bool = false;
	
	public static var library = new #if haxe3 Map <String, #else Hash <#end LibraryType> ();
	public static var path = new #if haxe3 Map <String, #else Hash <#end String> ();
	public static var type = new #if haxe3 Map <String, #else Hash <#end AssetType> ();	
	
	public static function initialize():Void {
		
		if (!initialized) {
			
			path.set ("assets/data/data-goes-here.txt", "assets/data/data-goes-here.txt");
			type.set ("assets/data/data-goes-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/level0.oel", "assets/data/level0.oel");
			type.set ("assets/data/level0.oel", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/level1.oel", "assets/data/level1.oel");
			type.set ("assets/data/level1.oel", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/level2.oel", "assets/data/level2.oel");
			type.set ("assets/data/level2.oel", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/level3.oel", "assets/data/level3.oel");
			type.set ("assets/data/level3.oel", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/tiles.png", "assets/data/tiles.png");
			type.set ("assets/data/tiles.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/tilesbetter.png", "assets/data/tilesbetter.png");
			type.set ("assets/data/tilesbetter.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/tower.oep", "assets/data/tower.oep");
			type.set ("assets/data/tower.oep", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/images/bg.png", "assets/images/bg.png");
			type.set ("assets/images/bg.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/credits thing.psd", "assets/images/credits thing.psd");
			type.set ("assets/images/credits thing.psd", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/images/creditstanerrandme.png", "assets/images/creditstanerrandme.png");
			type.set ("assets/images/creditstanerrandme.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/errorglitch.png", "assets/images/errorglitch.png");
			type.set ("assets/images/errorglitch.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/fg2.png", "assets/images/fg2.png");
			type.set ("assets/images/fg2.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/GRUNTFINALV_1.png", "assets/images/GRUNTFINALV_1.png");
			type.set ("assets/images/GRUNTFINALV_1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/images-go-here.txt", "assets/images/images-go-here.txt");
			type.set ("assets/images/images-go-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/images/Madness _GRUNTGoogdv2.png", "assets/images/Madness _GRUNTGoogdv2.png");
			type.set ("assets/images/Madness _GRUNTGoogdv2.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Madness_Ghost.png", "assets/images/Madness_Ghost.png");
			type.set ("assets/images/Madness_Ghost.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Madness_grunt.png", "assets/images/Madness_grunt.png");
			type.set ("assets/images/Madness_grunt.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Madness_GruntBASE.png", "assets/images/Madness_GruntBASE.png");
			type.set ("assets/images/Madness_GruntBASE.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Madness_gruntgoodV1.png", "assets/images/Madness_gruntgoodV1.png");
			type.set ("assets/images/Madness_gruntgoodV1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Madness_Gruntpunch.png", "assets/images/Madness_Gruntpunch.png");
			type.set ("assets/images/Madness_Gruntpunch.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/noise.png", "assets/images/noise.png");
			type.set ("assets/images/noise.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/noise.psd", "assets/images/noise.psd");
			type.set ("assets/images/noise.psd", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/images/Pistol.png", "assets/images/Pistol.png");
			type.set ("assets/images/Pistol.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/PistolFIX.png", "assets/images/PistolFIX.png");
			type.set ("assets/images/PistolFIX.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/rip.png", "assets/images/rip.png");
			type.set ("assets/images/rip.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/samplefg.png", "assets/images/samplefg.png");
			type.set ("assets/images/samplefg.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/shitgun.png", "assets/images/shitgun.png");
			type.set ("assets/images/shitgun.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/map.png", "assets/map.png");
			type.set ("assets/map.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/music/MechDrone5.mp3", "assets/music/MechDrone5.mp3");
			type.set ("assets/music/MechDrone5.mp3", Reflect.field (AssetType, "music".toUpperCase ()));
			path.set ("assets/music/music-goes-here.txt", "assets/music/music-goes-here.txt");
			type.set ("assets/music/music-goes-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/music/spookyOC.mp3", "assets/music/spookyOC.mp3");
			type.set ("assets/music/spookyOC.mp3", Reflect.field (AssetType, "music".toUpperCase ()));
			path.set ("assets/music/SPPOKY.mp3", "assets/music/SPPOKY.mp3");
			type.set ("assets/music/SPPOKY.mp3", Reflect.field (AssetType, "music".toUpperCase ()));
			path.set ("assets/sounds/180414__jaraxe__zombie19.wav", "assets/sounds/180414__jaraxe__zombie19.wav");
			type.set ("assets/sounds/180414__jaraxe__zombie19.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/MechDrone4.mp3", "assets/sounds/MechDrone4.mp3");
			type.set ("assets/sounds/MechDrone4.mp3", Reflect.field (AssetType, "music".toUpperCase ()));
			path.set ("assets/sounds/sounds-go-here.txt", "assets/sounds/sounds-go-here.txt");
			type.set ("assets/sounds/sounds-go-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/sounds/staticfix.mp3", "assets/sounds/staticfix.mp3");
			type.set ("assets/sounds/staticfix.mp3", Reflect.field (AssetType, "music".toUpperCase ()));
			path.set ("assets/sounds/Strange_Static-KP-1708174947.mp3", "assets/sounds/Strange_Static-KP-1708174947.mp3");
			type.set ("assets/sounds/Strange_Static-KP-1708174947.mp3", Reflect.field (AssetType, "music".toUpperCase ()));
			path.set ("assets/sounds/tvstatic.mp3", "assets/sounds/tvstatic.mp3");
			type.set ("assets/sounds/tvstatic.mp3", Reflect.field (AssetType, "music".toUpperCase ()));
			path.set ("assets/sounds/TV_Static-Mike_Koenig-1287909192.mp3", "assets/sounds/TV_Static-Mike_Koenig-1287909192.mp3");
			type.set ("assets/sounds/TV_Static-Mike_Koenig-1287909192.mp3", Reflect.field (AssetType, "music".toUpperCase ()));
			path.set ("assets/sounds/zombie1.mp3", "assets/sounds/zombie1.mp3");
			type.set ("assets/sounds/zombie1.mp3", Reflect.field (AssetType, "music".toUpperCase ()));
			path.set ("assets/sounds/zombie2.mp3", "assets/sounds/zombie2.mp3");
			type.set ("assets/sounds/zombie2.mp3", Reflect.field (AssetType, "music".toUpperCase ()));
			path.set ("assets/sounds/zombie3.mp3", "assets/sounds/zombie3.mp3");
			type.set ("assets/sounds/zombie3.mp3", Reflect.field (AssetType, "music".toUpperCase ()));
			path.set ("assets/tiles.png", "assets/tiles.png");
			type.set ("assets/tiles.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/sounds/beep.ogg", "flixel/sounds/beep.ogg");
			type.set ("flixel/sounds/beep.ogg", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("flixel/sounds/flixel.ogg", "flixel/sounds/flixel.ogg");
			type.set ("flixel/sounds/flixel.ogg", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("flixel/fonts/nokiafc22.ttf", "flixel/fonts/nokiafc22.ttf");
			type.set ("flixel/fonts/nokiafc22.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("flixel/fonts/monsterrat.ttf", "flixel/fonts/monsterrat.ttf");
			type.set ("flixel/fonts/monsterrat.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("flixel/images/ui/button.png", "flixel/images/ui/button.png");
			type.set ("flixel/images/ui/button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			
			
			initialized = true;
			
		} //!initialized
		
	} //initialize
	
	
} //AssetData
