function onCreate()
	-- background shit
	makeLuaSprite('oldalmondstage1', 'oldalmondstage1', -300, -125);
	setScrollFactor('oldalmondstage1', 0.9, 0.9);
	scaleObject('oldalmondstage1', 0.9, 0.9);
	
	makeLuaSprite('oldalmondstage2', 'oldalmondstage2', -350, 600);
	setScrollFactor('oldalmondstage2', 1, 1);
	scaleObject('oldalmondstage2', 1.1, 0.7);

	addLuaSprite('oldalmondstage1', false);
	addLuaSprite('oldalmondstage2', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end