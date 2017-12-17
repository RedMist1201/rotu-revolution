/**
* vim: set ft=cpp:
* file: maps\mp\mp_cargoship_tradespawns.gsc
*
* authors: Luk, 3aGl3, Bipo, Etheross
* team: SOG Modding
*
* project: RotU - Revolution
* website: http://survival-and-obliteration.com/
*
* Reign of the Undead - Revolution by Luk and 3aGl3
* You may modify this code to your liking or reuse it, as long as you give credit to those who wrote it
* Based on Reign of the Undead 2.1 created by Bipo and Etheross
*/

load_tradespawns()
{
    level.tradespawns = [];

    level.tradespawns[0] = spawnstruct();  // spec'd for weapon shop
    level.tradespawns[0].origin = (-2234.6,549.103,64.125);
    level.tradespawns[0].angles = (0,270.374,0);
    level.tradespawns[1] = spawnstruct();  // spec'd for equipment shop
    level.tradespawns[1].origin = (-2229.21,-574.907,64.125);
    level.tradespawns[1].angles = (0,181.093,0);
    level.tradespawns[2] = spawnstruct();  // spec'd for weapon shop
    level.tradespawns[2].origin = (-674.369,-370.098,176.125);
    level.tradespawns[2].angles = (0,180.143,0);
    level.tradespawns[3] = spawnstruct();  // spec'd for equipment shop
    level.tradespawns[3].origin = (-599.171,155.797,176.125);
    level.tradespawns[3].angles = (0,0.922852,0);
    level.tradespawns[4] = spawnstruct();  // spec'd for weapon shop
    level.tradespawns[4].origin = (834.457,-641.455,16.125);
    level.tradespawns[4].angles = (0,179.544,0);
    level.tradespawns[5] = spawnstruct();  // spec'd for equipment shop
    level.tradespawns[5].origin = (1147.5,547.971,16.125);
    level.tradespawns[5].angles = (0,269.066,0);
    level.tradespawns[6] = spawnstruct();  // spec'd for weapon shop
    level.tradespawns[6].origin = (2938.68,-599.507,176.125);
    level.tradespawns[6].angles = (0,187.487,0);
    level.tradespawns[7] = spawnstruct();  // spec'd for equipment shop
    level.tradespawns[7].origin = (2949.55,617.136,176.125);
    level.tradespawns[7].angles = (0,351.568,0);

    level.tradeSpawnCount = level.tradespawns.size;
}
