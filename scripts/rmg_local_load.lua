----------------------------
-- общие для режимов скрипты
----------------------------

-- герои
doFile("/scripts/Common/advmap/Heroes/Vegeyr/script.lua")
doFile("/scripts/Common/advmap/Heroes/Kujin/script.lua")
doFile("/scripts/Common/advmap/Heroes/Kigan/script.lua")
doFile("/scripts/Common/advmap/Heroes/Biara/script.lua")

-- скиллы
doFile("/scripts/Common/advmap/Skills/Catapult/script.lua")
doFile("/scripts/Common/advmap/Skills/DemonicRetaliation/script.lua")
doFile("/scripts/Common/advmap/Skills/DefendUsAll/script.lua")
doFile("/scripts/Common/advmap/Skills/GrailVision/script.lua")
doFile("/scripts/Common/advmap/Skills/Navigation/script.lua")
doFile("/scripts/Common/advmap/Skills/Readiness/script.lua")
doFile("/scripts/Common/advmap/Skills/SealOfProtection/script.lua")
doFile("/scripts/Common/advmap/Skills/ShakeGround/script.lua")
doFile("/scripts/Common/advmap/Skills/SorceryDefence/script.lua")
doFile("/scripts/Common/advmap/Skills/TripleCatapult/script.lua")

--------------
-- рмг-скрипты
--------------

-- банки
doFile("/scripts/RMG/advmap/Objects/Banks/base.lua")
-- генерация армий героев
doFile("/scripts/RMG/advmap/NHF/Common/ArmyGeneration/script.lua")
-- новые объекты
doFile("/scripts/RMG/advmap/Objects/NewObjects/base.lua")
-- чето старое(лучше убрать, но пока работает)
doFile("/scripts/BTD.lua")

-- скиллы
doFile("/scripts/RMG/advmap/Skills/Diplomacy/script.lua")
doFile("/scripts/RMG/advmap/Skills/Estates/script.lua")
doFile("/scripts/RMG/advmap/Skills/NecromancerFeatDeathTread/script.lua")
doFile("/scripts/RMG/advmap/Skills/FortunateAdventurer/script.lua")
doFile("/scripts/RMG/advmap/Skills/GuardianAngel/script.lua")
doFile("/scripts/RMG/advmap/Skills/HeraldOfDeath/script.lua")
doFile("/scripts/RMG/advmap/Skills/LordOfUndead/script.lua")
doFile("/scripts/RMG/advmap/Skills/Navigation/script.lua")
doFile("/scripts/RMG/advmap/Skills/NoRestForTheWicked/script.lua")
doFile("/scripts/RMG/advmap/Skills/Recruitment/script.lua")
doFile("/scripts/RMG/advmap/Skills/SpoilsOfWar/script.lua")
doFile("/scripts/RMG/advmap/Skills/Wisdom/script.lua")
doFile("/scripts/RMG/advmap/Skills/ForestLeader/script.lua")
doFile("/scripts/RMG/advmap/Skills/DarkRevelation/script.lua")

-- абилки
doFile("/scripts/RMG/advmap/Abilities/ArtifactTransfer/script.lua")
doFile("/scripts/RMG/advmap/Abilities/Test/script.lua")

-- постройки в городах
doFile("/scripts/RMG/advmap/Towns/Buildings/Academy_TreasureCave/script.lua")
doFile("/scripts/RMG/advmap/Towns/Buildings/Haven_Farms/script.lua")
doFile("/scripts/RMG/advmap/Towns/Buildings/Inferno_SacrificialPit/script.lua")
doFile("/scripts/RMG/advmap/Towns/Buildings/Inferno_OrderOfFire/script.lua")
doFile("/scripts/RMG/advmap/Towns/Buildings/Necropolis_UnearhedGraves/script.lua")
doFile("/scripts/RMG/advmap/Towns/Buildings/Preserve_BloomingGrove/script.lua")
doFile("/scripts/RMG/advmap/Towns/Buildings/Dungeon_RitualPit/script.lua")

-- Áû報갨ﲻ ͠철𳍊doFile("/scripts/RMG/advmap/Creatures/Abilities/Namtaru.lua")

print("rmg scripts loaded")