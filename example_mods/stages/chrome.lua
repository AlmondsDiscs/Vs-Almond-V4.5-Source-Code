function onCreate()
	-- background shit
	makeLuaSprite('yea', 'yea', -600, -300);
	setScrollFactor('yea', 0.9, 0.9);
	
	addLuaSprite('yea', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end