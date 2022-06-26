function onUpdate(elapsed)
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SEVEN') then
        startVideo('awesome');
    end
end