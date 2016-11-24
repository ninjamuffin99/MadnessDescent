package;

import flixel.FlxG;
import flixel.FlxGame;
import openfl.display.Sprite;
import com.newgrounds.*;

class Main extends Sprite
{
	public function new()
	{
		super();
		API.connect(root, "api key here", "ENCRYPTION KEY HERE");
		addChild(new FlxGame(320, 240, CreditState));
	}
}