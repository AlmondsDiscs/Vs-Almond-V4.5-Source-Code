local allowCountdown = false
local seen = false
local pagecount = 0
local maxpages = 5
local endstops = 0

function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'wackyend'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/
	if isStoryMode and not seenCutscene then
		setPropertyFromClass('PlayState','seenCutscene',true)
		setProperty('camHUD.visible',false)
		makeAnimatedLuaSprite('intro','cutscene/wackyintro01',0,0)
		for i=0,maxpages,1 do
			addAnimationByIndices('intro','page' .. i, 'wackyintro01','' .. i)
		end
		addLuaSprite('intro',true)
		setObjectCamera('intro', 'other')
		setProperty('intro.antialiasing', false)
		setLuaSpriteScrollFactor('intro',0,0)
		runTimer('cutMus', 0.3, 1)
	end
end

function onUpdatePost()
    if endstops == 1 and getProperty('endingSong') then 
      if keyJustPressed('accept') or keyJustPressed('back') then
		endSong()
		end  
    end
end

function onEndSong()
	endstops = endstops + 1
	if isStoryMode then
		if endstops == 1 then
			 runTimer('endshit',1)
			cameraFade('hud','000000',0.5)
			return Function_Stop;	
		end
	end
	 return Function_Continue;
end

function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		--runTimer('startDialogue', 0.8);
		--allowCountdown = true;
		return Function_Stop;
	end
	seen = true
	return Function_Continue;
end




function onUpdate()
	if not seen then
		if keyJustPressed('accept') and getProperty('inCutscene') == true then
			if pagecount == maxpages then
				seen = true
				doTweenAlpha('bye','intro',0,1)
				allowCountdown = true
				setProperty('inCutscene', false);
				seenCutscene = true
				soundFadeOut('',1,0)
				playSound('dialogueClose')
			else
				playSound('dialogueClose')
				pagecount = pagecount + 1
				objectPlayAnimation('intro','page' .. pagecount)
			end
		end
	end
	if curStep == 1968 then
		cameraFade('camGame', '000000', '1')
	end
end

function onTweenCompleted(t)
	if t == 'bye' then
		setProperty('camHUD.visible',true)
			startCountdown()
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'cutMus' then
		playMusic('nice_house',1,true)
	end
	if tag == 'endshit' then
		setProperty('camHUD._fxFadeAlpha', 0);
		cameraFlash('other','000000', 0.2)
		makeLuaSprite('ending','cutscene/wackyending',0,0)
		addLuaSprite('ending',false)
		scaleObject('ending',1.333333334,1.333333334)
		screenCenter('ending')
		setProperty('ending.antialiasing',false)
		setObjectCamera('ending','other')
		playSound('wackyending',1,false)
	end
end