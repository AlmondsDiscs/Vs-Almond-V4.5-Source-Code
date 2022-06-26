function onCreate()
	-- background shit
	makeLuaSprite('nofuckingway', 'nofuckingway', -100, -10);
	setScrollFactor('nofuckingway', 1, 1);
	scaleObject('nofuckingway', 1.4, 1.4)
	
	addLuaSprite('nofuckingway', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end