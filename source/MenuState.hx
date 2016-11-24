package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;

class MenuState extends FlxState
{
	private var _btnPlay:FlxButton;
	private var _btnOptions:FlxButton;
	
	override public function create():Void
	{
		
		
		_btnPlay = new FlxButton(0, 0, "Play", clickPlay);
		add(_btnPlay);
		_btnPlay.screenCenter();
		
		_btnOptions = new FlxButton(FlxG.width / 2, FlxG.height / 3, "Options");
		add(_btnOptions);
		
		
		trace(FlxG.mouse.x, FlxG.mouse.y);
		
		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
	
	private function clickPlay():Void
	{
		FlxG.switchState(new PlayState1());
	}
}