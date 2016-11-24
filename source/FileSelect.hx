package;

import flash.display.BlendMode;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.addons.text.FlxTextField;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;
import com.newgrounds.*;


/**
 * ...
 * @author 
 */
class FileSelect extends FlxState
{
	public var whiteSquare:FlxSprite;
	
	private var character:FlxSprite;
	private var character3:FlxSprite;
	private var character2:FlxSprite;
	
	private var name1:FlxText;
	private var name2:FlxText;
	private var name3:FlxText;
	
	private var Y:Int;
	
	private var OnEraseFile:Bool;
	private var Erasing:Bool;
	private var Erased1:Bool;
	private var Erased2:Bool;
	private var Erased3:Bool;
	
	private var _noise:FlxSprite;
	
	private var timer:Float = 1.2;
	override public function create():Void
	{
		Erasing = false;
		FlxG.mouse.visible;
		
		var screen:FlxSprite;
		screen = new FlxSprite();
		screen.loadGraphic("assets/images/FileSelect.png", false, 320, 240);
		add(screen);
		
		var options:FlxButton;
		options = new FlxButton(190, 200, "OPTIONS", OptionsThing);
		//add(options);
		
		character = new FlxSprite(85, 35);
		character.loadGraphic("assets/images/GRUNTFINALV_1.png", true, 64, 64);
		character.animation.add("idle", [0, 1, 2, 3, 4, 5, 6], 12, true);
		character.animation.play("idle");
		Erased1 = false;
		add(character);
		
		character3 = new FlxSprite(85, 100);
		character3.loadGraphic("assets/images/GRUNTFINALV_1.png", true, 64, 64);
		character3.animation.add("idle", [0, 1, 2, 3, 4, 5, 6], 12, true);
		character3.animation.play("idle");
		Erased2 = false;
		add(character3);
		
		character2 = new FlxSprite(85, 155);
		character2.loadGraphic("assets/images/GRUNTFINALV_1.png", true, 64, 64);
		character2.animation.add("idle", [0, 1, 2, 3, 4, 5, 6], 12, true);
		character2.animation.play("idle");
		Erased3 = false;
		add(character2);
		
		name1 = new FlxText(150, 55, 0, "END", 18);
		name1.color = FlxColor.RED;
		add(name1);
		
		name2 = new FlxText(150, 120, 0, "YOUR", 18);
		name2.color = FlxColor.RED;
		add(name2);
		
		name3 = new FlxText(150, 175, 0, "LIFE", 18);
		name3.color = FlxColor.RED;
		add(name3);
		
		
		whiteSquare = new FlxSprite(55, 55);
		whiteSquare.loadGraphic("assets/images/goodenough.png", true, 16, 16);
		whiteSquare.animation.add("idle", [0, 1, 2, 3, 4, 5, 6], 24, true);
		whiteSquare.animation.play("idle");
		//whiteSquare.updateHitbox;
		add(whiteSquare);
		
		_noise = new FlxSprite(0, 0);
		_noise.loadGraphic("assets/images/noise.png", true, 320, 240);
		_noise.animation.add("noise", [0, 1, 2, 3, 4, 5, 6, 7], 24, true);
		_noise.animation.play("noise");
		_noise.scrollFactor.x = _noise.scrollFactor.y = 0;
		_noise.blend = BlendMode.OVERLAY;
		_noise.alpha = 0.50;
		
		
		
		var CRT:FlxSprite;
		CRT = new FlxSprite();
		CRT.loadGraphic("assets/images/crtaniamtedmaybe.png", true, 320, 240);
		CRT.animation.add("crt", [0, 1, 2], 15, true);
		CRT.animation.play("crt");
		CRT.blend = BlendMode.OVERLAY;
		CRT.alpha = 0.50;
		add(CRT);
		
		FlxG.sound.playMusic("assets/music/YKOPPS.mp3", 0.6, true);
		
		var Y:Int = 1;
		var OnEraseFile:Bool;
		
		super.create();
	}
	
