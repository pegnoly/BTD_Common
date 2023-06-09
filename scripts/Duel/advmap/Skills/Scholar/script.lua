scholar =
{
    GiveSpell =
    function(hero)
        local spells_to_teach, n = {}, 0
        for i, school in {MAGIC_SCHOOL_DESTRUCTIVE, MAGIC_SCHOOL_DARK, MAGIC_SCHOOL_LIGHT, MAGIC_SCHOOL_SUMMONING} do
            local possible_spells = Hero.SpellInfo.GetLearnableSpells(hero, school)
            if len(possible_spells) > 0 then
                n = n + 1
                spells_to_teach[n] = Random.FromTable(possible_spells)
            end
        end
        if n > 0 then
            local spell_to_teach = Random.FromTable(spells_to_teach)
            print("SCHOLAR: learning ", spell_to_teach)
            startThread(Hero.SpellInfo.TeachSpell, hero, spell_to_teach)
        else
            print("SCHOLAR: can't learn anything")
        end
    end
}

AddEvent(new_day_events, "scholar_new_day_event",
function(day)
    if day == BTD_FIGHT_DAY then
        for hero, alive in AdvMapHeroesInfo.alive_heroes do
            if hero and alive and HasHeroSkill(hero, PERK_SCHOLAR) then
                startThread(scholar.GiveSpell, hero)
            end
        end
    end
end)