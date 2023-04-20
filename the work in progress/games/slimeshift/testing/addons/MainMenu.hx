package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxColor;
import flixel.input.keyboard.FlxKey;

class MainMenu extends FlxState
{

	  //click = FlxG.sound.load("assets/sounds/click-clack");

	public var placeholder:FlxSprite;

	public function new()
	{
		super();
		placeholder = new FlxSprite(100, 100);
		placeholder.loadGraphic("assets/images/menu shits/placehold.png", true, 126, 52);
		placeholder.animation.add("pressed", [1]);
		placeholder.animation.add("idle", [0]);

		add(placeholder);

		placeholder.animation.play("idle");
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		if (FlxG.keys.pressed.E)
		{
			placeholder.animation.play("pressed");
			trace("Pressed Play");
		}
		else
		{
			placeholder.animation.play("idle");
		}
	}
		
}
