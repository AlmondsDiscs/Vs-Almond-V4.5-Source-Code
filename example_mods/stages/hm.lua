function onCreate()
	-- background shit
	makeAnimatedLuaSprite('someplace', 'someplace', -50, 0);
	setScrollFactor('someplace', 0.5, 0.5);
    scaleObject('someplace', 8, 8);
    addAnimationByPrefix('someplace', 'background', 'background', 10, true)
	objectPlayAnimation('someplace', 'background', true)
	
	addLuaSprite('someplace', false);
	setProperty('someplace.antialiasing', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end