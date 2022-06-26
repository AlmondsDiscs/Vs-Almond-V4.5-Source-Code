function onCreate()
	-- background shit
	makeLuaSprite('BG_Back1', 'BG_Back1', -350, -250);
	setScrollFactor('BG_Back1', 0.15, 0.15);
	
	makeLuaSprite('BG_Back2', 'BG_Back2', 100, -125);
	setScrollFactor('BG_Back2', 0.25, 0.25);

	makeLuaSprite('BG_Back3', 'BG_Back3', -350, -250);
	setScrollFactor('BG_Back3', 0.3, 0.3);

	makeLuaSprite('BG_Back4', 'BG_Back4', -350, -250);
	setScrollFactor('BG_Back4', 0.4, 0.4);

	makeLuaSprite('Platform', 'Platform', 200, -300);
	setScrollFactor('Platform', 1, 1);

	addLuaSprite('BG_Back1', false);
	addLuaSprite('BG_Back2', false);
	addLuaSprite('BG_Back3', false);
	addLuaSprite('BG_Back4', false);
	addLuaSprite('Platform', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end