	override public function update(elapsed:Float):Void 
	{
		
		if (FlxG.keys.anyJustPressed([UP, W]))
		{
			Y -= 1;
			if (Y <= 0)
			{
				Y = 4;
				whiteSquare.x = 25;
				OnEraseFile = true;
			}
			FlxG.log.add("fasd");
			if (Y == 1)
			{
				FlxG.log.add("a");
				whiteSquare.y = 55;
				whiteSquare.draw();
				
			}
			if (Y == 2)
			{
				FlxG.log.add("b");
				whiteSquare.y = 113;
				whiteSquare.draw();
			}
			if (Y == 3)
			{
				FlxG.log.add("c");
				whiteSquare.y = 175;
				whiteSquare.draw();
			}
			if (Y == 4)
			{
				FlxG.log.add("d");
				whiteSquare.y = 203;
			}
			else
			{
				whiteSquare.x = 55;
			}
		}
		if (FlxG.keys.anyJustPressed([DOWN, S]))
		{
			Y += 1;
			if (Y >= 5)
			{
				Y = 1;
			}
			FlxG.log.add("fasd");
			if (Y == 1)
			{
				FlxG.log.add("a");
				whiteSquare.y = 55;
				whiteSquare.draw();
				
			}
			if (Y == 2)
			{
				FlxG.log.add("b");
				whiteSquare.y = 113;
				whiteSquare.draw();
			}
			if (Y == 3)
			{
				FlxG.log.add("c");
				whiteSquare.y = 175;
				whiteSquare.draw();
			}
			if (Y == 4 )
			{
				FlxG.log.add("d");
				whiteSquare.y = 203;
				whiteSquare.x = 25;
				OnEraseFile = true;
			}
			else
			{
				whiteSquare.x = 55;
			}
			
		}
		if (FlxG.keys.anyJustPressed([RIGHT, D]) && Y == 4 || (FlxG.keys.anyJustPressed([LEFT, A]) && Y == 4))
			{
				if (OnEraseFile)
				{
					whiteSquare.x = 170;
					OnEraseFile = false;
				}
				else
				{
					whiteSquare.x = 25;
					OnEraseFile = true;
				}
			}
		if (FlxG.keys.anyJustPressed([SPACE, ENTER]) && Y == 4)
		{
			if (OnEraseFile)
			{
				FlxG.log.add("ERAsing true");
				Erasing = true;
			}
			else
			{
				OptionsThing();
			}
			
		}
		if (FlxG.keys.anyJustPressed([SPACE, ENTER]))
		{
			if (Erasing)
			{
				if (Y == 1 && !Erased1)
				{
					FlxG.log.add("ERAsing 1");
					character.loadGraphic("assets/images/Madness_Ghost.png", true, 64, 64);
					Erasing = false;
					Erased1 = true;
					name1 = new FlxText(150, 55, 0, "ERRRROOR", 18);
					name1.color = FlxColor.BLACK;
					add(name1);
				}
				if (Y == 2 && !Erased2)
				{
					FlxG.log.add("ERAsing 2");
					character3.loadGraphic("assets/images/Madness_Ghost.png", true, 64, 64);
					Erasing = false;
					Erased2 = true;
					name2 = new FlxText(150, 120, 0, "ERR0R", 18);
					name2.color = FlxColor.BLACK;
					add(name2);
				}
				if (Y == 3 && !Erased3)
				{
					FlxG.log.add("ERAsing 3");
					character2.loadGraphic("assets/images/Madness_Ghost.png", true, 64, 64);
					Erasing = false;
					Erased3 = true;
					name3 = new FlxText(150, 175, 0, "ER%OR", 18);
					name3.color = FlxColor.BLACK;
					add(name3);
				}
			}
		}
		if (Erased1 && Erased2 && Erased3)
		{
			add(_noise);
			timer -= elapsed;
			FlxG.sound.play("assets/sounds/reboot.mp3", 0.4, false);
			FlxG.log.add(timer);
			if (timer <= 0)
			{
				FlxG.switchState(new EndState());
			}
			
		}
		super.update(elapsed);
	}
	
	public function OptionsThing():Void
	{
		FlxG.sound.play("assets/sounds/select.wav");
		API.unlockMedal("TB");
	}
	
}