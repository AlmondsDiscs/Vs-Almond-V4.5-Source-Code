function onUpdate(elapsed)
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SEVEN') then
        endSong();
    end
end