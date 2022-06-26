function onCreate()
	-- background shit
	makeLuaSprite('ffcs', 'ffcs', -600, -400);
	setScrollFactor('ffcs', 0.2, 0.2);
	scaleObject('ffcs', 1.7, 1.7);
	
	addLuaSprite('ffcs', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end