package;

import flixel.FlxCamera;
import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.addons.editors.ogmo.FlxOgmoLoader;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.text.FlxText;
import flixel.tile.FlxTilemap;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;
import flixel.util.FlxColor;
import flixel.util.FlxStringUtil;
import com.newgrounds.*;
import flash.display.BlendMode;

class PlayState1 extends FlxState
{
	public var _player:Player;
	private var _map:FlxOgmoLoader;
	private var _mWalls:FlxTilemap;
	private var _grpGuns:FlxTypedGroup<Gun>;
	private var _grpEnemies:FlxTypedGroup<Enemy>;
	private var _grpDoor:FlxTypedGroup<Door>;
	public var _roomNum:Int = 1;
	private var _noise:FlxSprite;
	
	override public function create():Void
	{
		var bg:FlxSprite = new FlxSprite(0, 0);
		bg.loadGraphic("assets/images/bg.png");
		bg.scrollFactor.x = 0.4;
		bg.scrollFactor.y = 0.3;
		add(bg);
		
		
		_map = new FlxOgmoLoader("assets/data/level" +_roomNum + ".oel");
		_mWalls = _map.loadTilemap("assets/data/tilesbetter.png", 16, 16, "walls");
		_mWalls.follow();
		add(_mWalls);
		
		
		FlxG.sound.playMusic("assets/music/SPPOKY.mp3", 0.6, true);
		
		_grpGuns = new FlxTypedGroup<Gun>();
		add(_grpGuns);
		
		_grpEnemies = new FlxTypedGroup<Enemy>();
		add(_grpEnemies);
		
		_grpDoor = new FlxTypedGroup<Door>();
		add(_grpDoor);
		
		_player = new Player();
		_map.loadEntities(placeEntities, "entities");
		add(_player);
		_player.acceleration.y = 1000;
		
		FlxG.camera.follow(_player, PLATFORMER);
		
		_noise = new FlxSprite(0, 0);
		_noise.loadGraphic("assets/images/noise.png", true, 320, 240);
		_noise.animation.add("noise", [0, 1, 2, 3, 4, 5, 6, 7], 24, true);
		_noise.animation.play("noise");
		_noise.scrollFactor.x = _noise.scrollFactor.y = 0;
		_noise.blend = BlendMode.OVERLAY;
		_noise.alpha = 0.3;
		add(_noise);
		
		
		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		FlxG.collide(_player, _mWalls);
		FlxG.overlap(_player, _grpGuns, playerTouchGun);
		
		FlxG.collide(_grpEnemies, _mWalls);
		_grpEnemies.forEachAlive(checkEnemyVision);
		FlxG.overlap(_player, _grpEnemies, playerTouchEnemy);
		
		if (_player.y >= 1300)
		{
			FlxG.switchState(new PlayState2());
		}
		if (_player.y >= 1000)
		{
			FlxG.camera.fade(FlxColor.BLACK, 0.5);
		}
	}
	
	private function placeEntities(entityName:String, entityData:Xml):Void
	{
		var x:Int = Std.parseInt(entityData.get("x"));
		var y:Int = Std.parseInt(entityData.get("y"));
		if (entityName == "player")
		{
			_player.x = x;
			_player.y = y;
		}
		else if (entityName == "gun")
		{
			_grpGuns.add(new Gun(x + 4, y +4));
		}
		else if (entityName == "enemy")
		{
			_grpEnemies.add(new Enemy(x, y, Std.parseInt(entityData.get("etype"))));
		}
		else if (entityName == "door")
		{
			_grpDoor.add(new Door());
		}
	}
	
	private function playerTouchGun(P:Player, G:Gun):Void
	{
		if (P.alive && P.exists && G.alive && G.exists)
		{
			G.kill();
		}
	}
	
	private function checkEnemyVision(e:Enemy):Void
	{
		if (_mWalls.ray(e.getMidpoint(), _player.getMidpoint()))
		{
			e.seesPlayer = true;
			e.playerPos.copyFrom(_player.getMidpoint());
		}
		else
			e.seesPlayer = false;
	}
	
	private function playerTouchEnemy(P:Player, E:Enemy):Void
	{
		if (P.alive && P.exists && E.alive && E.exists)
		{
			E.kill();
		}
	}
	
	private function playerTouchDoor(P:Player, D:Door):Void
	{
		_roomNum += 1;
		create();
	}
}