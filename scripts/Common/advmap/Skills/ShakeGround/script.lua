shake_ground =
{
  active_for_hero = {}
}

AddHeroEvent.AddListener("BTD_shake_ground_add_hero_event",
function(hero)
  while not shake_ground do
    sleep()
  end
  shake_ground.active_for_hero[hero] = nil
  startThread(
  function()
    while 1 do
      if IsHeroAlive(%hero) then
        if not shake_ground.active_for_hero[%hero] then
          if HasHeroSkill(%hero, WARLOCK_FEAT_SHAKE_GROUND) then
            shake_ground.active_for_hero[%hero] = 1
            consoleCmd("@SetGameVar('"..%hero.."_SHAKE_GROUND', '1')")
          end
        else
          if not HasHeroSkill(%hero, WARLOCK_FEAT_SHAKE_GROUND) then
            shake_ground.active_for_hero[%hero] = nil
            consoleCmd("@SetGameVar('"..%hero.."_SHAKE_GROUND', '')")
          end
        end
      end
      sleep()
    end
  end)
end)

RespawnHeroEvent.AddListener("BTD_common_shake_ground_respawn_hero_event",
function(hero)
    if HasHeroSkill(hero, WARLOCK_FEAT_SHAKE_GROUND) then
        consoleCmd("@SetGameVar('"..hero.."_SHAKE_GROUND', '1')")
    end   
end)

CombatConnection.combat_scripts_paths['shake_ground'] = '/scripts/Common/combat/Skills/ShakeGround/script.lua'