package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;

/**
 * ...
 * @author 
 */
class RebootState extends FlxState
{

	private var timer:Float = 5.5;
	private var reboot:FlxText;
	private var reboot1:FlxText;
	private var reboot2:FlxText;
	private var reboot3:FlxText;
	override public function create():Void 
	{
		var title:FlxText;
		title = new FlxText(0, 10, 0, "AN ERROR HAS OCCURED", 20);
		title.alignment = CENTER;
		add(title);
		
		
		
		super.create();
	}
	override public function update(elapsed:Float):Void 
	{
		super.update(elapsed);
		timer -= elapsed;
		FlxG.log.add(timer);
		if (timer <= 0)
		{
			FlxG.switchState(new FileSelect());
		}
		if (timer <= 4.6 && timer >= 4.3)
		{
			var reboot:FlxText;
			reboot = new FlxText(0, 60, 0, "NOW REBOOTING", 14);
			reboot.alignment = LEFT;
			add(reboot);
		}
		
		if (timer <= 4 && timer >= 3.8)
		{
			var reboot1:FlxText;
			reboot1 = new FlxText(0, 80, 0, "REBOOOOOOTING.....", 10);
			reboot1.alignment = LEFT;
			add(reboot1);
		}
		if (timer <= 3.7 && timer >= 3.5)
		{
			var reboot2:FlxText;
			reboot2 = new FlxText(0, 90, 0, "REBOOTING.....", 10);
			reboot2.alignment = LEFT;
			add(reboot2);
		}
		
		if (timer <= 3 && timer >= 2.8)
		{
			var reboot3:FlxText;
			reboot3 = new FlxText(0, 105, 0, "DO NOT TURN OFF SYSTEM POER", 10);
			reboot3.alignment = LEFT;
			add(reboot3);
		}
		if (timer <= 2 && timer >= 1.8)
		{
			var reboot4:FlxText;
			reboot4 = new FlxText(0, 130, 0, "BOOTING UP MAD.EXE", 12);
			reboot4.alignment = LEFT;
			add(reboot4);
		}
		if (timer <= 1.6 && timer >= 1.3)
		{
			var reboot5:FlxText;
			reboot5 = new FlxText(0, 170, 0, "wandows is now working ngrmadly", 12);
			reboot5.alignment = LEFT;
			add(reboot5);
		}
		if (timer <= 1.3 && timer >= 1)
		{
			var reboot7:FlxText;
			reboot7 = new FlxText(0, 185, 0, "Booting in Safe Mode wath Fetwgrkifg", 11);
			add(reboot7);
		}
		if (timer <= 1 && timer >= 0.8)
		{
			var reboot6:FlxText;
			reboot6 = new FlxText(0, 200, 0, "wandows is now working ngrmadly", 12);
			reboot6.alignment = LEFT;
			add(reboot6);
		}
		if (timer <= 0.5)
		{
			FlxG.camera.flash(FlxColor.RED, 4);
		}
	}
	
}