package;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.math.FlxPoint;
import flixel.math.FlxVelocity;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;

/**
 * ...
 * @author 
 */
class Enemy extends FlxSprite
{
	public var speed:Float = 75;
	public var etype(default, null):Int;
	
	private var _brain:FSM;
	private var _idleTmr:Float;
	private var _moveDir:Float;
	public var seesPlayer:Bool = false;
	public var playerPos(default, null):FlxPoint;
	public var glitchnum:Bool;
	
	public function new(?X:Float=0, ?Y:Float=0, EType:Int) 
	{
		super(X, Y);
		etype = EType;
		loadGraphic("assets/images/Madness_Ghost.png", true, 64, 64);
		setFacingFlip(FlxObject.LEFT, true, false);
		setFacingFlip(FlxObject.RIGHT, false, false);
		
		animation.add("spook", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9], 8, true);
		animation.play("spook");
		
		drag.x = drag.y = 150;
		setSize(24, 35);
		offset.set(18, 14);
		
		_brain = new FSM(idle);
		_idleTmr = 0;
		playerPos = FlxPoint.get();
	}
	override public function draw():Void 
	{
		super.draw();
	}
	
	public function idle():Void
	{
		if (seesPlayer)
		{
			_brain.activeState = chase;
		}
		else if (_idleTmr <= 0)
		{
			if (FlxG.random.bool(1))
			{
				_moveDir = -1;
				velocity.x = velocity.y = 0;
			}
			else 
			{
				_moveDir = FlxG.random.int(0, 8) * 45;
				
				velocity.set(speed * 0.1, 0);
				velocity.rotate(FlxPoint.weak(), _moveDir);
			}
			_idleTmr = FlxG.random.int(1, 4);
		}
		else
			_idleTmr -= FlxG.elapsed;
	}
	
	public function chase():Void
	{
		if (!seesPlayer)
		{
			_brain.activeState = idle;
		}
		else
		{
			FlxVelocity.moveTowardsPoint(this, playerPos, Std.int(speed));
		}
	}
	
	override public function update(elapsed:Float):Void 
	{
		_brain.update();
		if (velocity.x < 0)
			facing = FlxObject.LEFT;
		else if (velocity.x > 0)
			facing = FlxObject.RIGHT;
		super.update(elapsed);
	}
	
	override public function kill():Void
	{
		alive = false;
		FlxG.camera.shake(0.2, 0.12);
		
		FlxG.sound.play("assets/sounds/zombie" + FlxG.random.int(1, 3) + ".mp3", 0.5);
		FlxG.sound.play("assets/sounds/staticfix.mp3", 0.5);
		FlxG.camera.flash(FlxColor.RED, 0.3);
		FlxTween.tween(this, { alpha: 0, y: y - 16 }, 0.33, { ease: FlxEase.circOut, onComplete: finishKill });
	}
	
	private function finishKill(_):Void
	{
		exists = false;
	}
	
	public function glitch():Void
	{
		alive = false;
		glitchnum = FlxG.random.bool(50);
		if (glitchnum = true)
		{
			loadGraphic("assets/images/errorglitch.png", true, 152, 100);
			animation.add("glitch", [0, 0, 1, 2, 3, 3, 0], 24, true);
			facing = FlxObject.LEFT;
			animation.play("glitch");
		}
		else
		{
			loadGraphic("assets/images/rip.png", true, 111, 104);
			animation.add("glitch", [0, 0, 1, 2, 3, 3, 0], 24, true);
			facing = FlxObject.LEFT;
			animation.play("glitch");
		}
		
		FlxG.sound.play("assets/sounds/staticfix.mp3", 0.5);
		FlxTween.tween(this, { y: y - 16 }, 0.5, { ease: FlxEase.circOut, onComplete: finishKill });
	}
}