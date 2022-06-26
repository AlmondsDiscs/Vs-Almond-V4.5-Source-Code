function onCreate()
	-- background shit
	makeLuaSprite('apol', 'apol', -600, -100);
	setScrollFactor('apol', 0.9, 0.9);
	
	addLuaSprite('apol', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end