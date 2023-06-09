forest_leader =
{
  dancer_grow = 15, 
}

NewDayEvent.AddListener("forest_leader_new_day_event",
function(day)
    if day == BTD_FIGHT_DAY then
        for hero, alive in AdvMapHeroesInfo.alive_heroes do
            if hero and alive and HasHeroSkill(hero, RANGER_FEAT_FOREST_GUARD_EMBLEM) then
                startThread(Hero.CreatureInfo.DefaultGrow, hero, TOWN_PRESERVE, 2, forest_leader.dancer_grow)
            end
        end
    end
end)