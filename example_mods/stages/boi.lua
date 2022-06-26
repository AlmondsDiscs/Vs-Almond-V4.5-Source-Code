function onCreate()
	-- background shit
	makeLuaSprite('naww', 'naww', -200, 50);
	setScrollFactor('naww', 1, 1);
	scaleObject('naww', 1.5, 1.5);

	addLuaSprite('naww', false);
	setProperty('naww.antialiasing',false)
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end