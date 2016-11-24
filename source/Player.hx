package;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;

/**
 * ...
 * @author 
 */
class Player extends FlxSprite
{
	
	public var speed:Float = 100;
	
	private var jump:Float = 0;
	private var jumped:Bool = false;
	private var variableJumpTimer:FlxTimer;
	
	private var timerStarted = false;
	
	private var canVariableJump = true;
	
	private var JUMP_SPEED:Int = -340;
	private var VARIABLE_JUMP_TIME:Float = 0.4;
	
	public function new(?X:Float=0, ?Y:Float=0) 
	{
		super(X, Y);
		
		loadGraphic("assets/images/GRUNTFINALV_1.png", true, 64, 64);
		setFacingFlip(FlxObject.LEFT, true, false);
		setFacingFlip(FlxObject.RIGHT, false, false);
		
		animation.add("idle", [0, 1, 2, 3, 4, 5, 6], 12, true);
		animation.add("walk", [8, 9, 10, 11, 12, 13], 12, true);
		animation.add("run", [8, 9, 10, 11, 12, 13], 14, true);
		animation.add("jumped", [15, 16, 17, 18, 19], 16, true);
		animation.add("falling", [21, 22, 23, 24, 25, 26], 16, true); 
		
		animation.play("idle");
		
		variableJumpTimer = new FlxTimer();
		
		drag.x = drag.y = 1300;
		setSize(22, 33);
		offset.set(21, 15);
		
		
	}
	private function movement():Void
	{
		var _left:Bool = false;
		var _right:Bool = false;
		var _click:Bool = false;
		var _run:Bool = false;
		var _up:Bool = false;
		
		_left = FlxG.keys.anyPressed([LEFT, A]);
		_right = FlxG.keys.anyPressed([RIGHT, D]);
		_click = FlxG.mouse.justPressed;
		_run = FlxG.keys.anyPressed([CONTROL, SHIFT]);
		_up = (FlxG.keys.anyJustPressed([UP, W, SPACE]));
		
		if (_left && _right)
			_left = _right = false;
		if (isTouching(FlxObject.FLOOR))
		{
			this.canVariableJump = true;
		}
		// Jump controls
		if (FlxG.keys.anyJustPressed([UP, W, SPACE]))
		{
			if (!timerStarted)
			{
				canVariableJump = true;
			}
			
			if (isTouching(FlxObject.FLOOR))
			{
				velocity.y = JUMP_SPEED;
				animation.play("jumped");
			}
			
		}
		if (canVariableJump && (FlxG.keys.anyJustPressed([UP, W, SPACE])))
		{
			if (!timerStarted)
			{
				variableJumpTimer.start(VARIABLE_JUMP_TIME, onVariableJumpEnds, 1);
				
				timerStarted = true;
			}
		}
		
		
		if (!_left && !_right && isTouching(FlxObject.FLOOR))
			animation.play("idle");
		if (_left)
		{
			if (_left && _run)
			{
				if (isTouching(FlxObject.FLOOR))
				{
					animation.play("run");
				}
				facing = FlxObject.LEFT;
				velocity.x = -speed * 1.4;
			}
			else
			{
				if (isTouching(FlxObject.FLOOR))
				{
					animation.play("walk");
				}
				facing = FlxObject.LEFT;
				velocity.x = -speed;
			}
		}
		if (_right)
		{
			if (_right && _run)
			{
				if (isTouching(FlxObject.FLOOR))
				{
					animation.play("run");
				}
				facing = FlxObject.RIGHT;
				velocity.x = speed * 1.4;
			}
			else
			{
				if (isTouching(FlxObject.FLOOR))
				{
					animation.play("walk");
				}
				facing = FlxObject.RIGHT;
				velocity.x = speed;
			}
		}
		if (velocity.y > 0)
			animation.play("falling");
	}
	private function onVariableJumpEnds(timer:FlxTimer) 
	{
		this.canVariableJump = false;
		
		// reset variable to use timer again
		timerStarted = false;
	}
	override public function update(elapsed:Float):Void 
	{
		
		movement();
		
		super.update(elapsed);
	}
}