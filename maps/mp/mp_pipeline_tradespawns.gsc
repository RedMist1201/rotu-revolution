/**
* vim: set ft=cpp:
* file: maps\mp\mp_pipeline_waypoints.gsc
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
    level.tradespawns[0].origin = (-436.823,-3628.32,342.731);
    level.tradespawns[0].angles = (359.153,273.011,0);
    level.tradespawns[1] = spawnstruct();  // spec'd for equipment shop
    level.tradespawns[1].origin = (-709.049,-3791.45,374.595);
    level.tradespawns[1].angles = (354.962,195.607,0);
    level.tradespawns[2] = spawnstruct();  // spec'd for weapon shop
    level.tradespawns[2].origin = (-206.488,376.196,34.7874);
    level.tradespawns[2].angles = (5.80322,269.418,0);
    level.tradespawns[3] = spawnstruct();  // spec'd for equipment shop
    level.tradespawns[3].origin = (-569.777,479.281,32.9368);
    level.tradespawns[3].angles = (359.455,1.13211,0);
    level.tradespawns[4] = spawnstruct();  // spec'd for weapon shop
    level.tradespawns[4].origin = (-210.381,1127.13,208.125);
    level.tradespawns[4].angles = (0,359.967,0);
    level.tradespawns[5] = spawnstruct();  // spec'd for equipment shop
    level.tradespawns[5].origin = (-44.3124,1730.76,212.125);
    level.tradespawns[5].angles = (0,272.923,0);
    level.tradespawns[6] = spawnstruct();  // spec'd for weapon shop
    level.tradespawns[6].origin = (557.683,3905.72,12.3225);
    level.tradespawns[6].angles = (353.787,355.051,0);
    level.tradespawns[7] = spawnstruct();  // spec'd for equipment shop
    level.tradespawns[7].origin = (170.178,3591.78,3.87753);
    level.tradespawns[7].angles = (359.843,359.501,0);
    level.tradespawns[8] = spawnstruct();  // spec'd for weapon shop
    level.tradespawns[8].origin = (1774.46,1733.45,0.124999);
    level.tradespawns[8].angles = (0,90.2862,0);
    level.tradespawns[9] = spawnstruct();  // spec'd for equipment shop
    level.tradespawns[9].origin = (2076,2073.47,0.125);
    level.tradespawns[9].angles = (0,271.632,0);
    level.tradespawns[10] = spawnstruct();  // spec'd for weapon shop
    level.tradespawns[10].origin = (1318.6,632.022,268.125);
    level.tradespawns[10].angles = (0,270.132,0);
    level.tradespawns[11] = spawnstruct();  // spec'd for equipment shop
    level.tradespawns[11].origin = (1147.44,-71.5449,208.125);
    level.tradespawns[11].angles = (0,178.44,0);
    level.tradespawns[12] = spawnstruct();  // spec'd for weapon shop
    level.tradespawns[12].origin = (-428.994,1765.8,0.250304);
    level.tradespawns[12].angles = (359.985,270.28,0);
    level.tradespawns[13] = spawnstruct();  // spec'd for equipment shop
    level.tradespawns[13].origin = (145.845,1143.89,-119.875);
    level.tradespawns[13].angles = (0,91.3518,0);

    level.tradeSpawnCount = level.tradespawns.size;
}
