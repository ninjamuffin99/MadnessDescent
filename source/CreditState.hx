package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.addons.effects.chainable.FlxEffectSprite;
import flixel.addons.effects.chainable.FlxGlitchEffect;

/**
 * ...
 * @author 
 */
class CreditState extends FlxState
{
	private var timer:Float = 1.5;
	
	override public function create():Void 
	{
		FlxG.sound.play("assets/sounds/tvstatic.mp3", 0.7);
		
		var creds:FlxSprite;
		var _effectSprite:FlxEffectSprite;
		var _glitch:FlxGlitchEffect;
		
		creds = new FlxSprite();
		creds.loadGraphic("assets/images/creditstanerrandme.png", false, 320, 240);
		
		add(_effectSprite = new FlxEffectSprite(creds));
		
		_glitch = new FlxGlitchEffect(1, 1, 0.03, FlxGlitchDirection.VERTICAL);
		_effectSprite.effects = [_glitch];
		super.create();
	}
	
	override public function update(elapsed:Float):Void 
	{
		timer -= elapsed;
		if (timer <= 0)
		{
			FlxG.switchState(new PlayState1());
		}
		
		super.update(elapsed);
	}
	
}