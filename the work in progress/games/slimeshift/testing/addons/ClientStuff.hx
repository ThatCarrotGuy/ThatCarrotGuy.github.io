package;

import flixel.FlxG;
import flixel.util.FlxSave;
import flixel.input.keyboard.FlxKey;

class ClientStuff {
	//cool saving shit i guess
	public static var konamiTitle:Bool = false;


	public static function saveSettings() {
		FlxG.save.data.konamiTitle = konamiTitle;
		var save:FlxSave = new FlxSave();
		save.bind('data', 'carrot'); //Placing this in a separate save so that it can be manually deleted without removing your Score and stuff
		save.flush();
		FlxG.log.add("Saved!");
	}

	public static function loadPrefs() {
		if(FlxG.save.data.konamiTitle != null) {
			konamiTitle = FlxG.save.data.konamiTitle;
		}

		var save:FlxSave = new FlxSave();
		save.bind('data', 'carrot');
	}
}
