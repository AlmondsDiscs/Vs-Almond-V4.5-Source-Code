function onCreate()
	-- background shit
	makeLuaSprite('room', 'room', 0, 0);
	setScrollFactor('room', 1, 1);
	scaleObject('room', 3, 3);
	
	makeLuaSprite('tv', 'tv', 0, 0);
	setScrollFactor('tv', 1, 1);
	scaleObject('tv', 3, 3);

	addLuaSprite('room', false);
	setProperty('room.antialiasing', false)
	addLuaSprite('tv', false);
	setProperty('tv.antialiasing', false)

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end