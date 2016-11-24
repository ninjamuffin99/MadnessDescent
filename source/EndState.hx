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
class EndState extends FlxState
{

	override public function create():Void 
	{
		FlxG.sound.play("assets/sounds/tvstatic.mp3", 0.7);
		
		var creds:FlxSprite;
		var _effectSprite:FlxEffectSprite;
		var _glitch:FlxGlitchEffect;
		
		creds = new FlxSprite();
		creds.loadGraphic("assets/images/EndSlate.png", false, 320, 240);
		
		add(_effectSprite = new FlxEffectSprite(creds));
		
		_glitch = new FlxGlitchEffect(1, 1, 0.03, FlxGlitchDirection.VERTICAL);
		_effectSprite.effects = [_glitch];
		super.create();
	}	
}