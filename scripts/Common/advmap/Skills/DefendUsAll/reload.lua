-- [#3 fix] 
function DefendUsAllReload()
    for i, hero in GetObjectNamesByType("HERO") do
        if HasHeroSkill(hero, HERO_SKILL_DEFEND_US_ALL) then
            consoleCmd("@SetGameVar('"..hero.."_DEFEND_US_ALL', '1')")
        end
    end
end

consoleCmd("@CombatConnection.combat_scripts_paths['defend_us_all'] = '/scripts/Common/combat/Skills/DefendUsAll/script.lua'")
consoleCmd("@MapReloadEvent.AddListener('BTD_common_defend_us_all_reload', DefendUsAllReload)")