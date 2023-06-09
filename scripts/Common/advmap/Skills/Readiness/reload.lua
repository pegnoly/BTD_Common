-- [#3 fix] 
function ReadinessReload()
    for i, hero in GetObjectNamesByType("HERO") do
        if HasHeroSkill(hero, HERO_SKILL_PREPARATION) then
            consoleCmd("@SetGameVar('"..hero.."_MASTERY_READY', '1')")
        end
    end
end

consoleCmd("@CombatConnection.combat_scripts_paths['readiness'] = '/scripts/Common/combat/Skills/Readiness/script.lua'")
consoleCmd("@MapReloadEvent.AddListener('BTD_common_readiness_reload', ReadinessReload)")