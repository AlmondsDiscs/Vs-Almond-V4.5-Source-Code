function onCreate()
	-- background shit
	makeLuaSprite('shittyasswhitebg', 'shittyasswhitebg', -190, 200);
	setScrollFactor('shittyasswhitebg', 0.8, 0.8);
	scaleObject('shittyasswhitebg', 0.75, 0.75);
	
	makeAnimatedLuaSprite('tree', 'tree', -200, 90);
	setScrollFactor('tree', 0.85, 0.85);
	scaleObject('tree', 1, 1);
	addAnimationByPrefix('tree', 'tree move', 'tree move', 10, true);
	objectPlayAnimation('tree', 'tree move', true);

	addLuaSprite('shittyasswhitebg', false);
	setProperty('shittyasswhitebg.antialiasing', false)
	addLuaSprite('tree', false);
	setProperty('tree.antialiasing', false)

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end