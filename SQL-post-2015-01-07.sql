﻿-- Update Thunderfury with the correct procrate.
UPDATE zp_mangosd.item_template SET item_template.spellppmRate_1 = 7 WHERE item_template.entry = 19019;


/*************** ESCAPE THROUGH FORCE (REQUIRES RECOMPILATION OF SERVER)************************/

/** Remove old DB script for the quest Escape through force. **/

UPDATE `zp_mangosd`.`quest_template` SET `StartScript`=0 WHERE  `entry`=994 LIMIT 1;

/** Add new script for the quest Escape through Force. **/

UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_volcor' WHERE  `entry`=3692 LIMIT 1;

/** Waypoints for the quest Escape through force. **/

REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (3692, 1, 4603.96, -1.05598, 69.4241, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (3692, 2, 4609.73, 9.10512, 69.6864, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (3692, 3, 4616.13, 21.5553, 70.8523, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (3692, 4, 4622.7, 33.9179, 69.5292, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (3692, 5, 4629.34, 46.241, 68.321, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (3692, 6, 4635.54, 61.7684, 65.7255, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (3692, 7, 4642.01, 81.7467, 61.1461, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (3692, 8, 4650.08, 96.786, 59.6032, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (3692, 9, 4662.89, 111.15, 58.5598, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (3692, 10, 4675.21, 123.578, 58.4745, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (3692, 11, 4687.58, 135.957, 55.695, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (3692, 12, 4702.11, 151.113, 52.6661, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (3692, 13, 4716.87, 166.045, 53.045, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (3692, 14, 4726.81, 175.909, 53.9219, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (3692, 15, 4739.59, 187.848, 54.4278, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (3692, 16, 4752.77, 199.37, 54.3507, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (3692, 17, 4765.97, 208.221, 51.7664, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (3692, 18, 4774.69, 217.74, 49.0849, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (3692, 19, 4787.83, 220.133, 48.8246, 0, NULL);

/** Text for the quest Escape through force. **/

REPLACE INTO `zp_scriptdevzerod`.`script_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES (-1713002, 'Oh, hello Grimclaw.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES (-1713001, 'Ok, $N. Now i can go the the Auberdine alone. Go to Terenthis. He waits for you. Thanks for the help.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Volcor escort - Escape Through Force');


/**************** ESCAPE THROUGH STEALTH (CAN BE RUN WITHOUT RECOMPILING SERVER) ********************/

/** Remove old DB script for the quest Escape through stealth. **/

DELETE FROM zp_mangosd.quest_start_scripts WHERE id = 995;

/** DB script for the quest Escape through stealth. **/

REPLACE INTO `zp_mangosd`.`quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (995, 0, 28, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, ' ');
REPLACE INTO `zp_mangosd`.`quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (995, 0, 0, 0, 0, 0, 0, 0, 2000005666, 0, 0, 0, 0, 0, 0, 0, ' ');
REPLACE INTO `zp_mangosd`.`quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (995, 0, 22, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ' ');
REPLACE INTO `zp_mangosd`.`quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (995, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ' ');
REPLACE INTO `zp_mangosd`.`quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (995, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ' ');
REPLACE INTO `zp_mangosd`.`quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (995, 4, 23, 11449, 0, 10, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, ' ');
REPLACE INTO `zp_mangosd`.`quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (995, 5, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4604, -1.3, 69.4, 0, ' ');
REPLACE INTO `zp_mangosd`.`quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (995, 6, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4622.6, 30, 69.8, 0, ' ');
REPLACE INTO `zp_mangosd`.`quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (995, 10, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4639.3, 32.8, 68.5, 0, ' ');
REPLACE INTO `zp_mangosd`.`quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (995, 10, 22, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ' ');
REPLACE INTO `zp_mangosd`.`quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (995, 10, 7, 995, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ' ');
REPLACE INTO `zp_mangosd`.`quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (995, 14, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ' ');
REPLACE INTO `zp_mangosd`.`quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (995, 14, 23, 1899, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, ' ');

/** New text for the quest. **/

REPLACE INTO `zp_mangosd`.`db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES (2000005666, 'Thank you again, $N. I\'ll make my way to the road now. When you can, find Terenthis and let him know we escaped.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


-- Script for Grimclaw in Darkshore.

REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (3695, 0, 0, 913, 0, 'Grimclaw', NULL, 0, 13, 13, 546, 546, 0, 0, 608, 80, 80, 0, 0.94, 1.11286, 0, 0, 19, 23, 0, 10, 1, 2000, 0, 0, 1, 4096, 0, 0, 0, 0, 0, 0, 21.5072, 29.5724, 100, 1, 0, 3695, 0, 100007, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 1, 0, 1, 0, 0, 0, 0, 2, 'npc_grimclaw');

-- SQL for the Heart of Hakkar event in Stranglethorn Vale.
-- Spell target for the channeling spell.
REPLACE into zp_mangosd.spell_script_target (`entry`, `type`, `targetEntry`) VALUES ('24217', '1', '15073');
-- AI for the spawning guy.
update zp_mangosd.creature_template set ScriptName = "npc_pats_hellfire_guy" where entry = 15073;
-- Target coordinates for Molthor's spell.
REPLACE INTO zp_mangosd.spell_target_position (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES ('24214', '0', '-11818.61', '1344.06', '13.5', '0');
-- AI script for Molthor.
UPDATE zp_mangosd.creature_template SET ScriptName = "npc_molthor" WHERE entry = 14875;
-- Scale for Pat's Hellfire Guy
UPDATE zp_mangosd.creature_template SET scale = '3' WHERE entry = 15073;
-- Lower the speeed of Molthor slightly.
UPDATE zp_mangosd.creature_template SET speed_run = 1.05 WHERE entry = 14875;
-- Sizes for the objects
UPDATE `zp_mangosd`.`gameobject_template` SET `size`='2' WHERE `entry`='180249';
UPDATE `zp_mangosd`.`gameobject_template` SET `size`='2' WHERE `entry`='180250';
UPDATE `zp_mangosd`.`gameobject_template` SET `size`='3' WHERE `entry`='180402';
-- Delete the old DB script.
DELETE FROM zp_mangosd.quest_end_scripts WHERE id = 8183 LIMIT 1;
-- Change the size for the summoning circle swirly animation.
UPDATE `zp_mangosd`.`gameobject_template` SET `size`='2' WHERE `entry`='180404';
-- Talk for Molothar
REPLACE INTO `zp_scriptdevzerod`.`script_texts` (`entry`, `content_default`) VALUES ('-1720001', 'Now, only one step remains to rid us of the Soulflayer\'s threat...');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` (`entry`, `content_default`) VALUES ('-1720002', 'Begin the ritual, my servants. We must banish the heart of Hakkar back into the void!');
UPDATE `zp_scriptdevzerod`.`script_texts` SET `type`='1' WHERE `entry`='-1720002';

-- Script for Rabid Thistle Bear.

REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (2164, 0, 0, 8840, 0, 'Rabid Thistle Bear', NULL, 0, 13, 14, 341, 491, 0, 0, 270, 44, 44, 0, 0.94, 1.11286, 0, 0, 19, 25, 0, 10, 1, 2000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 22.792, 31.339, 100, 1, 0, 2164, 0, 2164, 0, 0, 0, 0, 0, 0, 3150, 0, 0, 0, 0, 0, 0, 'EventAI', 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 'mob_rabid_thistle_bear');

-- Adjustment for whelp spawn times in BWL.
UPDATE zp_mangosd.creature SET spawntimesecs = FLOOR(30 + RAND() * (121 - 30)) WHERE id IN ('14022', '14023', '14024', '14025');

-- Immunities for Flamewaker Protector.
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=617299803 WHERE  `entry`=12119 LIMIT 1;

/******************** Update size + interact state for pylons in DM West ***********************************/

UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=1, `size`=6.527, `ScriptName`='' WHERE `entry`=177259;
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=1, `size`=6.527, `ScriptName`='' WHERE `entry`=177257;
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=1, `size`=6.527, `ScriptName`='' WHERE `entry`=177258;
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=1, `size`=6.527, `ScriptName`='' WHERE `entry`=179504;
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=1, `size`=6.527, `ScriptName`='' WHERE `entry`=179505;
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=32 WHERE  `entry`=179506;

/********************* Pyrewood village event ***************************/

-- Add events to events list

REPLACE INTO `zp_mangosd`.`game_event` VALUES (50, '2006-02-08 06:00:00', '2020-12-31 20:59:59', 1440, 960, 0, 'Pyrewood Village - Day');
REPLACE INTO `zp_mangosd`.`game_event` VALUES (51, '2006-02-08 21:00:00', '2020-12-31 05:59:59', 1440, 480, 0, 'Pyrewood Village - Worgen Curse');

-- Add all Worgen

REPLACE INTO `zp_mangosd`.`creature` VALUES (3008870, 1892, 0, 0, 0, -354.096, 1421.48, 28.1202, 5.37542, 25, 5, 0, 842, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008871, 1892, 0, 0, 0, -350.452, 1448.51, 24.2547, 4.63715, 25, 5, 0, 897, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008872, 1893, 0, 0, 0, -380.696, 1435.16, 25.684, 6.27863, 25, 5, 0, 979, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008873, 1896, 0, 0, 0, -392.203, 1432.1, 26.8478, 6.1137, 25, 5, 0, 823, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008874, 1893, 0, 0, 0, -390.635, 1466.56, 26.0207, 5.30082, 25, 5, 0, 1242, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008875, 1892, 0, 0, 0, -404.243, 1458.93, 26.9134, 0.00330591, 25, 5, 0, 897, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008876, 1896, 0, 0, 0, -408.024, 1451.09, 26.9036, 0.835828, 25, 5, 0, 889, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008877, 1893, 0, 0, 0, -404.465, 1460.8, 31.6819, 5.84274, 25, 5, 0, 979, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008878, 1893, 0, 0, 0, -413.611, 1456.66, 31.6789, 0.0190139, 25, 5, 0, 1242, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008879, 1892, 0, 0, 0, -377.734, 1491.9, 18.3213, 5.26155, 25, 5, 0, 897, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008880, 3531, 0, 0, 0, -361.536, 1500.37, 17.2484, 4.48794, 25, 5, 0, 647, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008881, 3529, 0, 0, 0, -346.413, 1500.84, 18.8082, 0.875111, 25, 5, 0, 981, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008882, 1896, 0, 0, 0, -343.165, 1505.29, 18.7815, 4.001, 25, 5, 0, 889, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008883, 1896, 0, 0, 0, -395.136, 1545.23, 16.8954, 3.04674, 25, 5, 0, 889, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008884, 1896, 0, 0, 0, -423.653, 1543.42, 18.4704, 6.1687, 25, 5, 0, 889, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008885, 1892, 0, 0, 0, -429.356, 1533.42, 18.5726, 0.674839, 25, 5, 0, 842, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008886, 1893, 0, 0, 0, -444.301, 1540.62, 19.6352, 6.27473, 25, 5, 0, 979, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008887, 1892, 0, 0, 0, -434.829, 1562.94, 19.9626, 5.22622, 25, 5, 0, 897, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008888, 1892, 0, 0, 0, -436.403, 1518.17, 19.5468, 0.800507, 25, 5, 0, 842, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008889, 1896, 0, 0, 0, -411.785, 1518.87, 19.7699, 4.73535, 25, 5, 0, 889, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008890, 1893, 0, 0, 0, -411.989, 1508.83, 19.7702, 1.61339, 25, 5, 0, 1242, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008891, 1893, 0, 0, 0, -384.272, 1563.06, 17.1922, 4.28375, 25, 5, 0, 1242, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008892, 1893, 0, 0, 0, -357.268, 1580.44, 18.0479, 0.0229683, 25, 5, 0, 979, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008893, 1892, 0, 0, 0, -344.681, 1601.51, 16.9805, 2.09643, 25, 5, 0, 842, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008894, 3533, 0, 0, 0, -407.482, 1602.53, 18.1017, 5.59146, 25, 5, 0, 836, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008895, 1893, 0, 0, 0, -391.615, 1602.18, 16.9907, 4.94744, 25, 5, 0, 1242, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008896, 1896, 0, 0, 0, -379.114, 1623.75, 16.8078, 1.73515, 25, 5, 0, 889, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008897, 1893, 0, 0, 0, -387.662, 1634.56, 17.4309, 6.02735, 25, 5, 0, 1242, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008898, 1892, 0, 0, 0, -381.525, 1650.85, 17.4179, 4.61757, 25, 5, 0, 842, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008899, 1893, 0, 0, 0, -381.366, 1656.47, 10.2629, 2.79545, 25, 5, 0, 1242, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008900, 1893, 0, 0, 0, -372.209, 1611.23, 24.2887, 1.62913, 25, 5, 0, 979, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008901, 1893, 0, 0, 0, -384.223, 1618.96, 24.2887, 4.93173, 25, 5, 0, 1242, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008902, 1893, 0, 0, 0, -384.372, 1633.35, 24.2887, 3.20778, 25, 5, 0, 979, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008903, 1892, 0, 0, 0, -363.295, 1545.28, 24.398, 3.21956, 25, 5, 0, 842, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008904, 1893, 0, 0, 0, -341.577, 1553.61, 24.3428, 3.22348, 25, 5, 0, 1242, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008905, 1892, 0, 0, 0, -358.1, 1527.82, 24.9345, 1.34638, 25, 5, 0, 897, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008906, 1893, 0, 0, 0, -333.162, 1548.77, 25.2865, 4.53902, 25, 5, 0, 1242, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008907, 1896, 0, 0, 0, -325.607, 1550.69, 25.2832, 1.34245, 25, 5, 0, 889, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008908, 1896, 0, 0, 0, -329.513, 1545.99, 30.053, 2.22995, 25, 5, 0, 889, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008909, 1893, 0, 0, 0, -337.335, 1548.11, 30.0304, 1.13432, 25, 5, 0, 979, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008910, 1892, 0, 0, 0, -390.462, 1571.06, 17.002, 0.0190455, 25, 5, 0, 897, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008911, 1893, 0, 0, 0, -400.889, 1550.64, 16.7986, 0.372473, 25, 5, 0, 1242, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008912, 1892, 0, 0, 0, -349.412, 1609.79, 16.9815, 5.22624, 25, 5, 0, 842, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008913, 1892, 0, 0, 0, -417.046, 1576.94, 19.5426, 3.39626, 25, 5, 0, 897, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008914, 1896, 0, 0, 0, -411.877, 1579.63, 19.5426, 5.62286, 25, 5, 0, 823, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008915, 1896, 0, 0, 0, -406.599, 1583.59, 24.3014, 3.71042, 25, 5, 0, 823, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3008916, 1896, 0, 0, 0, -421.6, 1580.97, 24.3086, 3.48265, 25, 5, 0, 889, 0, 0, 0);

-- Add the Humans to Day event

REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (17663, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (17905, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (17908, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (17910, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (17911, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (18220, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (18221, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (18235, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (18236, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (18237, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (18238, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (18239, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (18291, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (18306, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (18307, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (18309, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (18310, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (18350, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (18354, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (18355, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (18400, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (18404, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (18405, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (18407, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (18408, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (18409, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (18411, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (18413, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (18996, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (19002, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (19005, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (19007, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (19008, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (19012, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (19015, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (19019, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (19084, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (19219, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (19220, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (19222, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (19223, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (19224, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (19227, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (19228, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (19229, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (19316, 50);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (19343, 50);

-- Add Worgen to Night event

REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008870, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008871, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008872, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008873, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008874, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008875, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008876, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008877, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008878, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008879, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008880, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008881, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008882, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008883, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008884, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008885, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008886, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008887, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008888, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008889, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008890, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008891, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008892, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008893, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008894, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008895, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008896, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008897, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008898, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008899, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008900, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008901, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008902, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008903, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008904, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008905, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008906, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008907, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008908, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008909, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008910, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008911, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008912, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008913, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008914, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008915, 51);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3008916, 51);

-- Add pat for Worgen

REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3008910, 1, -382.181, 1570.67, 16.961, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.403891, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3008910, 2, -379.38, 1572.53, 16.7838, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.694488, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3008910, 3, -369.441, 1579.26, 16.7701, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.97076, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3008910, 4, -373.897, 1583.97, 17.1676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.2967, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3008910, 5, -379.014, 1589.39, 17.2118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.2967, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3008910, 6, -386.714, 1593.99, 16.7651, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.63442, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3008910, 7, -393.862, 1588.19, 17.1849, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.12668, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3008910, 8, -393.784, 1578.47, 17.8744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.88459, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3008910, 9, -390.237, 1570.61, 16.9771, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.46971, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3008911, 1, -392.727, 1555.82, 17.1764, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.592381, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3008911, 2, -387.342, 1554.73, 16.7328, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.94095, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3008911, 3, -390.143, 1544.12, 16.8032, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.40549, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3008911, 4, -391.954, 1534.89, 16.8775, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.88182, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3008911, 5, -401.508, 1536.62, 17.173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.99963, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3008911, 6, -410.951, 1543.39, 17.1922, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.65798, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3008911, 7, -416.812, 1548.05, 17.7608, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.60693, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3008911, 8, -424.208, 1551.16, 18.3696, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.60693, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3008911, 9, -429.021, 1552.79, 18.3278, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.9368, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3008911, 10, -416.235, 1546.81, 17.6732, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.65427, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3008911, 11, -415.047, 1540.61, 17.2976, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.84001, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3008911, 12, -419.956, 1536.64, 17.63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.80859, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3008911, 13, -425.084, 1531.36, 18.2603, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.96175, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3008911, 14, -429.651, 1525.79, 18.5796, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.07956, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3008911, 15, -423.778, 1532.59, 18.1165, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.773029, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3008911, 16, -416.668, 1538.53, 17.1238, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.670927, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3008911, 17, -409.094, 1544.45, 16.9799, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.62773, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3008911, 18, -400.958, 1550.35, 16.7739, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.62773, 0, 0);

-- Updated ReqCreatureOrGo for the quests Curing Sickness (6124 & 6129).

REPLACE INTO `zp_mangosd`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (6124, 2, -263, 14, 14, 0, 1024, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6123, 0, 0, 6125, 15826, 1, 0, 'Curing the Sick', 'The amount of salve made out of the reagents you brought me is good enough for ten doses, $N.  While I work with the village to try and make some more salve, I\'d like for you to help us get a head start.  All around Darkshore are sickly deer; use the salve on them and cure their malaise.$B$BDendrite Starblaze in Moonglade will want to talk to you when you\'re done, I\'m sure.  Please extend Auberdine\'s thanks to the Cenarion Circle there... and let me say thanks to you directly for the help you\'ve given!', 'Use the Curative Animal Salve on 10 Sickly Deer that are located throughout Darkshore; doing so should cure them.  Sickly Deer have been reported starting south of the Cliffspring River to the north of Auberdine and extending all the way into southern Darkshore where the edge of Ashenvale begins.', 'You have done well in tending to the sickly deer of Darkshore; they are unwitting victims of a greater taint and corruption that is spreading all throughout the land.  There are those in Darnassus who choose to recognize this threat... and there are those who ignore the growing signs.  I hope you will not be one to put blinders on about what facts stare you in the face, $N.$B$BRegardless, you\'ve proven your worth as a friend of nature and the Circle - take this as a symbol of such.', 'Have you completed what was asked of you by Alanndarian Nightsong of Auberdine? Your work is not complete unless it is.', '', 'Sickly Deer cured', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12298, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15866, 0, 0, 0, 1, 0, 0, 0, 609, 0, 0, 0, 0, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (6129, 2, -263, 14, 14, 0, 1024, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6128, 0, 0, 6130, 15826, 1, 0, 'Curing the Sick', 'I was able to make enough salve for ten doses of curing, $N.  While I work with local authorities to try and make some more salve, I\'d like for you to help us get a head start.  All around the northern Barrens are sickly gazelles; use the salve on them and cure their malaise.$B$BDendrite Starblaze in Moonglade will want to talk to you when you\'re done, I\'m sure.  Please extend our thanks to the Cenarion Circle there... and let me say thanks to you directly for the help you\'ve given!', 'Use the Curative Animal Salve on 10 Sickly Gazelles that are located throughout the northern part of the Barrens; doing so should cure them.  Sickly Gazelles have been reported north of the east-west road that runs through the Crossroads.', 'You have done well in tending to the sickly gazelles of the Barrens; they are unwitting victims of a greater taint and corruption that is spreading all throughout the land. You $R are most eager to understand the ways of Cenarius; you, like your elders in Thunder Bluff, are proving that the need for balance transcends artificial racial barriers.$B$B$N, you\'ve proven your worth as an friend of nature and the Circle - take this as a symbol of such.', 'Have you completed what was asked of you by Tonga Runetotem at the Crossroads? Your work is not complete unless it is.', '', 'Sickly Gazelle cured', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12296, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15866, 0, 0, 0, 1, 0, 0, 0, 609, 0, 0, 0, 0, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

/************************ Barthilas event Strat UD + remove port at baron on aggro **************************************/

-- add yell
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1329020, 'Intruders at the Service Gate! Lord Rivendare must be warned!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 0, 0, 'barthilas SAY_WARN_BARON');

-- add waypoints 
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (54237, 1, 3690.36, -3604.17, 138.395, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3010930, 0.020707, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (54237, 2, 3714.41, -3605.97, 141.494, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3010931, 0.283816, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (54237, 3, 3778.16, -3580.09, 142.436, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3010932, 5.05904, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (54237, 4, 3781.45, -3588.16, 143.669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3010933, 5.0826, 0, 0);

-- Make sure he doesn't use waypoint movement on spawn
UPDATE `zp_mangosd`.`creature` SET `MovementType`=0 WHERE  `guid`=54237;

-- Dalinda Malem no longer hostile to mobs around, unless on escort q
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=35 WHERE  `entry`=5644;

/********************** Drakonids' incorrect summon spell **************************************************************/
-- Delet casting of the summon spell.
delete from zp_mangosd.creature_ai_scripts where creature_id in (select entry from zp_mangosd.creature_template where name like "%Drakonid") and action1_param1 = 20477;

/********************* §§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§ ***************************************************************/
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES ('800020', '0', '0', '1206', '0', 'Schnake', '0', '1', '1', '64', '64', '0', '0', '20', '7', '7', '0', '0.75', '0.95', '0', '0', '2', '2', '0', '1', '1', '2000', '0', '0', '1', '32768', '0', '0', '0', '0', '0', '0', '1.76', '2.42', '100', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '1', '1', '0', '0', '1', '0', '0', '0', '0', '0', 'mob_schnake');
UPDATE `zp_mangosd`.`creature_template` SET `subname`='andkem\'s pet' WHERE `entry`='800020';

-- Shatterspear Drummer & Revantusk Drummer

REPLACE INTO `zp_mangosd`.`creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (100001102, 11196, 1, 0, 100, 1, 0, 0, 0, 0, 5, 36, 0, 0, 5, 333, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (100001103, 14734, 1, 0, 100, 1, 0, 0, 0, 0, 5, 36, 0, 0, 5, 333, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (14734, 0, 0, 14764, 14765, 'Revantusk Drummer', NULL, 0, 50, 50, 3517, 3517, 0, 0, 3900, 1494, 1494, 0, 1.1, 1.11286, 0, 0, 85, 109, 0, 45, 1, 2000, 0, 0, 1, 36864, 0, 0, 0, 0, 0, 0, 66.44, 91.355, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 1, 2067, 0, 0, 0, 2, '');

-- SQL for the quests Egg Collection and Egg Freezing

REPLACE INTO `zp_mangosd`.`item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `Duration`, `ExtraFlags`) VALUES (12241, 12, 0, 'Collected Dragon Egg', 1659, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 8, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 4, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'internalitemhandler', 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (15958, 0, 175124);

-- SQL for the quests Triage (Horde & Alliance)

REPLACE INTO `zp_mangosd`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (6622, 2, -324, 35, 45, 0, 0, 178, 129, 225, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 16991, 1, 0, 'Triage', 'Good day, doctor. You will be tested on your ability to triage patients accordingly this afternoon. Should you pass your examination, you will join the prestigious ranks of Horde Trauma.$B$BNow pay attention! The critically injured must be tended to first. After the criticals come the badly injured. The injured should be tended to last. You must save 15 patients to pass this exam. You will fail should 6 of your patients die in triage.$B$BTriage bandages will be supplied.$B$BGood luck, doctor.\r\n', 'Save patients by using Triage Bandages to tend to their wounds. You must save 15 patients before 6 of them die from their injuries.$B$BRemember the order of triage! Critically Injured Soldiers die the fastest followed by Badly Injured Soldiers. Injured Soldiers take the longest to die and should be saved AFTER your Critically Injured and Badly Injured Soldiers have been triaged.', 'Doctor $N, welcome to Horde Trauma.', 'Miraculous work, doctor. Simply miraculous.', '15 Patients Saved!', '', '', '', '', 16991, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3300, 10846, 10847, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (6624, 2, -324, 35, 45, 0, 0, 77, 129, 225, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 16991, 1, 0, 'Triage', 'Good day, doctor. You will be tested on your ability to triage patients accordingly this afternoon. Should you pass your examination, you will join the prestigious ranks of Alliance Trauma.$B$BNow pay attention! The critically injured must be tended to first. After the criticals come the badly injured. The injured should be tended to last. You must save 15 patients to pass this exam. You will fail should 6 of your patients die in triage.$B$BGood luck, doctor.\r\n', 'Save patients by using Triage Bandages to tend to their wounds. You must save 15 patients before 6 of them die from their injuries.$B$BRemember the order of triage! Critically Injured Soldiers die the fastest followed by Badly Injured Soldiers. Injured Soldiers take the longest to die and should be saved AFTER your Critically Injured and Badly Injured Soldiers have been triaged.', 'Doctor $N, welcome to Alliance Trauma.', 'Miraculous work, doctor. Simply miraculous.', '15 Patients Saved!', '', '', '', '', 16991, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3300, 10846, 10847, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- AI for the creepy children in Elwynn
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_creepy_child' WHERE `entry`='805';

-- Waypoints for the creepy children in Elwynn

REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 1, -9374.92, -70.0467, 69.2019, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 2, -9379.69, -74.8843, 69.1775, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 3, -9384.07, -77.3692, 69.1705, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 4, -9389.04, -74.0014, 66.6089, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 5, -9392.53, -70.8163, 64.4377, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 6, -9389.36, -67.4792, 64.4377, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 7, -9386.81, -71.2856, 64.4377, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 8, -9380.38, -78.1003, 64.4377, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 9, -9384.77, -86.1301, 63.3096, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 10, -9378.32, -91.5387, 63.3628, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 11, -9366.93, -87.3724, 64.7227, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 12, -9362.44, -78.7915, 65.6496, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 13, -9357.63, -66.2752, 64.6178, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 14, -9353.02, -53.6981, 65.9888, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 15, -9352.38, -41.4122, 64.7904, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 16, -9358.69, -33.3503, 63.9862, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 17, -9368.49, -23.3577, 62.9392, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 18, -9380.61, -10.734, 61.6121, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 19, -9392.31, 2.27052, 60.347, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 20, -9401.73, 12.6294, 59.6123, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 21, -9410.96, 23.1564, 58.4466, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 22, -9422.29, 36.4951, 57.2348, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 23, -9431.41, 47.1088, 56.6259, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 24, -9436.99, 54.8988, 56.0985, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 25, -9438.42, 69.6597, 56.0359, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 26, -9429.29, 76.4232, 56.3587, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 27, -9417.98, 84.6701, 56.7489, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 28, -9406.75, 93.027, 57.9189, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 29, -9389.73, 101.474, 59.2328, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 30, -9373.39, 107.718, 60.6218, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 31, -9353.93, 115.592, 62.1915, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 32, -9335.41, 125.434, 63.566, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 33, -9320.17, 134.038, 64.3909, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 34, -9307.98, 140.921, 65.5701, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 35, -9293.66, 146.645, 66.246, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 36, -9276.67, 150.723, 66.8527, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 37, -9261.17, 154.937, 67.4326, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 38, -9248.02, 164.703, 67.9164, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 39, -9238.82, 178.407, 67.7639, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 40, -9227.79, 191.745, 68.0667, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 41, -9215.91, 204.589, 69.2351, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 42, -9201.65, 220.004, 71.1137, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 43, -9194.51, 227.711, 71.743, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 44, -9186.31, 239.502, 72.5472, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 45, -9182.13, 250.62, 73.5495, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 46, -9179.94, 265.456, 74.6507, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 47, -9179.54, 286.441, 76.4524, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 48, -9179.59, 300.441, 78.3119, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 49, -9179.64, 314.441, 79.4413, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 50, -9178.06, 329.582, 81.8173, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 51, -9171.07, 344.218, 85.2986, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 52, -9160.35, 356.351, 88.5854, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 53, -9150.53, 366.324, 90.3022, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 54, -9138.25, 378.787, 90.6227, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 55, -9127.8, 388.084, 91.1491, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 56, -9114.19, 399.07, 92.4896, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 57, -9100.33, 409.752, 92.5327, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 58, -9083.43, 422.222, 92.5269, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 59, -9072.17, 430.535, 93.056, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 60, -9060.9, 438.847, 93.056, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 61, -9046.13, 448.738, 93.056, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 62, -9059.93, 438.016, 93.056, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 63, -9079.35, 423.079, 92.6157, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 64, -9102.09, 406.754, 92.6328, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 65, -9119.66, 395.253, 92.1658, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 66, -9140.88, 378.26, 90.6774, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 67, -9155.75, 360.831, 89.6287, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 68, -9168.26, 347.892, 86.3892, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 69, -9178.03, 332.599, 82.4261, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 70, -9180.47, 303.438, 78.5695, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 71, -9180.01, 271.951, 75.0707, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 72, -9187.23, 239.67, 72.4794, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 73, -9195.91, 226.552, 71.6698, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 74, -9215.97, 207.023, 69.5021, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 75, -9237.47, 179.994, 67.7288, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 76, -9250.79, 162.61, 67.8353, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 77, -9263.8, 154.776, 67.2889, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 78, -9295.33, 149.064, 66.398, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 79, -9320.21, 134.59, 64.4413, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 80, -9347.28, 118.486, 62.9028, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 81, -9375.48, 106.63, 60.5317, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 82, -9400.67, 97.5674, 58.5999, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 83, -9427.47, 77.8518, 56.494, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 84, -9456.88, 63.8368, 55.886, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 85, -9444.73, 56.9771, 56.0383, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 86, -9430.64, 45.0147, 56.7478, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 87, -9405.16, 16.174, 59.324, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 88, -9379.97, -12.9339, 61.778, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 89, -9360.99, -32.0807, 63.8395, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 90, -9342.64, -47.2905, 65.394, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 91, -9321.29, -54.5829, 66.4491, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 92, -9297.33, -59.6229, 67.2861, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 93, -9279.05, -70.7701, 68.2362, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 94, -9257.18, -87.4148, 69.6432, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 95, -9232.42, -102.215, 70.9959, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 96, -9205.05, -110.504, 71.0409, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 97, -9179.16, -112.823, 71.0026, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 98, -9163.96, -114.831, 72.6991, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 99, -9157.83, -130.137, 74.5694, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 100, -9155.91, -142.614, 73.5992, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 101, -9156.63, -128.637, 74.5852, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 102, -9167.42, -112.97, 72.1702, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 103, -9186.93, -113.558, 70.9205, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 104, -9209.51, -108.805, 71.1493, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 105, -9236.34, -100.77, 70.7459, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 106, -9256.71, -87, 69.6934, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 107, -9281.33, -67.3692, 68.1128, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 108, -9298.62, -59.5126, 67.1812, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 109, -9337.44, -50.5205, 65.6429, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 110, -9350.88, -53.3826, 65.8652, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 111, -9361.18, -71.2618, 63.9362, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 112, -9370.88, -87.1024, 64.2855, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 113, -9379.53, -91.6156, 63.1967, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 114, -9383.95, -85.1205, 63.356, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 115, -9379.52, -77.2238, 64.4379, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 116, -9386.38, -72.2163, 64.4379, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 117, -9391.07, -68.3173, 64.4379, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 118, -9392.32, -72.1618, 64.4379, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 119, -9388.09, -74.8549, 67.4644, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 120, -9382.2, -77.9452, 69.1685, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 121, -9377.15, -72.666, 69.1971, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (805, 122, -9372.93, -66.503, 69.2026, 0, NULL);
/* REPLACE aq20 mobs, first batch*/
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58000', '15343', '509', '0', '0', '-8520.43', '1517.59', '32.5265', '0.981764', '3600', '0', '0', '25026', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58001', '15343', '509', '0', '0', '-8528.91', '1402.16', '31.9079', '1.8025', '3600', '0', '0', '25026', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58002', '15343', '509', '0', '0', '-8617.94', '1430.49', '33.1407', '2.7764', '3600', '0', '0', '25026', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58003', '15343', '509', '0', '0', '-8615.26', '1439.5', '32.4824', '2.78818', '3600', '0', '0', '25026', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58004', '15343', '509', '0', '0', '-8746.35', '1557.45', '25.6721', '1.07993', '3600', '0', '0', '25026', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58005', '15343', '509', '0', '0', '-8723.79', '1517.67', '31.6628', '5.65881', '3600', '0', '0', '25026', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58006', '800008', '509', '0', '0', '-8594.71', '1584.11', '31.9072', '5.96117', '3600', '0', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58007', '800008', '509', '0', '0', '-8601.88', '1486.9', '32.883', '5.51348', '3600', '0', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58008', '800008', '509', '0', '0', '-8693.11', '1552.21', '31.9071', '5.38783', '3600', '0', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58009', '800008', '509', '0', '0', '-8658.92', '1346.49', '31.9079', '6.20856', '3600', '0', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58010', '800008', '509', '0', '0', '-8560.1', '1369.36', '31.9078', '3.59712', '3600', '0', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58011', '800008', '509', '0', '0', '-8562.3', '1373.77', '31.9078', '3.60497', '3600', '0', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58012', '800008', '509', '0', '0', '-8659.66', '1665.57', '21.3889', '2.28158', '3600', '0', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58013', '800008', '509', '0', '0', '-8759.17', '1578.86', '22.6983', '1.03672', '3600', '0', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58014', '800008', '509', '0', '0', '-8823.15', '1604.99', '21.3865', '3.11017', '3600', '0', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58015', '800008', '509', '0', '0', '-8823.41', '1596.81', '21.3865', '3.11017', '3600', '0', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58016', '15327', '509', '0', '0', '-8565.22', '1377.67', '31.9069', '3.95449', '3600', '0', '0', '50128', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58017', '15327', '509', '0', '0', '-8554.82', '1364.06', '31.9069', '3.95449', '3600', '0', '0', '50128', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58018', '15327', '509', '0', '0', '-8603.32', '1489.7', '32.7582', '5.27788', '3600', '0', '0', '50128', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58019', '15327', '509', '0', '0', '-8662.99', '1338.75', '32.4013', '2.36012', '3600', '0', '0', '50128', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58020', '15327', '509', '0', '0', '-8689.13', '1556.44', '31.9072', '2.49757', '3600', '0', '0', '50128', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58021', '15327', '509', '0', '0', '-8592.76', '1576.4', '31.9074', '6.15752', '3600', '0', '0', '50128', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58022', '15327', '509', '0', '0', '-8650.91', '1672.2', '22.1078', '0.801107', '3600', '0', '0', '50128', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58023', '15327', '509', '0', '0', '-8764.58', '1576.44', '24.7679', '3.81704', '3600', '0', '0', '50128', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58024', '15327', '509', '0', '0', '-8823.44', '1596.8', '21.3864', '0.051064', '3600', '0', '0', '50128', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58025', '15327', '509', '0', '0', '-8824.42', '1610.51', '21.3868', '3.2437', '3600', '0', '0', '50128', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58026', '15325', '509', '0', '0', '-8826.44', '1599.26', '21.3864', '6.20859', '3600', '0', '0', '24993', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58027', '15325', '509', '0', '0', '-8825.99', '1594.32', '21.3864', '6.24393', '3600', '0', '0', '24993', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58028', '15325', '509', '0', '0', '-8822.32', '1612.13', '20.441', '3.00808', '3600', '0', '0', '24993', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58029', '15325', '509', '0', '0', '-8823.91', '1609.56', '21.3866', '3.00808', '3600', '0', '0', '24993', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58030', '15325', '509', '0', '0', '-8765.21', '1579.57', '23.7586', '4.06052', '3600', '0', '0', '24993', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58031', '15325', '509', '0', '0', '-8760.92', '1576.13', '23.7907', '4.03695', '3600', '0', '0', '24993', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58032', '15325', '509', '0', '0', '-8652.89', '1666.12', '21.5801', '0.757914', '3600', '0', '0', '24993', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58033', '15325', '509', '0', '0', '-8656.64', '1670.09', '21.5726', '0.757914', '3600', '0', '0', '24993', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58034', '15325', '509', '0', '0', '-8684.67', '1557.17', '31.9075', '2.49364', '3600', '0', '0', '24993', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58035', '15325', '509', '0', '0', '-8687.31', '1553.68', '31.9075', '2.49364', '3600', '0', '0', '24993', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58036', '15325', '509', '0', '0', '-8595.38', '1573.83', '32.032', '6.02794', '3600', '0', '0', '24993', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58037', '15325', '509', '0', '0', '-8594', '1579.69', '31.9075', '6.0515', '3600', '0', '0', '24993', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58038', '15325', '509', '0', '0', '-8606.32', '1490.75', '32.3972', '5.36035', '3600', '0', '0', '24993', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58039', '15325', '509', '0', '0', '-8604.14', '1492.4', '32.6756', '5.36035', '3600', '0', '0', '24993', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58040', '15325', '509', '0', '0', '-8551.5', '1364.17', '31.9085', '3.98592', '3600', '0', '0', '24993', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58041', '15325', '509', '0', '0', '-8555.18', '1367.45', '31.907', '3.98592', '3600', '0', '0', '24993', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58042', '15325', '509', '0', '0', '-8562.08', '1378.06', '31.907', '3.87989', '3600', '0', '0', '24993', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58043', '15325', '509', '0', '0', '-8565.02', '1381.3', '31.907', '3.87989', '3600', '0', '0', '24993', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58044', '15325', '509', '0', '0', '-8659.44', '1338.55', '32.1916', '2.2227', '3600', '0', '0', '24993', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58045', '15325', '509', '0', '0', '-8663.4', '1335.6', '33.0172', '2.21092', '3600', '0', '0', '24993', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58046', '15387', '509', '0', '0', '-8991.87', '1544.52', '21.5402', '2.93741', '25', '0', '0', '29650', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58047', '15387', '509', '0', '0', '-9000.12', '1548.71', '22.1545', '2.80781', '25', '0', '0', '31111', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58048', '15387', '509', '0', '0', '-9005.65', '1540.26', '21.3876', '2.87457', '25', '0', '0', '29650', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58049', '15387', '509', '0', '0', '-8999.48', '1559.31', '22.0991', '2.87457', '25', '0', '0', '29650', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58050', '15387', '509', '0', '0', '-9027.7', '1511.36', '21.3908', '2.40726', '25', '0', '0', '29650', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58051', '15387', '509', '0', '0', '-9036.07', '1506.56', '21.4651', '2.1795', '25', '0', '0', '29650', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58052', '15387', '509', '0', '0', '-9044.73', '1501.99', '21.6407', '2.1795', '25', '0', '0', '31111', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58053', '15387', '509', '0', '0', '-9069.55', '1519.77', '21.3862', '2.32872', '25', '0', '0', '31111', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58054', '15387', '509', '0', '0', '-9076.49', '1515.23', '21.3862', '2.15201', '25', '0', '0', '31111', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58055', '15387', '509', '0', '0', '-9083.1', '1511.38', '21.4098', '2.07347', '25', '0', '0', '31111', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58056', '15387', '509', '0', '0', '-9118.51', '1552.4', '21.3868', '2.07347', '25', '0', '0', '29650', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58057', '15387', '509', '0', '0', '-9125.47', '1549.22', '21.3868', '1.89675', '25', '0', '0', '29650', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58058', '15387', '509', '0', '0', '-9132.3', '1547.67', '21.3868', '1.69647', '25', '0', '0', '29650', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58059', '15387', '509', '0', '0', '-9124.8', '1541.52', '21.3868', '1.75538', '25', '0', '0', '31111', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58060', '15387', '509', '0', '0', '-9107.35', '1573.77', '21.4013', '2.40726', '25', '0', '0', '31111', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58061', '15387', '509', '0', '0', '-9101.93', '1580.37', '21.3888', '2.45438', '25', '0', '0', '29650', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58062', '15387', '509', '0', '0', '-9097.81', '1586.82', '21.3874', '2.63502', '25', '0', '0', '31111', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58063', '15387', '509', '0', '0', '-9079.44', '1611.76', '21.3874', '3.30261', '25', '0', '0', '31111', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58064', '15387', '509', '0', '0', '-9080.38', '1627.92', '21.3874', '3.47932', '25', '0', '0', '29650', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58065', '15387', '509', '0', '0', '-9027.48', '1602.02', '21.3867', '3.14161', '25', '0', '0', '31111', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58066', '15344', '509', '0', '0', '-9028.68', '1594.08', '21.3867', '3.13769', '25', '0', '0', '12332', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58067', '15344', '509', '0', '0', '-9027.33', '1612.22', '21.6694', '3.19659', '25', '0', '0', '12095', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58068', '15344', '509', '0', '0', '-9018.21', '1611.46', '23.8151', '3.01988', '25', '0', '0', '12332', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58069', '15344', '509', '0', '0', '-9019.53', '1601.91', '21.547', '3.08663', '25', '0', '0', '12332', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58070', '15344', '509', '0', '0', '-9019.97', '1593.83', '21.3868', '3.08663', '25', '0', '0', '12095', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58071', '15344', '509', '0', '0', '-9080.58', '1620.74', '21.3866', '3.42043', '25', '0', '0', '12332', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58072', '15344', '509', '0', '0', '-9071.55', '1613.05', '21.3888', '3.34189', '25', '0', '0', '12095', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58073', '15344', '509', '0', '0', '-9073.46', '1622.49', '21.3874', '3.44399', '25', '0', '0', '12332', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58074', '15344', '509', '0', '0', '-9074.59', '1630.83', '21.3874', '3.58144', '25', '0', '0', '12332', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58075', '15344', '509', '0', '0', '-9115.42', '1544.86', '21.3864', '1.97923', '25', '0', '0', '12332', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58076', '15344', '509', '0', '0', '-9131.38', '1541.06', '21.3864', '1.72397', '25', '0', '0', '12095', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58077', '15344', '509', '0', '0', '-9087.04', '1516.86', '21.387', '2.15987', '25', '0', '0', '12332', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58078', '15344', '509', '0', '0', '-9080.49', '1521.24', '21.387', '2.15987', '25', '0', '0', '12332', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58079', '15344', '509', '0', '0', '-9074.12', '1525.49', '21.387', '2.15987', '25', '0', '0', '12332', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58080', '15344', '509', '0', '0', '-9041.21', '1496.77', '22.1256', '2.17951', '25', '0', '0', '12095', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58081', '15344', '509', '0', '0', '-9033.09', '1501.58', '21.7009', '2.17951', '25', '0', '0', '12095', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58082', '15344', '509', '0', '0', '-9024.8', '1506.19', '21.4779', '2.17951', '25', '0', '0', '12332', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58083', '15344', '509', '0', '0', '-8996.66', '1536.46', '21.3973', '2.78819', '25', '0', '0', '12095', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58084', '15344', '509', '0', '0', '-8991.69', '1557.3', '21.5348', '2.84317', '25', '0', '0', '12332', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58085', '15391', '509', '0', '0', '-9007.93', '1553.78', '21.4471', '2.6586', '25', '0', '0', '82662', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58086', '15392', '509', '0', '0', '-9039.84', '1515.01', '21.3867', '2.16773', '25', '0', '0', '69952', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58087', '15390', '509', '0', '0', '-9082.3', '1526.53', '21.3868', '2.19129', '25', '0', '0', '80342', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58088', '15388', '509', '0', '0', '-9126.08', '1557.73', '21.4741', '1.9164', '25', '0', '0', '70457', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58089', '15385', '509', '0', '0', '-9109.86', '1586.18', '21.3878', '2.50152', '25', '0', '0', '71720', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58090', '15386', '509', '0', '0', '-9088.17', '1619.25', '21.429', '3.33012', '25', '0', '0', '57387', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58091', '15389', '509', '0', '0', '-9035.08', '1605.42', '21.3869', '3.21623', '25', '0', '0', '69073', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58092', '15344', '509', '0', '0', '-9091.79', '1583.9', '21.3867', '2.6743', '25', '0', '0', '12095', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58093', '15344', '509', '0', '0', '-9096.74', '1577.06', '21.3867', '2.48188', '25', '0', '0', '12095', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('58094', '15344', '509', '0', '0', '-9101.77', '1569.9', '21.3892', '2.529', '25', '0', '0', '12332', '0', '0', '0');



/* set pathings */
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '1', '-8515.41', '1524.5', '32.1542', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.958187', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '2', '-8510.29', '1529.01', '32.0519', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.702933', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '3', '-8503.96', '1532.84', '31.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.537999', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '4', '-8514.28', '1525.78', '32.1287', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.74242', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '5', '-8518.86', '1520.42', '32.3737', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.00553', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '6', '-8525.54', '1509.41', '32.9157', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.16261', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '7', '-8533.81', '1489.17', '32.4977', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.32362', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '8', '-8550.22', '1473.02', '31.9071', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.91914', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '9', '-8563.57', '1458.23', '31.9071', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.97804', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '10', '-8584.73', '1452.71', '31.9141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.39685', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '11', '-8619.12', '1447.62', '31.9642', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.27904', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '12', '-8638.71', '1434.78', '31.9073', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.72279', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '13', '-8646.77', '1417.07', '33.0679', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.33147', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '14', '-8642.07', '1403.84', '31.9566', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.05403', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '15', '-8626.18', '1401.77', '32.6763', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.15359', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '16', '-8614.91', '1407.18', '31.924', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.455524', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '17', '-8612.37', '1418.21', '33.0857', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.37444', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '18', '-8613.01', '1429.14', '33.2776', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.6297', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '19', '-8619.89', '1437.14', '33.0302', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.28158', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '20', '-8627.55', '1437.81', '32.8775', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.35365', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '21', '-8640', '1429.15', '31.908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.0016', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '22', '-8647.3', '1417.7', '33.0267', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.31576', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '23', '-8642.86', '1408.68', '32.5204', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.33284', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '24', '-8630.38', '1403.1', '32.7431', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.86299', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '25', '-8617.7', '1405.36', '31.9078', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.176702', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '26', '-8615.11', '1416.55', '32.7363', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.54722', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '27', '-8617.5', '1431.18', '33.1466', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.7475', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '28', '-8627.49', '1439.26', '32.9123', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.72532', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '29', '-8639.25', '1430.32', '31.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.88378', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '30', '-8644.1', '1418.8', '33.2599', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.47676', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '31', '-8636.13', '1405.92', '32.8025', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.33676', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '32', '-8621.99', '1403.35', '32.3489', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.015686', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '33', '-8613.52', '1409.49', '32.0217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.805011', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '34', '-8614', '1422.71', '33.3428', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.53936', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '35', '-8617.17', '1432.78', '33.1375', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.88493', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '36', '-8624.78', '1436.77', '33.0706', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.65855', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '37', '-8639.12', '1433.02', '31.9073', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.4361', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '38', '-8624.42', '1434.82', '32.8504', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.121714', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '39', '-8612.44', '1431.27', '33.2251', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.98079', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '40', '-8607.9', '1417.7', '33.1157', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.88909', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '41', '-8615.31', '1408.11', '31.9395', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.04479', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '42', '-8625.11', '1400.63', '32.6548', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.5657', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '43', '-8634.31', '1405.73', '32.9032', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.63893', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '44', '-8642.32', '1419.14', '33.16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.10485', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '45', '-8638.51', '1431.04', '31.9074', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.26055', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '46', '-8628.58', '1436.5', '32.6302', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.502641', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '47', '-8614.96', '1433.16', '33.1637', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.03577', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '48', '-8609.35', '1422.87', '33.2148', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.0933', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '49', '-8614.19', '1408.01', '31.9679', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.39822', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '50', '-8621.21', '1397.67', '32.5591', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.10762', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '51', '-8633.1', '1399.47', '32.2595', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.21874', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '52', '-8640.69', '1404.97', '32.1915', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.25801', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '53', '-8644.93', '1417.15', '33.2153', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.8928', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '54', '-8640.66', '1429.31', '31.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.18594', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '55', '-8630.21', '1435.43', '32.2634', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.530134', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '56', '-8619.29', '1434.98', '33.0982', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.2282', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '57', '-8609.64', '1429.06', '33.2221', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.72162', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '58', '-8607.74', '1419.11', '33.1235', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.8459', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '59', '-8614.28', '1407.1', '31.9393', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.21366', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '60', '-8624.46', '1403.16', '32.5224', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.45575', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '61', '-8635.89', '1406.98', '32.9442', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.63108', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '62', '-8645.94', '1417.36', '33.1654', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.33656', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '63', '-8644.57', '1428.6', '31.9074', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.44906', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '64', '-8636.38', '1438.54', '32.0076', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.879645', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '65', '-8625.47', '1438.97', '33.0433', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.039269', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '66', '-8616.42', '1436.51', '32.9272', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.01615', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '67', '-8597.12', '1445.04', '31.9074', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.416261', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '68', '-8578.07', '1446.92', '32.0008', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.098175', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '69', '-8568.04', '1454.38', '31.9751', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.6401', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '70', '-8552.01', '1474.08', '31.9077', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.8875', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '71', '-8542.36', '1482.02', '32.1493', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.718639', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58000', '72', '-8531.49', '1499.17', '33.1013', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.01709', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58001', '1', '-8540.74', '1431.28', '31.9074', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.91243', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58001', '2', '-8550.49', '1452.41', '32.4027', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.00275', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58001', '3', '-8584.78', '1441.17', '31.908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.44003', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58001', '4', '-8582.48', '1458.39', '32.1271', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.46476', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58001', '5', '-8605.03', '1456.58', '31.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.00021', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58001', '6', '-8592.55', '1470.06', '32.3385', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.801093', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58001', '7', '-8554.63', '1475.94', '31.9077', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.180628', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58001', '8', '-8583.84', '1475.57', '32.9632', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.01199', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58001', '9', '-8554.52', '1470.13', '31.9081', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.13394', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58001', '10', '-8601.56', '1463.28', '31.9828', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.27117', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58001', '11', '-8598.85', '1454.16', '32.4279', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.03046', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58001', '12', '-8588.03', '1453.61', '31.9265', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.23211', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58001', '13', '-8558.06', '1474.32', '31.9079', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.604732', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58001', '14', '-8546.44', '1472.3', '31.9079', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.12608', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58001', '15', '-8541.21', '1443.58', '31.908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.89694', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58001', '16', '-8532.18', '1413.4', '31.908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.00297', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58001', '17', '-8535.61', '1412.27', '31.908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.45966', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58001', '18', '-8553.14', '1416.47', '32.5637', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.93737', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58001', '19', '-8594.48', '1431.46', '32.8707', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.78814', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58001', '20', '-8594.73', '1427.86', '32.5637', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.88515', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58001', '21', '-8584.89', '1403.88', '31.9073', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.13648', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58001', '22', '-8560.8', '1334.81', '32.2936', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.04223', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58001', '23', '-8580.39', '1393.3', '31.9908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.89279', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58001', '24', '-8594.57', '1419.58', '31.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.06557', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58001', '25', '-8599.4', '1433.17', '32.8226', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.24483', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58001', '26', '-8581.37', '1425.28', '32.9593', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.87083', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58001', '27', '-8547.45', '1413.97', '32.1579', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.96115', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58001', '28', '-8536.69', '1408.37', '31.9073', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.79229', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58002', '1', '-8624.15', '1432.48', '32.6401', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.98452', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58002', '2', '-8631.68', '1430.36', '31.9085', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.41649', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58002', '3', '-8638.27', '1425.5', '31.907', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.86416', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58002', '4', '-8642.23', '1419.22', '33.1462', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.15083', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58002', '5', '-8639.7', '1411.84', '33.126', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.04226', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58002', '6', '-8631.24', '1407.83', '32.9354', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.03578', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58002', '7', '-8622.67', '1407.29', '32.0265', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.01963', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58002', '8', '-8616.9', '1411.28', '31.9617', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.887495', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58002', '9', '-8615.62', '1419.78', '33.0845', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.42157', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58002', '10', '-8617.2', '1427.83', '33.1443', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.81427', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58003', '1', '-8621.8', '1441.48', '32.6936', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.87063', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58003', '2', '-8632.3', '1442.01', '32.5702', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.78954', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58003', '3', '-8641.6', '1435.57', '31.9084', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.96233', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58003', '4', '-8647.36', '1425.36', '32.7672', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.2058', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58003', '5', '-8650.56', '1412.86', '32.3047', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.57886', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58003', '6', '-8646.25', '1404.59', '32.0889', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.53704', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58003', '7', '-8633.72', '1400.17', '32.2628', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.98865', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58003', '8', '-8621.04', '1397.9', '32.5479', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.14965', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58003', '9', '-8609.09', '1404.46', '32.1507', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.502636', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58003', '10', '-8605.83', '1411.13', '33.214', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.14274', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58003', '11', '-8608.08', '1422.21', '33.1602', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.81818', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58003', '12', '-8613.16', '1433.23', '33.1685', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.00275', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58003', '13', '-8617.1', '1439.52', '32.5562', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.14019', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '1', '-8743.45', '1561.9', '23.4685', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.01315', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '2', '-8741.79', '1570.93', '21.3885', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.38621', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '3', '-8737.18', '1581.81', '21.3885', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.17023', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '4', '-8731.78', '1587.1', '21.3869', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.773601', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '5', '-8728.91', '1586.45', '21.3869', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.90618', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '6', '-8723.94', '1583.27', '21.3869', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.45458', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '7', '-8713.3', '1572.12', '24.7427', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.47421', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '8', '-8705.74', '1564.83', '30.4512', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.51741', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '9', '-8698.4', '1557.8', '31.9299', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.51741', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '10', '-8687.28', '1547.1', '31.9075', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.51741', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '11', '-8679.55', '1542.81', '31.9075', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.77659', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '12', '-8665.04', '1537.52', '31.9075', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.93367', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '13', '-8652.16', '1527.37', '31.9075', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.61558', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '14', '-8644.96', '1521.69', '31.9075', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.61558', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '15', '-8634.49', '1515.55', '31.913', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.75303', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '16', '-8628.81', '1510.59', '31.9272', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.56453', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '17', '-8626.8', '1507.21', '31.925', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.25037', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '18', '-8620.37', '1481.48', '31.8454', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.97549', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '19', '-8624.71', '1499.99', '31.9049', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.79855', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '20', '-8627.55', '1508.38', '31.9244', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.89672', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '21', '-8630.61', '1514.55', '31.9292', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.0538', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '22', '-8644.32', '1520.03', '31.9078', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.76066', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '23', '-8652.84', '1526.17', '31.9078', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.51326', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '24', '-8661.24', '1535.4', '31.9078', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.30906', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '25', '-8677.63', '1540.16', '31.9078', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.85884', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '26', '-8688.04', '1548.7', '31.9078', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.45436', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '27', '-8708.11', '1568.98', '27.9741', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.36796', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '28', '-8723.38', '1583.89', '21.3865', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.36796', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '29', '-8737.82', '1580.84', '21.3869', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.34971', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '30', '-8746.28', '1577.09', '21.3926', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.85237', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '31', '-8751.33', '1568', '23.6637', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.6731', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '32', '-8751.33', '1560.46', '26.1133', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.73986', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '33', '-8749.73', '1558.8', '26.0582', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.48206', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58004', '34', '-8745.15', '1559.23', '24.7276', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.094224', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '1', '-8714.19', '1509.31', '31.9071', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.58023', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '2', '-8703.09', '1493.04', '31.9086', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.31712', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '3', '-8695.42', '1482.39', '31.9142', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.32105', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '4', '-8689.08', '1457.27', '31.9889', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.95976', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '5', '-8676.17', '1421.74', '31.9081', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.20716', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '6', '-8677.73', '1456.14', '31.9081', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.62967', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '7', '-8681.73', '1469.34', '31.9081', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.87707', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '8', '-8701.39', '1490.04', '31.9089', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.34439', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '9', '-8714.82', '1505.34', '31.938', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.28941', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '10', '-8720.69', '1515.96', '31.6815', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.59826', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '11', '-8718.19', '1516.74', '31.81', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.274862', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '12', '-8710.51', '1512.3', '31.9071', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.75302', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '13', '-8679.34', '1491.64', '31.9071', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.69804', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '14', '-8646.56', '1454.05', '32.4665', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.43493', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '15', '-8638.16', '1446.22', '32.6961', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.5331', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '16', '-8649.87', '1457.22', '32.0639', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.38759', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '17', '-8650.45', '1464.42', '31.9069', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.65324', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '18', '-8645.14', '1488.05', '32.3152', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.39798', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '19', '-8641.78', '1486.73', '32.4727', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.90617', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '20', '-8631.92', '1478.07', '32.282', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.55667', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '21', '-8623.16', '1468.78', '31.9075', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.39567', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '22', '-8598.33', '1456.82', '32.5799', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.84727', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '23', '-8585.25', '1455.94', '31.9093', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.2164', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '24', '-8598.58', '1471.31', '32.0339', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.28549', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '25', '-8609.98', '1479.51', '31.8272', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.43471', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '26', '-8611.51', '1490.21', '31.6495', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.71214', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '27', '-8600.2', '1509.82', '32.7554', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.03278', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '28', '-8593.03', '1524.59', '41.185', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.1231', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '29', '-8610.45', '1510.14', '32.148', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.8445', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '30', '-8625.48', '1495', '31.9009', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.9309', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '31', '-8643.62', '1485.08', '32.1913', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.63637', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '32', '-8634.21', '1505.69', '31.9084', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.14273', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '33', '-8622.04', '1525.94', '32.2187', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.02492', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '34', '-8637.39', '1514.69', '31.9094', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.77382', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '35', '-8651.54', '1501.52', '32.8082', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.89948', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '36', '-8648.9', '1515.7', '31.9244', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.38621', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '37', '-8644.51', '1527.38', '31.908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.20556', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '38', '-8653.57', '1541.05', '31.908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.15197', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '39', '-8668.55', '1552.81', '31.908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.46613', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '40', '-8685.73', '1561.74', '31.908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.66248', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '41', '-8679.02', '1550.07', '31.908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.22288', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '42', '-8669.43', '1543.23', '31.908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.68626', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '43', '-8648.2', '1534.45', '31.908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.89438', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '44', '-8644.19', '1532.2', '31.908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.77265', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '45', '-8646.44', '1518.95', '31.908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.53958', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '46', '-8655.38', '1496.38', '32.1068', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.83549', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '47', '-8644.54', '1502.56', '32.7526', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.757887', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '48', '-8628.57', '1521.29', '31.9755', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.867843', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '49', '-8619.35', '1535.25', '32.8023', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.98958', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '50', '-8626.95', '1522.98', '32.0179', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.11939', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '51', '-8640.51', '1509.2', '31.9356', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.93483', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '52', '-8649.78', '1492.19', '32.2406', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.13001', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '53', '-8637.71', '1489.1', '32.8613', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.604739', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '54', '-8618.17', '1508.98', '31.9714', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.801089', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '55', '-8596.33', '1524.08', '39.6428', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.604739', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '56', '-8595.05', '1524.22', '40.1524', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.113866', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '57', '-8593.94', '1522.22', '39.2845', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.19539', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '58', '-8595.13', '1516.42', '35.5796', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.49639', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '59', '-8604.17', '1496.38', '32.4983', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.28826', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '60', '-8604.79', '1487.54', '32.5256', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.64169', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '61', '-8604.27', '1480.67', '32.1134', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.78699', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '62', '-8626.85', '1482.27', '32.2647', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.07089', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '63', '-8640.28', '1481.36', '32.1479', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.21227', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '64', '-8650.87', '1477.88', '31.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.85237', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '65', '-8638.38', '1459.81', '32.2174', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.31713', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '66', '-8653.85', '1473.47', '31.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.4033', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '67', '-8632.35', '1445.32', '32.7115', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.37211', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '68', '-8661.5', '1472.78', '31.9083', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.38367', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '69', '-8676.81', '1491.62', '31.9068', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.25407', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '70', '-8692.01', '1503.62', '31.9074', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.47399', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58005', '71', '-8717.24', '1516.95', '31.8876', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.65856', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58006', '1', '-8586.32', '1581.63', '31.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.07112', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58006', '2', '-8579.76', '1583.33', '31.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.255244', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58006', '3', '-8573.89', '1589.82', '31.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.836438', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58006', '4', '-8573.82', '1599.22', '31.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.57864', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58006', '5', '-8579.34', '1604.98', '31.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.39153', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58006', '6', '-8590.12', '1611.02', '31.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.63107', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58006', '7', '-8605.43', '1611.38', '31.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.11802', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58006', '8', '-8621.75', '1606', '31.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.4636', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58006', '9', '-8637.41', '1597.94', '31.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.61675', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58006', '10', '-8649.62', '1591.29', '31.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.83666', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58006', '11', '-8658.65', '1578.65', '31.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.09191', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58006', '12', '-8664.66', '1560.13', '31.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.39822', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58006', '13', '-8688', '1524.03', '31.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.13511', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58006', '14', '-8690.75', '1499.36', '31.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.59457', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58006', '15', '-8679.33', '1485.41', '31.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.41923', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58006', '16', '-8670.48', '1480.85', '31.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.808', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58006', '17', '-8659.43', '1480.93', '31.8905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.003911', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58006', '18', '-8655.99', '1486.25', '31.9065', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.99744', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58006', '19', '-8657.97', '1496.01', '32.0406', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.77498', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58006', '20', '-8673.73', '1517.14', '31.9101', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.21873', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58006', '21', '-8667.44', '1552.35', '31.9074', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.39407', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58006', '22', '-8656.37', '1583.68', '31.9074', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.24484', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58006', '23', '-8646.33', '1593.44', '31.9074', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.765747', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58006', '24', '-8634.98', '1597.42', '31.9074', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.333778', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58006', '25', '-8617.72', '1595.24', '31.9074', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.15751', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58006', '26', '-8602.56', '1587.89', '31.9074', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.81193', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58007', '1', '-8610.52', '1486.83', '31.7529', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.14943', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58007', '2', '-8629.55', '1475.95', '32.1083', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.70314', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58007', '3', '-8642.52', '1474.07', '31.907', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.24761', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58007', '4', '-8675.69', '1455.73', '31.907', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.67565', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58007', '5', '-8696.29', '1431.9', '32.8468', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.00159', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58007', '6', '-8715.36', '1425.83', '35.1614', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.45574', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58007', '7', '-8725.64', '1420.24', '36.0222', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.62853', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58007', '8', '-8698.91', '1451.35', '32.4987', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.88356', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58007', '9', '-8657.39', '1480.72', '31.8987', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.616525', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58007', '10', '-8644.55', '1496.92', '33.0031', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.903195', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58007', '11', '-8624.57', '1528.13', '32.1426', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.00137', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58007', '12', '-8650.56', '1504.03', '32.8363', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.89164', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58007', '13', '-8680.66', '1487.5', '31.9071', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.63638', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58007', '14', '-8706.61', '1457.74', '34.5144', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.00159', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58007', '15', '-8725.21', '1435.79', '35.3848', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.01337', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58007', '16', '-8726.91', '1423.99', '36.6149', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.81193', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58007', '17', '-8701.15', '1432.36', '33.5856', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.333776', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58007', '18', '-8649.51', '1474.06', '31.9078', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.683279', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58007', '19', '-8629.44', '1480.95', '32.383', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.329849', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58007', '20', '-8614.76', '1489.43', '31.5147', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.494783', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58008', '1', '-8647.29', '1530.51', '31.9071', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.89835', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58008', '2', '-8620.25', '1529.6', '32.4279', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.24741', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58008', '3', '-8607.01', '1525.38', '35.2834', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.96118', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58008', '4', '-8602.51', '1516.26', '34.1109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.14437', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58008', '5', '-8608.59', '1493.1', '32.0922', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.465', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58008', '6', '-8606.14', '1484.82', '32.1618', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.02656', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58008', '7', '-8552.62', '1459.07', '32.0841', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.83551', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58008', '8', '-8531.06', '1432.5', '31.9076', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.38391', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58008', '9', '-8520.18', '1397.74', '31.936', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.01478', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58008', '10', '-8547.59', '1341.9', '32.2842', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.24902', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58008', '11', '-8571.32', '1320.18', '34.6955', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.80135', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58008', '12', '-8593.81', '1328.77', '36.8517', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.73321', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58008', '13', '-8617.6', '1348.58', '34.1683', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.39156', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58008', '14', '-8655.54', '1351.55', '31.9074', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.13376', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58008', '15', '-8674.61', '1363.55', '31.9074', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.41512', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58008', '16', '-8688.91', '1390.08', '31.9287', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.91639', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58008', '17', '-8700.56', '1410.14', '32.066', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.12059', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58008', '18', '-8708.9', '1442.7', '33.2601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.77895', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58008', '19', '-8703.32', '1458.13', '34.0303', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.05638', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58008', '20', '-8698.15', '1467.28', '33.374', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.05638', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58008', '21', '-8703.92', '1484.92', '32.131', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.89676', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58008', '22', '-8715.12', '1505.87', '31.9339', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.10489', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58008', '23', '-8708.09', '1529.1', '31.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.17812', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58008', '24', '-8699.3', '1542.12', '31.9203', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.922862', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58009', '1', '-8639.53', '1354.47', '32.1353', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.384854', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58009', '2', '-8639.53', '1354.47', '32.1353', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.17716', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58009', '3', '-8623.23', '1352.61', '33.9109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.16931', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58009', '4', '-8611.31', '1401.57', '31.9074', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.33911', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58009', '5', '-8585.05', '1414.87', '31.9232', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.428048', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58009', '6', '-8570.49', '1446.19', '31.9408', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.13883', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58009', '7', '-8551.03', '1468.8', '31.9076', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.930703', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58009', '8', '-8590.48', '1428.76', '32.8806', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.93878', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58009', '9', '-8585.6', '1396.09', '32.3273', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.86162', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58009', '10', '-8606.88', '1359.76', '31.9794', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.18226', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58009', '11', '-8624.24', '1351.95', '33.9393', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.56179', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58009', '12', '-8647.56', '1346.98', '31.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.34974', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58010', '1', '-8585.7', '1347.93', '32.3415', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.83274', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58010', '2', '-8600.88', '1342.65', '33.1559', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.44789', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58010', '3', '-8621.41', '1350.41', '34.2243', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.73711', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58010', '4', '-8643.33', '1356.5', '31.9098', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.87063', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58010', '5', '-8660.16', '1405.63', '32.7162', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.8928', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58010', '6', '-8683.04', '1426.79', '31.9195', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.38761', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58010', '7', '-8692.41', '1448.35', '32.0023', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.96742', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58010', '8', '-8683.43', '1469.48', '31.9093', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.16238', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58010', '9', '-8649.21', '1487.12', '31.9892', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.471234', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58010', '10', '-8575.71', '1474.42', '32.4335', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.11039', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58010', '11', '-8555.52', '1478.3', '31.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.196348', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58010', '12', '-8542.77', '1471.98', '31.9077', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.72163', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58010', '13', '-8530.14', '1427.02', '31.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.98728', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58010', '14', '-8529.07', '1398.28', '31.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.74774', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58010', '15', '-8538.95', '1384.11', '32.2931', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.09979', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58010', '16', '-8552.75', '1373.92', '31.9075', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.73851', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58011', '1', '-8572.69', '1368.67', '31.9074', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.58925', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58011', '2', '-8595.95', '1365.2', '31.9074', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.27509', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58011', '3', '-8635.94', '1380.35', '31.9091', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.77636', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58011', '4', '-8648.54', '1391.02', '31.9134', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.43864', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58011', '5', '-8666.11', '1416.24', '32.0702', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.17946', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58011', '6', '-8672.34', '1425.21', '31.91', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.03809', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58011', '7', '-8659.81', '1455.58', '31.9077', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.04063', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58011', '8', '-8647.32', '1469.15', '31.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.1575', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58011', '9', '-8615.92', '1457.67', '31.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.91403', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58011', '10', '-8563.55', '1450.96', '31.9073', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.06326', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58011', '11', '-8549.51', '1422.66', '31.9442', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.19147', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58011', '12', '-8551.06', '1392.08', '31.908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.64563', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58011', '13', '-8558.08', '1380.23', '31.908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.17832', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58012', '1', '-8662.35', '1670.01', '21.5205', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.31693', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58012', '2', '-8668.15', '1673.29', '21.585', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.63894', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58012', '3', '-8683.12', '1670.64', '22.4566', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.31439', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58012', '4', '-8692.01', '1661.14', '23.1953', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.97019', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58012', '5', '-8695.46', '1647.35', '22.3991', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.47677', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58012', '6', '-8704.26', '1634.95', '22.5691', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.09193', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58012', '7', '-8716.52', '1628.19', '23.0197', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.64033', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58012', '8', '-8731.54', '1625.83', '23.0155', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.29082', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58012', '9', '-8753.12', '1603.78', '22.1392', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.93485', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58012', '10', '-8759.56', '1581.62', '22.1659', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.42965', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58012', '11', '-8757.27', '1573.85', '23.6294', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.99906', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58012', '12', '-8748.26', '1565.88', '23.2763', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.56062', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58012', '13', '-8738.99', '1566.57', '21.8167', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.07461', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58012', '14', '-8721.75', '1592.81', '21.3872', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.989599', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58012', '15', '-8719.54', '1605.19', '21.4026', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.39408', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58012', '16', '-8695.36', '1625.2', '21.4513', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.691148', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58012', '17', '-8687.18', '1631.43', '21.4055', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.647951', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58012', '18', '-8673.02', '1650.2', '21.6645', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.91106', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58012', '19', '-8666.98', '1655.24', '21.9912', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.695075', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58012', '20', '-8661.25', '1658.66', '21.6789', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.537995', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58012', '21', '-8659.22', '1663.37', '21.3877', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.22915', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58013', '1', '-8753.17', '1574.41', '22.4602', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.87477', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58013', '2', '-8748.36', '1576.68', '21.4817', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.65973', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58013', '3', '-8744.82', '1587.37', '21.3875', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.2527', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58013', '4', '-8750.53', '1605.29', '21.9345', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.84961', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58013', '5', '-8742.49', '1631.42', '23.4719', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.27234', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58013', '6', '-8749.03', '1640.31', '25.3705', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.20696', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58013', '7', '-8765.31', '1652.7', '24.8732', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.49363', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58013', '8', '-8773.03', '1649.07', '23.4197', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.00553', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58013', '9', '-8780.55', '1644.44', '22.9511', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.08545', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58013', '10', '-8779', '1629.87', '21.4006', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.81842', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58013', '11', '-8771.83', '1613.78', '21.5044', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.1208', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58013', '12', '-8776.85', '1588.25', '22.2864', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.51605', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58013', '13', '-8773.01', '1585.81', '22.7648', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.72163', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58013', '14', '-8760.39', '1579.01', '22.834', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.74519', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '1', '-8828.45', '1604.89', '21.385', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.13767', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '2', '-8835.92', '1603.88', '21.3858', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.28296', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '3', '-8842.9', '1604.42', '21.3868', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.1141', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '4', '-8850.49', '1600.07', '21.3865', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.52251', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '5', '-8855.68', '1602.63', '21.3865', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.68999', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '6', '-8862.75', '1604.96', '21.3865', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.82351', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '7', '-8867.58', '1609.56', '21.3865', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.37583', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '8', '-8869.35', '1614.73', '21.3865', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.90066', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '9', '-8869.21', '1618.34', '21.3865', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.5276', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '10', '-8866.68', '1622.68', '21.3865', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.10741', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '11', '-8866', '1629.74', '21.3865', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.42942', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '12', '-8867.98', '1636.91', '21.3865', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.85747', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '13', '-8868.1', '1639.86', '21.3865', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.61007', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '14', '-8864.55', '1643.27', '21.3865', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.765763', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '15', '-8861.78', '1644.57', '21.3865', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.439822', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '16', '-8857.82', '1651.51', '21.3865', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.05243', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '17', '-8851.02', '1656.66', '21.3865', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.647953', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '18', '-8844.29', '1659.83', '21.3865', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.439822', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '19', '-8836.91', '1662.22', '21.3865', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.310231', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '20', '-8829.35', '1665.12', '21.3865', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.361282', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '21', '-8818.68', '1664.28', '21.3865', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.21643', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '22', '-8814.82', '1663.45', '21.3865', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.07113', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '23', '-8811.96', '1661.07', '21.3865', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.48209', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '24', '-8809.42', '1657.5', '21.3865', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.32501', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '25', '-8797.63', '1646.91', '21.3655', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.54884', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '26', '-8796.79', '1642.95', '21.3826', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.92053', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '27', '-8793.16', '1636.97', '21.3851', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.25825', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '28', '-8794.46', '1634.57', '21.3851', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.22545', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '29', '-8799.95', '1632.4', '21.3851', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.51859', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '30', '-8802.78', '1630.33', '21.3851', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.77385', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '31', '-8801.86', '1627.76', '21.3851', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.05012', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '32', '-8798.72', '1623.02', '21.0622', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.29752', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '33', '-8798.38', '1617.35', '21.3869', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.77131', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '34', '-8802.54', '1611.71', '21.2693', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.07623', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '35', '-8808.08', '1605.68', '21.1844', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.92701', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '36', '-8811.91', '1603.56', '21.3852', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.64819', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '37', '-8816.93', '1603.34', '21.3852', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.1848', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '38', '-8820.06', '1604.91', '21.3852', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.68608', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58014', '39', '-8824.66', '1605.1', '21.3852', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.14161', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58015', '1', '-8803.5', '1599.41', '21.3791', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.129628', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58015', '2', '-8788.8', '1615.76', '21.3853', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.840414', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58015', '3', '-8787.79', '1641.44', '22.2469', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.53156', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58015', '4', '-8796.43', '1657.52', '21.5306', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.05385', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58015', '5', '-8814.22', '1673.72', '21.5735', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.40336', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58015', '6', '-8834.94', '1672.32', '21.3863', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.12592', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58015', '7', '-8857.58', '1664.19', '21.3863', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.49899', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58015', '8', '-8871.25', '1646.98', '21.3863', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.04484', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58015', '9', '-8873.73', '1625.36', '21.3863', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.60639', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58015', '10', '-8866.14', '1600.44', '21.3863', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.1758', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58015', '11', '-8852.13', '1596.18', '21.3863', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.98869', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('58015', '12', '-8831.89', '1596.52', '21.3863', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.019659', '0', '0');

/* update scale of swarmguardsand qiraj warrior and many more */
UPDATE `zp_mangosd`.`creature_template` SET `scale`='1.5' WHERE (`entry`='15343');
UPDATE `zp_mangosd`.`creature_template` SET `scale`='1.25' WHERE (`entry`='15387');
UPDATE `zp_mangosd`.`creature_template` SET `scale`='1.25' WHERE (`entry`='15391');
UPDATE `zp_mangosd`.`creature_template` SET `scale`='2' WHERE (`entry`='15389');
UPDATE `zp_mangosd`.`creature_template` SET `scale`='2' WHERE (`entry`='15386');
UPDATE `zp_mangosd`.`creature_template` SET `scale`='2' WHERE (`entry`='15385');
UPDATE `zp_mangosd`.`creature_template` SET `scale`='2' WHERE (`entry`='15392');
UPDATE `zp_mangosd`.`creature_template` SET `scale`='2' WHERE (`entry`='15388');
UPDATE `zp_mangosd`.`creature_template` SET `scale`='2' WHERE (`entry`='15390');
UPDATE `zp_mangosd`.`creature_template` SET `scale`='2' WHERE (`entry`='15391');


/* adjust speeds of wasps and stingers */
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`='1.6', `speed_run`='1.35' WHERE (`entry`='15325');
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`='1.6', `speed_run`='1.35' WHERE (`entry`='15327');

/*Hive'Zara Stinger boss circle far n1 */
UPDATE `zp_mangosd`.`creature` SET `MovementType`='2' WHERE (`guid`='58014');

/*Hive'Zara Stinger boss circle far n1 */
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58014', '58014', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58014', '58025', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58014', '58028', '3', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58014', '58029', '3', '45', '2');


/*Hive'Zara Stinger boss circle far n2*/
UPDATE `zp_mangosd`.`creature` SET `MovementType`='2' WHERE (`guid`='58015');

/*Hive'Zara Stinger boss circle far n2*/
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58015', '58015', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58015', '58024', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58015', '58026', '3', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58015', '58027', '3', '45', '2');

/*****************/

/*Hive'Zara Stinger boss room back&forth first*/
UPDATE `zp_mangosd`.`creature` SET `MovementType`='2' WHERE (`guid`='58013');

/*Hive'Zara Stinger boss room back&forth second*/
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58013', '58013', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58013', '58023', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58013', '58031', '3', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58013', '58030', '3', '45', '2');

/*Hive'Zara Stinger boss room back&forth first*/
UPDATE `zp_mangosd`.`creature` SET `MovementType`='2' WHERE (`guid`='58012');

/*Hive'Zara Stinger boss room back&forth second*/
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58012', '58012', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58012', '58022', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58012', '58032', '3', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58012', '58033', '3', '45', '2');

/*Hive'Zara Stinger main room behind corner*/
UPDATE `zp_mangosd`.`creature` SET `MovementType`='2' WHERE (`guid`='58006');

/*Hive'Zara Stinger main room behind corner*/
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58006', '58006', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58006', '58021', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58006', '58036', '3', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58006', '58037', '3', '45', '2');

/*Hive'Zara Stinger main room back&forth horizontal second*/
UPDATE `zp_mangosd`.`creature` SET `MovementType`='2' WHERE (`guid`='58007');

/*Hive'Zara Stinger main room back&forth horizontal second*/
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58007', '58007', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58007', '58018', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58007', '58039', '3', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58007', '58038', '3', '45', '2');

/*Hive'Zara Stinger main room back&forth horizontal first*/
UPDATE `zp_mangosd`.`creature` SET `MovementType`='2' WHERE (`guid`='58009');

/*Hive'Zara Stinger main room back&forth horizontal first*/
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58009', '58009', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58009', '58019', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58009', '58044', '3', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58009', '58045', '3', '45', '2');


/*Hive'Zara Stinger main room small circle*/
UPDATE `zp_mangosd`.`creature` SET `MovementType`='2' WHERE (`guid`='58011');

/*Hive'Zara Stinger main room small circle*/
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58011', '58011', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58011', '58016', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58011', '58043', '3', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58011', '58042', '3', '45', '2');

/*Hive'Zara Stinger main room large circle*/
UPDATE `zp_mangosd`.`creature` SET `MovementType`='2' WHERE (`guid`='58010');

/*Hive'Zara Stinger main room large circle*/
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58010', '58010', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58010', '58017', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58010', '58041', '3', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58010', '58040', '3', '45', '2');


/*Hive'Zara Stinger main room back&forth diagonal*/
UPDATE `zp_mangosd`.`creature` SET `MovementType`='2' WHERE (`guid`='58008');

/*Hive'Zara Stinger main room back&forth diagonal*/
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58008', '58008', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58008', '58020', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58008', '58034', '3', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('58008', '58035', '3', '45', '2');

/***************** Eye of naxxramas SQL **********************/
-- add yell
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1329021, 'The living are here!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6596, 1, 0, 0, 'eye of naxxramas yell on aggro');

-- add target for spell
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (16381, 1, 10411);

-- immune all CC + set ai in db
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='', `ScriptName`='mob_eye_of_naxxramas' WHERE  `entry`=10411;
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=583543195 WHERE  `entry`=10411;

/******************** Zulian Prowler **************************/
-- Add armor + adjust hp
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`=3052, `maxhealth`=3052, `armor`=3791 WHERE  `entry`=15101;

-- Adjust size of Spawn of Mar'li
UPDATE `zp_mangosd`.`creature_template` SET `scale`=0.4 WHERE  `entry`=15041;

/************************* Update Hitbox **************************/
-- Edana Hatetalon
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1, `combat_reach`=1 WHERE  `modelid`=974;

-- Mechanized sentry
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1 WHERE  `modelid`=6978;

-- King Mukla
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1, `combat_reach`=1 WHERE  `modelid`=792;

-- Firelord
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.5, `combat_reach`=2 WHERE  `modelid`=12231;

-- Core Hounds
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.5 WHERE  `modelid`=12189;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.5 WHERE  `modelid`=12168;

UPDATE `zp_mangosd`.`creature_model_info` SET `combat_reach`=3 WHERE  `modelid`=12189;
UPDATE `zp_mangosd`.`creature_model_info` SET `combat_reach`=1.5 WHERE  `modelid`=12168;

-- Garr
UPDATE `zp_mangosd`.`creature_model_info` SET `combat_reach`=2 WHERE  `modelid`=12110;

-- Gehennas + adds
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1 WHERE  `modelid`=13030;
UPDATE `zp_mangosd`.`creature_model_info` SET `combat_reach`=1 WHERE  `modelid`=12030;
UPDATE `zp_mangosd`.`creature_model_info` SET `combat_reach`=1 WHERE  `modelid`=13030;

-- BRS Spirestone Ogres
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1, `combat_reach`=0.7 WHERE  `modelid`=11577;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.1, `combat_reach`=1 WHERE  `modelid`=11581;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.1, `combat_reach`=1 WHERE  `modelid`=11579;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.1, `combat_reach`=1 WHERE  `modelid`=11562;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.3, `combat_reach`=1 WHERE  `modelid`=11565;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=0.7, `combat_reach`=1 WHERE  `modelid`=9732;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1, `combat_reach`=1 WHERE  `modelid`=11582;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.1, `combat_reach`=1 WHERE  `modelid`=11543;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.3, `combat_reach`=1 WHERE  `modelid`=11583;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.1, `combat_reach`=1 WHERE  `modelid`=11584;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.1, `combat_reach`=1 WHERE  `modelid`=11585;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=2.3, `combat_reach`=2 WHERE  `modelid`=8711;

-- Dire Maul Ogres
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.2, `combat_reach`=1 WHERE  `modelid`=12471;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.1, `combat_reach`=1 WHERE  `modelid`=12473;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.2, `combat_reach`=1 WHERE  `modelid`=12472;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.2, `combat_reach`=1 WHERE  `modelid`=11537;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.1, `combat_reach`=1 WHERE  `modelid`=11564;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1, `combat_reach`=1.1 WHERE  `modelid`=14423;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.2, `combat_reach`=1 WHERE  `modelid`=10709;

-- Ogre Guards
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.2, `combat_reach`=1 WHERE  `modelid`=11561; 

/************************* Dire Maul misc ********************************/
-- Kalendris + Ravenoak bosses, now immune to shackle
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=8912913 WHERE  `entry`=11488;
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=8912913 WHERE  `entry`=11487;

-- Add text for DM West
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1429016, 'The demon is loose! Quickly we must restrain him!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 0, 0, 'highborne summoner SAY_FREE_IMMOLTHAR');

-- Aggro range updated for Ravenoak, her pet + wildspawn imp
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=50 WHERE  `entry`=11488;
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=50 WHERE  `entry`=14308;
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=40 WHERE  `entry`=13276;

-- Doomguard minion updated resistances
UPDATE `zp_mangosd`.`creature_template` SET `resistance5`=54, `resistance6`=0 WHERE  `entry`=14385;

-- Gordok mastiff updated faction
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=14, `faction_H`=14 WHERE  `entry`=13036;

-- AI for Prince Totheldrin
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='EventAI', `ScriptName`='mob_eventai' WHERE  `entry`=11486;
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (1148601, 11486, 13, 0, 100, 3, 5000, 5000, 0, 0, 11, 20537, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Prince Tortheldrin - Cast Counterspell on Target Spell Casting');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (1148602, 11486, 9, 0, 100, 3, 0, 8, 9900, 9900, 11, 15589, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Prince Tortheldrin - Cast Whirlwind');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (1148603, 11486, 9, 0, 100, 3, 0, 5, 15300, 19400, 11, 22920, 1, 1, 13, -30, 1, 0, 0, 0, 0, 0, 'Prince Tortheldrin - Cast Arcane Blast + threat reduction');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (1148604, 11486, 0, 0, 100, 3, 14400, 14400, 11100, 14200, 11, 22995, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Prince Tortheldrin - Summon');

-- Prince totheldrin hitbox
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1, `combat_reach`=1.5 WHERE  `modelid`=11256;

-- Remove say + random mob
DELETE FROM `zp_mangosd`.`creature_ai_scripts` WHERE  `id`=1148602;
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=138007;

/********************************** Wsg + AV Emissary NPC(SW + IF), event linked ************************/
-- Silverwing
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (160009, 19);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (160010, 19);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (160013, 19);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (160014, 19);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (160011, 19);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (160012, 19);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (160007, 19);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (160008, 19);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (160005, 19);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (160006, 19);

-- stormpike
UPDATE `zp_mangosd`.`game_event_creature` SET `event`=18 WHERE  `guid`=20556;
UPDATE `zp_mangosd`.`game_event_creature` SET `event`=18 WHERE  `guid`=51627; 
UPDATE `zp_mangosd`.`game_event_creature` SET `event`=18 WHERE  `guid`=83184;
UPDATE `zp_mangosd`.`game_event_creature` SET `event`=18 WHERE  `guid`=83181;
UPDATE `zp_mangosd`.`game_event_creature` SET `event`=18 WHERE  `guid`=13427;
UPDATE `zp_mangosd`.`game_event_creature` SET `event`=18 WHERE  `guid`=13428;
UPDATE `zp_mangosd`.`game_event_creature` SET `event`=18 WHERE  `guid`=13425;
UPDATE `zp_mangosd`.`game_event_creature` SET `event`=18 WHERE  `guid`=13426;
UPDATE `zp_mangosd`.`game_event_creature` SET `event`=18 WHERE  `guid`=13423;
UPDATE `zp_mangosd`.`game_event_creature` SET `event`=18 WHERE  `guid`=13424;

/******************* LBRS Misc *******************/
-- Corrected Faction Challenge to Urok event
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=14, `faction_H`=14 WHERE  `entry`=10602;

-- Corrected spider + mother smolderweb position
REPLACE INTO `zp_mangosd`.`creature` VALUES (3004107, 10374, 229, 0, 0, -146.424, -535.747, 7.37509, 5.20997, 10800, 2, 0, 10768, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (44342, 10596, 229, 9929, 0, -126.5, -567.449, 11.9353, 0.65467, 1000000, 0, 0, 600000, 0, 0, 1);

/************************** Legend of Stalvan *****************************/
-- Adjusted faction, armor + where it spawns on quest turn in
UPDATE `zp_mangosd`.`creature_template` SET `armor`=276, `faction_A`=14, `faction_H`=14 WHERE  `entry`=2044;
UPDATE `zp_mangosd`.`quest_start_scripts` SET `x`=-8831.1 WHERE  `id`=74 LIMIT 1;

/********************************** Adjusted Immunities for misc npcs ****************************/
-- Dark shade in Scholo now immune melee
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (1047201, 10472, 0, 0, 100, 3, 4800, 11700, 32400, 39700, 11, 16431, 0, 33, 0, 0, 0, 0, 0, 0, 0, 0, 'Scholomance Occultist - Cast Bone Armor and Increase Phase');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (1047202, 10472, 0, 0, 100, 3, 500, 1000, 6500, 15600, 11, 17228, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scholomance Occultist - Cast Shadow Bolt Volley');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (1047203, 10472, 13, 0, 100, 2, 0, 0, 0, 0, 11, 15122, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Scholomance Occultist - Cast Counterspell is Target Cast a Spell');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (1047204, 10472, 0, 0, 100, 7, 9000, 11000, 9500, 15000, 11, 17682, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Scholomance Occultist - Cast Drain Mana');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (1047205, 10472, 2, 0, 100, 6, 20, 0, 0, 0, 36, 11284, 0, 0, 22, 2, 0, 0, 0, 0, 0, 0, 'Scholomance Occultist - Transform to Dark Shade at 20% HP, set phase 2');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (1047210, 10472, 27, 1, 100, 3, 17674, 1, 0, 10000, 11, 17674, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Scholomance Occultist - Cast Melee immune on Missing Buff phase 2');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (1047211, 10472, 1, 1, 100, 3, 0, 0, 0, 0, 11, 17674, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Scholomance Occultist - Cast Melee immunity on Spawn phase 2');

-- Shadowfang Darksoul shadowimmune
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (385504, 3855, 27, 0, 100, 3, 7743, 1, 15000, 30000, 11, 7743, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadowfang Darksoul - Cast Shadow immune on Missing Buff');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (385503, 3855, 1, 0, 100, 3, 1000, 1000, 1800000, 1800000, 11, 7743, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadowfang Darksoul - Cast Shadow immunity on Spawn');

-- Shadowfang Whitescale frostimmune
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (385103, 3851, 1, 0, 100, 3, 100, 100, 1700000, 1700000, 11, 7940, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadowfang Whitescalp - Cast Frost immune on Spawn');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (385104, 3851, 27, 0, 100, 3, 7940, 1, 15000, 30000, 11, 7940, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadowfang Whitescalp - Cast Frost immune on Missing Buff');

-- Ferra, able to sheep now
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (14308, 0, 0, 1083, 0, 'Ferra', NULL, 0, 60, 60, 20432, 20432, 0, 0, 0, 14, 14, 0, 1.78, 1.11286, 0, 1, 726.7, 936, 0, 295, 1, 1158, 1274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61.152, 84.084, 100, 1, 0, 14308, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 162, 812, 'EventAI', 0, 3, 0, 0, 1, 0, 0, 0, 617234395, 0, 'mob_eventai');

-- Mother smolderweb faction + not immune sleep
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (10596, 0, 0, 9929, 0, 'Mother Smolderweb', NULL, 0, 59, 59, 30623, 30623, 0, 0, 3489, 22, 22, 0, 1.78, 1.11286, 0, 1, 726.7, 936, 0, 295, 1, 1100, 1300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62.4, 85.8, 100, 1, 0, 10596, 0, 100003, 0, 0, 0, 0, 0, 0, 16104, 16468, 16103, 0, 0, 0, 0, '', 1, 3, 0, 0, 1, 0, 0, 0, 613105115, 0, 'boss_mother_smolderweb');

/************************* Adjusted faction for Strat mobs ******************************/
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=14, `faction_H`=14 WHERE  `entry`=10382;
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=14, `faction_H`=14 WHERE  `entry`=10390;
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=14, `faction_H`=14 WHERE  `entry`=10391;
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=14, `faction_H`=14 WHERE  `entry`=10381;
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=14, `faction_H`=14 WHERE  `entry`=10405;
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=14, `faction_H`=14 WHERE  `entry`=10463;
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=14, `faction_H`=14 WHERE  `entry`=10414;

/***************************** Highlord Bolvar Fordragon AI ******************************/
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='EventAI', `ScriptName`='mob_eventai' WHERE  `entry`=1748;
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (174801, 1748, 4, 0, 100, 0, 0, 0, 0, 0, 11, 13008, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Highlord Bolvar Fordragon - Cast Retribution Aura on Aggro');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (174802, 1748, 2, 0, 100, 0, 30, 0, 120000, 120000, 11, 15062, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Highlord Bolvar Fordragon - Cast Shieldwall at 30%');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (174803, 1748, 0, 0, 50, 1, 120000, 150000, 120000, 240000, 11, 25807, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Highlord Bolvar Fordragon - Cast Greater Heal rarely');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (174804, 1748, 0, 0, 100, 1, 4000, 15000, 8000, 22000, 11, 15284, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Highlord Bolvar Fordragon - Cleave');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (174805, 1748, 0, 0, 100, 1, 18000, 25000, 23000, 30000, 11, 20683, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Highlord Bolvar Fordragon - Cast High Lord\'s Justice');

/************************* More Misc NPCs ***********************/
-- Commander springvale add missing spells
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (427801, 4278, 0, 0, 100, 3, 10300, 17800, 61100, 63500, 11, 5588, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commander Springvale - Cast Hammer of Justice');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (427802, 4278, 14, 0, 100, 3, 800, 40, 17500, 22300, 11, 1026, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Commander Springvale - Cast Holy Light on Friendlies');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (427803, 4278, 2, 0, 100, 2, 30, 0, 30000, 36000, 11, 642, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Commander Springvale - Cast Divine shield at 30% hp');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (427804, 4278, 23, 0, 100, 2, 642, 1, 0, 0, 11, 1026, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Commander Springvale - Cast heal if divine shield is up');

-- Earthcaller halmgar, armor, mana, faction, and spell
REPLACE INTO `zp_mangosd`.`creature_template` VALUES (4842, 0, 0, 6102, 0, 'Earthcaller Halmgar', NULL, 0, 32, 32, 3782, 3782, 732, 732, 863, 152, 152, 0, 1.6, 1.11286, 0, 4, 221.95, 286.35, 0, 102, 1, 1341, 1475, 0, 2, 0, 0, 0, 0, 0, 0, 0, 44.84, 61.655, 100, 7, 0, 4842, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 349, 'EventAI', 1, 3, 0, 0, 1, 0, 0, 0, 617299931, 0, 'mob_eventai');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (484202, 4842, 4, 0, 100, 2, 0, 0, 0, 0, 11, 8270, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Earthcaller Halmgar - Summon Earth Rumbler on Aggro');

-- ITEM Immature Venomsac add 1 IRL Hour duration
UPDATE `zp_mangosd`.`item_template` SET `Duration`=3600, `ExtraFlags`=2 WHERE  `entry`=12586;

-- Add weapon to Lord Valthalak
UPDATE `zp_mangosd`.`creature_template` SET `equipment_id`=103 WHERE  `entry`=16042;

-- Resolve combat bug outside stratholme(bridge)
UPDATE `zp_mangosd`.`creature_template` SET `MovementType`=0 WHERE  `entry`=8477;

-- Shade of jin'do now are undead instead of beast
UPDATE `zp_mangosd`.`creature_template` SET `type`=6 WHERE  `entry`=14986;

-- Added NPC for SFK intro
REPLACE INTO `zp_mangosd`.`creature` VALUES (90430, 10000, 33, 0, 0, -219.345, 2154.02, 81.2098, 5.12723, 43200, 0, 0, 4640, 1530, 0, 0);

/********************* Update npc speed + remove text + npc ******************************/
-- Remove priestess tyriona in SW
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=43690;

-- removed random text on aggro for skeletal mage + witherbark axethrower.
DELETE FROM `zp_mangosd`.`creature_ai_scripts` WHERE  `id`=20303;
DELETE FROM `zp_mangosd`.`creature_ai_scripts` WHERE  `id`=255402;

-- Update Ramstein speed + Ravaged / unstable corpse
UPDATE `zp_mangosd`.`creature_template` SET `speed_run`= 0.75 WHERE  `entry`=10439;
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`=0.79, `speed_run`=0.81 WHERE  `entry`=10480;
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`=0.79, `speed_run`=0.81 WHERE  `entry`=10481;

-- Increase Magistrate barthilas speed slightly
UPDATE `zp_mangosd`.`creature_template` SET `speed_run`=1.3 WHERE  `entry`=10435;

/************************* Add Armor to some NPCs *********************/
-- Guards
UPDATE `zp_mangosd`.`creature_template` SET `armor`=3153 WHERE  `entry`=1642;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4500 WHERE  `entry`=1756;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4500 WHERE  `entry`=5595;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=3798 WHERE  `entry`=4979;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4500 WHERE  `entry`=4262;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4500 WHERE  `entry`=3296;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=3153 WHERE  `entry`=3571;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=542 WHERE  `entry`=1423;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=1463 WHERE  `entry`=727;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=2437 WHERE  `entry`=1475;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=2953 WHERE  `entry`=2405;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4500 WHERE  `entry`=2439;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=2953 WHERE  `entry`=2621;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=2964 WHERE  `entry`=4951;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=2357 WHERE  `entry`=4995;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=2357 WHERE  `entry`=4996;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=1203 WHERE  `entry`=5085;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4500 WHERE  `entry`=5624;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=5196 WHERE  `entry`=7980;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=5317 WHERE  `entry`=11099;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=2310 WHERE  `entry`=11279;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=3482 WHERE  `entry`=11598;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4500 WHERE  `entry`=12053;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4500 WHERE  `entry`=12127;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=5153 WHERE  `entry`=13080;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4362 WHERE  `entry`=14284;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4362 WHERE  `entry`=14285;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=376 WHERE  `entry`=3854;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=431 WHERE  `entry`=3877;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=3997 WHERE  `entry`=10037;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=5196 WHERE  `entry`=15852;

-- Azuregos
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4691 WHERE  `entry`=6109;

-- crimson rifleman, crimson hammersmith, crimson elite

UPDATE `zp_mangosd`.`creature_template` SET `armor`=4325 WHERE  `entry`=11120;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=2964 WHERE  `entry`=11054;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=3074 WHERE  `entry`=12128;

-- Rookery whelp, hatcher, guardian
UPDATE `zp_mangosd`.`creature_template` SET `armor`=1873 WHERE  `entry`=10161;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=3420 WHERE  `entry`=10683;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=3914 WHERE  `entry`=10258;

-- Timmy the cruel
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4256 WHERE  `entry`=10808;

-- Warchief Rend Blackhand
UPDATE `zp_mangosd`.`creature_template` SET `armor`=5468 WHERE  `entry`=10429;

/******************** Adjusted resistance + some armor for Dark Iron Dwarves ******************/
UPDATE `zp_mangosd`.`creature_template` SET `resistance6`=0 WHERE  `entry`=6123;
UPDATE `zp_mangosd`.`creature_template` SET `resistance6`=0 WHERE  `entry`=1981;
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=5, `resistance6`=0 WHERE  `entry`=6124;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=642, `resistance6`=0 WHERE  `entry`=2149;
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=10, `resistance6`=0 WHERE  `entry`=1222;
UPDATE `zp_mangosd`.`creature_template` SET `resistance6`=0 WHERE  `entry`=1169;
UPDATE `zp_mangosd`.`creature_template` SET `resistance6`=0 WHERE  `entry`=1051;
UPDATE `zp_mangosd`.`creature_template` SET `resistance6`=0 WHERE  `entry`=6523;
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=10, `resistance6`=0 WHERE  `entry`=1052;
UPDATE `zp_mangosd`.`creature_template` SET `resistance6`=0 WHERE  `entry`=1053;
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=12, `resistance6`=0 WHERE  `entry`=1054;
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=12, `resistance6`=0 WHERE  `entry`=4062;
UPDATE `zp_mangosd`.`creature_template` SET `resistance6`=0 WHERE  `entry`=2575;
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=5, `resistance6`=0 WHERE  `entry`=2577;
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=10, `resistance6`=0 WHERE  `entry`=6212;
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=30, `resistance6`=0 WHERE  `entry`=6228;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=2431, `resistance6`=0 WHERE  `entry`=8337;
UPDATE `zp_mangosd`.`creature_template` SET `resistance6`=0 WHERE  `entry`=15692;
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=45, `resistance6`=0 WHERE  `entry`=5839;
UPDATE `zp_mangosd`.`creature_template` SET `resistance6`=0 WHERE  `entry`=8637;
UPDATE `zp_mangosd`.`creature_template` SET `resistance6`=0 WHERE  `entry`=5844;
UPDATE `zp_mangosd`.`creature_template` SET `resistance3`=15, `resistance6`=10 WHERE  `entry`=5840;
UPDATE `zp_mangosd`.`creature_template` SET `resistance6`=0 WHERE  `entry`=5846;
UPDATE `zp_mangosd`.`creature_template` SET `resistance6`=0 WHERE  `entry`=8566;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=2344, `resistance6`=0 WHERE  `entry`=8504;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=3271, `resistance6`=0 WHERE  `entry`=8338;

-- Updated the resistances again

UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=15, `resistance6`=0 WHERE  `entry`=6124;
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=30, `resistance6`=0 WHERE  `entry`=1222;
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=30, `resistance6`=0 WHERE  `entry`=1052;
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=35, `resistance6`=0 WHERE  `entry`=1054;
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=35, `resistance6`=0 WHERE  `entry`=4062;
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=20, `resistance6`=0 WHERE  `entry`=2577;
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=20, `resistance6`=0 WHERE  `entry`=6212;
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=30, `resistance6`=0 WHERE  `entry`=6228;
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=45, `resistance6`=0 WHERE  `entry`=5839;
UPDATE `zp_mangosd`.`creature_template` SET `resistance3`=25, `resistance6`=10 WHERE  `entry`=5840;

-- AI for Taskmaster Whipfang, no more self fear
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `event_type`=0, `event_param1`=5000, `event_param2`=15000, `action1_param2`=1 WHERE  `id`=593201;

-- AI for Salt Flats Scavenger, should only use execute if player is below 20%
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='EventAI', `ScriptName`='mob_eventai' WHERE  `entry`=4154;
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (415401, 4154, 12, 0, 100, 1, 20, 0, 18000, 26000, 11, 7160, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Salt Flats Scavenger - Cast Execute at 20% Target HP');

/********************** BWL 3 Drakes Shadow Resistance ***********************/
UPDATE `zp_mangosd`.`creature_template` SET `resistance5`=185 WHERE  `entry`=14601;
UPDATE `zp_mangosd`.`creature_template` SET `resistance5`=185 WHERE  `entry`=11983;
UPDATE `zp_mangosd`.`creature_template` SET `resistance5`=185 WHERE  `entry`=11981;

-- Krixix 10day respawn
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=864000 WHERE  `guid`=84627;

/*********************** Mobile Alarm System *********************/
-- Add text + ai
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1090028, 'Warning! Warning! Intruder alert! Intruder alert!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Mobile Alert System Yell');
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='', `ScriptName`='mob_mobile_alert_system' WHERE  `entry`=7849;

/********************** Nefarian Heads **************************/

-- Stormwind
REPLACE INTO `zp_mangosd`.`gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (1712704, 179882, 0, -8926.3, 496.3, 106, 2.4, 0, 0, 0, 0, -1, 0, 0);

-- Orgrimmar
REPLACE INTO `zp_mangosd`.`gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (1712703, 179881, 1, 1539.23, -4422.79, 7.8, 5.3, 0, 0, 0, 0, -1, 0, 0);

-- Turn-in Alliance talk
REPLACE INTO `zp_mangosd`.`db_script_string` (`entry`, `content_default`) VALUES ('2000005253', 'Citizens of the Alliance, the Lord of Blackrock is slain! Nefarian has been subdued by $N and $G his : her; allies!');
REPLACE INTO `zp_mangosd`.`db_script_string` (`entry`, `content_default`) VALUES ('2000005254', 'Let your spirits rise! Rally around your champion, bask in $G his : her; glory! Revel in the rallying cry of the dragon slayer!');

--Turn-in Horde talk
REPLACE INTO `zp_mangosd`.`db_script_string` (`entry`, `content_default`) VALUES ('2000005251', 'NEFARIAN IS SLAIN! people of Orgrimmar, bow down before the might of $N and $G his : her; allies for they have laid a blow against the Black Dragonflight that is sure to stir the Aspects from their malaise! This defeat shall surely be felt by the father of the Black Flight: Deathwing reels in pain and anguish this day!');
REPLACE INTO `zp_mangosd`.`db_script_string` (`entry`, `content_default`) VALUES ('2000005252', ' Be lifted by $N\'s accomplishment! Revel in $G his : her; rallying cry!');

-- Nef turn-in quest_end_script Alliance
DELETE FROM zp_mangosd.quest_end_scripts WHERE id = 7782;
REPLACE INTO zp_mangosd.quest_end_scripts (`id`, `delay`, `command`, `datalong`, `datalong4`, `dataint`) VALUES ('7782', '4', '0', '1', '7', '2000005253');
REPLACE INTO zp_mangosd.quest_end_scripts (`id`, `delay`, `command`, `datalong`, `datalong4`, `dataint`) VALUES ('7782', '12', '0', '1', '7', '2000005254');
REPLACE INTO zp_mangosd.quest_end_scripts (`id`, `delay`, `command`, `datalong`, `datalong2`) VALUES ('7782', '15', '15', '22888', '0');
REPLACE INTO zp_mangosd.quest_end_scripts (`id`, `delay`, `command`, `datalong`, `datalong2`) VALUES ('7782', '10', '9', '1712704', '127800');
UPDATE `zp_mangosd`.`quest_template` SET `CompleteScript`='7782' WHERE `entry`='7782';
UPDATE `zp_mangosd`.`gameobject_template` SET `type`='3', `faction`='114' WHERE `entry`='179882';

-- Nef turn-in quest_end_script Horde
DELETE FROM zp_mangosd.quest_end_scripts WHERE id = 7784;
REPLACE INTO zp_mangosd.quest_end_scripts (`id`, `delay`, `command`, `datalong`, `datalong4`, `dataint`) VALUES ('7784', '4', '0', '1', '1', '2000005251');
REPLACE INTO zp_mangosd.quest_end_scripts (`id`, `delay`, `command`, `datalong`, `datalong4`, `dataint`) VALUES ('7784', '12', '0', '1', '1', '2000005252');
REPLACE INTO zp_mangosd.quest_end_scripts (`id`, `delay`, `command`, `datalong`, `datalong2`) VALUES ('7784', '15', '15', '22888', '0');
REPLACE INTO zp_mangosd.quest_end_scripts (`id`, `delay`, `command`, `datalong`, `datalong2`) VALUES ('7784', '10', '9', '1712703', '127800');
UPDATE `zp_mangosd`.`quest_template` SET `CompleteScript`='7784' WHERE `entry`='7784';
UPDATE `zp_mangosd`.`gameobject_template` SET `type`='3', `faction`='114' WHERE `entry`='179881';

/********** Primordial Behemoth added missing spell *******************/
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `action1_param1`=23391 WHERE  `id`=1220602;

/******** Hydrospawn resistance ****************/
UPDATE `zp_mangosd`.`creature_template` SET `resistance4`=100 WHERE  `entry`=13280;
UPDATE `zp_mangosd`.`creature_template` SET `resistance4`=50 WHERE  `entry`=14350;

/********* Razzashi Venombrood AI **************/
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='mob_razzashi_venombrood' WHERE  `entry`=14532;

/*********** Atal'ai Deathwalker's Spirit, now aggro players ***********/
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`=0.68, `speed_run`=0.5, `mindmg`=412.2, `maxdmg`=499.1, `unit_flags`=0 WHERE  `entry`=8317;

/**************** Add Glutton text on aggro *****************/
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (856704, 8567, 4, 0, 100, 2, 0, 0, 0, 0, 1, -2013, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Glutton - Yell on Aggro');
REPLACE INTO `zp_mangosd`.`creature_ai_texts` VALUES (-2013, 'Me smell stench of the living!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5823, 1, 0, 0, 'Glutton - Yell on aggro');

/*********** Obsidian Sentinel AI *****************/
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='', `ScriptName`='mob_obsidian_sentinel' WHERE  `entry`=7023;
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='EventAI', `ScriptName`='mob_eventai' WHERE  `entry`=7209;
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (720901, 7209, 0, 0, 100, 3, 10000, 15000, 10000, 25000, 11, 9941, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Obsidian Shard - Cast Obsidian Reflection');

-- Updated target for Ancient stone keeper
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `action1_param2`=4 WHERE  `id`=720601;

/********** EoM Hazza'rah adds *************/
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`=0.5, `speed_run`=0.5 WHERE  `entry`=15163;

-- Madservant add random say
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (1511105, 15111, 4, 0, 10, 34, 0, 0, 0, 0, 1, -228, 0, 0, 1, -15111, 0, 0, 0, 0, 0, 0, 'Mad Servant - Random say on Aggro');
REPLACE INTO `zp_mangosd`.`creature_ai_texts` VALUES (-15111, 'Troll mojo da strongest mojo!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Mad Servant Yell');

-- mad VW immune banish
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=131072 WHERE  `entry`=15146;

-- galgann firehammer remove wrong spell
DELETE FROM `zp_mangosd`.`creature_ai_scripts` WHERE  `id`=729104;

/************ RFK Death's heads npcs' faction ***********/
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=152, `faction_H`=152 WHERE  `entry`=4519;
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=152, `faction_H`=152 WHERE  `entry`=4518;
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=152, `faction_H`=152 WHERE  `entry`=4517;
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=152, `faction_H`=152 WHERE  `entry`=4516;
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=152, `faction_H`=152 WHERE  `entry`=4515;

-- Agathelos The Raging, should now use left for dead, but it doesn't do FD as it should
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `action1_param3`=2 WHERE  `id`=442202;

-- Noxxion should now do nature dmg
UPDATE `zp_mangosd`.`creature_template` SET `dmgschool`=3 WHERE  `entry`=13282;
UPDATE `zp_mangosd`.`creature_template` SET `dmgschool`=3 WHERE  `entry`=13456;

-- Remove incorrect coefficient for Healing Touch from the DB
DELETE FROM zp_mangosd.spell_bonus_data WHERE entry = 5185;

-- Remove incorrect coefficents for Heal and Lesser Heal
DELETE FROM zp_mangosd.spell_bonus_data WHERE entry = 2054 OR entry = 2050;

-- Rotgrip, add missing spell
REPLACE INTO zp_mangosd.`creature_ai_scripts` VALUES (1359603, 13596, 0, 0, 100, 3, 5000, 10000, 6000, 10000, 11, 15976, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rotgrip - Cast Puncture');

/*Increased the drop chance of Manual of Eviscerate IX*/
UPDATE zp_mangosd.`creature_loot_template` SET `ChanceOrQuestChance`='2.85' WHERE (`entry`='10318') AND (`item`='24102');

/*Un'goro Dirt Pile droprate fix*/
UPDATE zp_mangosd.`gameobject_loot_template` SET `maxcount`='3' WHERE (`entry`='10039') AND (`item`='11018');

/*Adjusting Prestor's Talisman of Connivery*/
UPDATE zp_mangosd.`item_template` SET `stat_value1`='30' WHERE (`entry`='19377');
UPDATE zp_mangosd.`item_template` SET `spellid_2`='0' WHERE (`entry`='19377');
UPDATE zp_mangosd.`item_template` SET `spelltrigger_2`='0' WHERE (`entry`='19377');
UPDATE zp_mangosd.`item_template` SET `spellcooldown_2`='0' WHERE (`entry`='19377');
UPDATE zp_mangosd.`item_template` SET `spellcategorycooldown_2`='0' WHERE (`entry`='19377');

/********** RFC Bosses AI *********************/
-- Jergosh the invoker
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `event_type`=0, `event_param1`=1000, `event_param2`=10000 WHERE  `id`=1151802;

-- Taragam the hungerer
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `event_type`=0, `event_param1`=5000, `event_param2`=7000, `action1_param2`=1 WHERE  `id`=1152001;

-- Bazzalan
REPLACE INTO zp_mangosd.`creature_ai_scripts` VALUES (1151902, 11519, 0, 0, 100, 3, 0, 10000, 15000, 30000, 11, 744, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bazzalan - Cast Poison');
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `event_type`=0, `event_param1`=4000, `event_param2`=6000 WHERE  `id`=1151901;

-- Edwin Vancleef text adjusted
REPLACE INTO zp_mangosd.`creature_ai_scripts` VALUES (63908, 639, 2, 0, 100, 2, 25, 0, 0, 0, 1, -173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Edwin VanCleef - Yell at 25% HP');
REPLACE INTO zp_mangosd.`creature_ai_scripts` VALUES (63905, 639, 2, 0, 100, 2, 50, 26, 0, 0, 1, -172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Edwin VanCleef - Yell at 50% HP');
REPLACE INTO zp_mangosd.`creature_ai_scripts` VALUES (63903, 639, 2, 0, 100, 2, 75, 51, 0, 0, 1, -171, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Edwin VanCleef - Yell at 75% HP');
REPLACE INTO zp_mangosd.`creature_ai_scripts` VALUES (63901, 639, 0, 0, 100, 3, 5000, 15000, 8000, 16000, 11, 12787, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Edwin VanCleef - Cast Thrash');

/**************** EoM always drop 1-3 tokens ******************/
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996330, 19942, 50, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996331, 19940, 50, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996332, 19941, 50, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996333, 19939, 50, 0, 1, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15082, 996333, 100, 0, -996333, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15083, 996330, 100, 0, -996330, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15084, 996331, 100, 0, -996331, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15085, 996332, 100, 0, -996332, 2, 0, 0, 0);

-- Lady Moongazer update dmg and net
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`=41, `maxdmg`=49, `minrangedmg`=40.8089, `maxrangedmg`=60.64 WHERE  `entry`=2184;
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `event_param3`=10000, `event_param4`=25000 WHERE  `id`=218406;

-- Baron Aquanis adjust resistances
UPDATE `zp_mangosd`.`creature_template` SET `resistance4`=110, `resistance6`=56 WHERE  `entry`=12876;

/********** stockades ********/
-- Targorr adjust AI
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `event_type`=0, `event_flags`=3, `event_param1`=3000, `event_param2`=4000, `event_param3`=8000, `event_param4`=16000 WHERE  `id`=169601;

-- Kam Deepfury, add armor
UPDATE `zp_mangosd`.`creature_template` SET `armor`=800 WHERE  `entry`=1666;

/************** Lady Sarevess Pat ****************/
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`=0.8 WHERE  `entry`=4831;
REPLACE INTO `creature_movement` VALUES (26129, 1, -302.05, 412.589, -57.1593, 120000, 0, 0, 0, 0, 0, 0, 0, 0, 3011939, 3.54762, 0, 0);
REPLACE INTO `creature_movement` VALUES (26129, 2, -312.707, 410.213, -56.719, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3011940, 3.36698, 0, 0);
REPLACE INTO `creature_movement` VALUES (26129, 3, -334.764, 406.938, -54.8015, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3011941, 3.44552, 0, 0);
REPLACE INTO `creature_movement` VALUES (26129, 4, -348.45, 399.215, -54.065, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3011942, 4.02671, 0, 0);
REPLACE INTO `creature_movement` VALUES (26129, 5, -352.514, 385.733, -54.4759, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3011943, 4.6943, 0, 0);
REPLACE INTO `creature_movement` VALUES (26129, 6, -346.362, 364.325, -54.313, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 3011944, 5.16946, 0, 0);
REPLACE INTO `creature_movement` VALUES (26129, 7, -335.04, 341.304, -53.8388, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3011945, 5.16946, 0, 0);
REPLACE INTO `creature_movement` VALUES (26129, 8, -320.801, 332.149, -54.449, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3011946, 5.63284, 0, 0);
REPLACE INTO `creature_movement` VALUES (26129, 9, -305.149, 322.49, -53.8442, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 3011947, 6.0923, 0, 0);
REPLACE INTO `creature_movement` VALUES (26129, 10, -298.894, 322.407, -53.0833, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3011948, 0.319612, 0, 0);
REPLACE INTO `creature_movement` VALUES (26129, 11, -292.396, 326.322, -52.1724, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3011949, 1.54876, 0, 0);
REPLACE INTO `creature_movement` VALUES (26129, 12, -296.123, 331.369, -52.6067, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 3011950, 2.6601, 0, 0);
REPLACE INTO `creature_movement` VALUES (26129, 13, -329.654, 347.246, -53.55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3011951, 2.69937, 0, 0);
REPLACE INTO `creature_movement` VALUES (26129, 14, -341.597, 356.43, -54.138, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3011952, 1.93361, 0, 0);
REPLACE INTO `creature_movement` VALUES (26129, 15, -344.447, 373.109, -54.5549, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3011953, 0.771216, 0, 0);
REPLACE INTO `creature_movement` VALUES (26129, 16, -324.192, 393.943, -54.1204, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3011954, 0.759435, 0, 0);
REPLACE INTO `creature_movement` VALUES (26129, 17, -309.131, 406.696, -56.7146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3011955, 0.759435, 0, 0);
UPDATE `zp_mangosd`.`creature` SET `MovementType`=2 WHERE  `guid`=26219;

-- Fallen champion add armor
UPDATE `zp_mangosd`.`creature_template` SET `armor`=1706 WHERE  `entry`=6488;

-- Azshir the sleepless add armor
UPDATE `zp_mangosd`.`creature_template` SET `armor`=1540 WHERE  `entry`=6490;

/*************** Zul'Farrak *******************/
-- Antu'sul missing text
REPLACE INTO `script_texts` VALUES (-1209007, 'The children of Sul will protect their master. Rise once more Sul\'ithuz!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Antusul Text');
REPLACE INTO `script_texts` VALUES (-1209006, 'Rise and defend your master!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Antusul Text');
REPLACE INTO `script_texts` VALUES (-1209005, 'Lunch has arrived my beautiful children. Tear them to pieces!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Antusul Text');

/************* Sunken temple **************/
-- Jammal'an missing text + soundfiles
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1109007, 'The Soulflayer comes!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5862, 1, 0, 0, 'Jammalan Aggro Yell');
REPLACE INTO `script_texts` VALUES (-1109008, 'Hakkar shall live again!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5865, 1, 0, 0, 'Jammalan Yell on HP');

UPDATE `zp_scriptdevzerod`.`script_texts` SET `content_default`='The shield be down! Rise up Atal\'ai! Rise up!', `sound`=5861 WHERE  `entry`=-1109006;
UPDATE `zp_scriptdevzerod`.`script_texts` SET `sound`=5864 WHERE  `entry`=-1109005;

-- Add armor to Nekrum, ZF
UPDATE `zp_mangosd`.`creature_template` SET `armor`=2215 WHERE  `entry`=7796;

-- add text for witch doctor Zum'Rah(the npc doesn't do it, only in db for now)
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1209008, 'How dare you enter my sanctum!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Witch Doctor ZumRah');

/************** DM North, add missing weapons *****************/
REPLACE INTO `zp_mangosd`.`creature_equip_template` VALUES (14321, 5196, 2214, 0);
REPLACE INTO `zp_mangosd`.`creature_equip_template` VALUES (14325, 15268, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_equip_template` VALUES (14323, 4825, 15569, 0);
REPLACE INTO `zp_mangosd`.`creature_equip_template` VALUES (14326, 6738, 2214, 0);
REPLACE INTO `zp_mangosd`.`creature_equip_template` VALUES (11441, 18376, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_equip_template` VALUES (11450, 13018, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_equip_template` VALUES (11445, 3192, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_equip_template` VALUES (11501, 8199, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_equip_template` VALUES (14324, 2226, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_equip_template` VALUES (14351, 15261, 0, 0);

UPDATE `zp_mangosd`.`creature_template` SET `equipment_id`=11450 WHERE  `entry`=11450;
UPDATE `zp_mangosd`.`creature_template` SET `equipment_id`=11441 WHERE  `entry`=11441;
UPDATE `zp_mangosd`.`creature_template` SET `equipment_id`=14325 WHERE  `entry`=14325;
UPDATE `zp_mangosd`.`creature_template` SET `equipment_id`=14326 WHERE  `entry`=14326;
UPDATE `zp_mangosd`.`creature_template` SET `equipment_id`=14323 WHERE  `entry`=14323;
UPDATE `zp_mangosd`.`creature_template` SET `equipment_id`=14321 WHERE  `entry`=14321;
UPDATE `zp_mangosd`.`creature_template` SET `equipment_id`=11445 WHERE  `entry`=11445;
UPDATE `zp_mangosd`.`creature_template` SET `equipment_id`=14324 WHERE  `entry`=14324;
UPDATE `zp_mangosd`.`creature_template` SET `equipment_id`=14351 WHERE  `entry`=14351;

-- Quest Bitter Rivals

DELETE FROM `zp_mangosd`.`gameobject` WHERE  `id`=269 LIMIT 1;
DELETE FROM `zp_mangosd`.`gameobject` WHERE  `id`=270 LIMIT 1;
REPLACE INTO `zp_mangosd`.`gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (1712706, 269, 0, -5607.46, -548.192, 392.985, 1.26101, 0, 0, 0.589553, 0.80773, 30, 100, 1);



