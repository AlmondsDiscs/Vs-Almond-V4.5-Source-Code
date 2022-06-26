function onCreate()
	-- background shit
	makeLuaSprite('sky', 'sky', -600, -300);
	setScrollFactor('sky', 0.9, 0.9);
	
	makeLuaSprite('plates', 'plates', -650, 600);
	setScrollFactor('plates', 1, 1);
	scaleObject('plates', 1.1, 1.1);

	addLuaSprite('sky', false);
	addLuaSprite('plates', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end