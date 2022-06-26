function onCreate()
	-- background shit
	makeLuaSprite('sky', 'sky', -600, -300);
	setScrollFactor('sky', 0.5, 0.5);

	makeLuaSprite('tracks', 'tracks', -600, -300);
	setScrollFactor('tracks', 0.2, 0.2);
	
	makeLuaSprite('ground', 'ground', -650, 600);
	setScrollFactor('ground', 1, 1);
	scaleObject('ground', 1.1, 1.1);

	makeLuaSprite('cart', 'cart', 500, 360);
	setScrollFactor('cart', 1, 1);
	scaleObject('cart', 1.1, 1.1);

	addLuaSprite('sky', false);
	addLuaSprite('ground', false);
	addLuaSprite('tracks', false);
	addLuaSprite('cart', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end