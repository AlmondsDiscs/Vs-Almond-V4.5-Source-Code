function onUpdate(elapsed)
	if dadName == 'bee' then --replace the name for your character name
	  if curStep >= 0 then
  
		songPos = getSongPosition()
  
		local currentBeat = (songPos/1000)*(bpm/92.5)
  
		doTweenX(dadTweenX, 'dad', 100-110*math.sin((currentBeat*0.25)*math.pi),0.001)
	
	  end
	end
end