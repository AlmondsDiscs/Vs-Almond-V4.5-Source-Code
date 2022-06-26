function onCreate()
	-- background shit
	makeLuaSprite('stars', 'stars', -1000, -500);
	setScrollFactor('stars', 0.9, 0.9);
	scaleObject('stars', 10, 10)
	
	addLuaSprite('stars', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end