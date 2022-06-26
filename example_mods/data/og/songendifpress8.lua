function onUpdate(elapsed)
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.EIGHT') then
        endSong();
    end
end