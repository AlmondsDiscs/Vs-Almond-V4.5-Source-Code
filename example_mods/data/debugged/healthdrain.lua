function opponentNoteHit() -- health draining mechanic
	health = getProperty('health')
    	if getProperty('health') > 0.2 then
        setProperty('health', health- 0.005);
  end
end

function onUpdate(elapsed)
  health = getProperty('health')
      if getProperty('health') > 0.1 then
        if curBeat > 72 and curBeat < 222 then
          setProperty('health', health- 0.005);
    end
  end

      if getProperty('health') > 0.01 then
        if curBeat > 360 and curBeat < 424 then
          setProperty('health', health- 0.01);
    end
  end
end