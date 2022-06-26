function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-pixel-dead'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'uuhhh'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'pianosolo'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'backatitagain'); --put in mods/music/
end