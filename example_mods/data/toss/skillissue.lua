function onUpdate(elapsed)
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SEVEN') then
        characterPlayAnim('boyfriend', 'hey');
    end
end