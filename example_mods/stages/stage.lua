function onCreate()
	-- background shit
	makeLuaSprite('stageback1', 'stageback1', -190, 10);
	setScrollFactor('stageback1', 0.9, 0.9);
	scaleObject('stageback1', 0.75, 0.75);
	
	makeLuaSprite('stagefront1', 'stagefront1', -500, 450);
	setScrollFactor('stagefront1', 1, 1);
	scaleObject('stagefront1', 0.9, 0.9);

	addLuaSprite('stageback1', false);
	addLuaSprite('stagefront1', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end