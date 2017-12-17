/**
* vim: set ft=cpp:
* file: maps\mp\mp_overgrown_tradespawns.gsc
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
    level.tradespawns[0].origin = (-10.2409,749.237,-168);
    level.tradespawns[0].angles = (0,359.83,0);
    level.tradespawns[1] = spawnstruct();  // spec'd for equipment shop
    level.tradespawns[1].origin = (-244.525,273.299,-176);
    level.tradespawns[1].angles = (0,90.6427,0);
    level.tradespawns[2] = spawnstruct();  // spec'd for weapon shop
    level.tradespawns[2].origin = (-654.976,-1763.89,-175.704);
    level.tradespawns[2].angles = (4.9695,144.349,0);
    level.tradespawns[3] = spawnstruct();  // spec'd for equipment shop
    level.tradespawns[3].origin = (-858.459,-1996.22,-179.869);
    level.tradespawns[3].angles = (1.44835,231.965,0);
    level.tradespawns[4] = spawnstruct();  // spec'd for weapon shop
    level.tradespawns[4].origin = (147.491,-5215.27,-302.084);
    level.tradespawns[4].angles = (0.233514,260.689,0);
    level.tradespawns[5] = spawnstruct();  // spec'd for equipment shop
    level.tradespawns[5].origin = (-96.8569,-4963.75,-275.011);
    level.tradespawns[5].angles = (3.79935,138.329,0);
    level.tradespawns[6] = spawnstruct();  // spec'd for weapon shop
    level.tradespawns[6].origin = (1069.43,-2613.58,-31.875);
    level.tradespawns[6].angles = (0,272.346,0);
    level.tradespawns[7] = spawnstruct();  // spec'd for equipment shop
    level.tradespawns[7].origin = (2353.64,-2532.98,-155.767);
    level.tradespawns[7].angles = (0.0951306,270.818,0);
    level.tradespawns[8] = spawnstruct();  // spec'd for weapon shop
    level.tradespawns[8].origin = (568.753,-2003.4,-335.636);
    level.tradespawns[8].angles = (11.9425,295.538,0);
    level.tradespawns[9] = spawnstruct();  // spec'd for equipment shop
    level.tradespawns[9].origin = (551.278,-2924.59,-212.396);
    level.tradespawns[9].angles = (358.513,86,0);
    level.tradespawns[10] = spawnstruct();  // spec'd for weapon shop
    level.tradespawns[10].origin = (1246.08,-195.952,-306.85);
    level.tradespawns[10].angles = (0.469732,212.355,0);
    level.tradespawns[11] = spawnstruct();  // spec'd for equipment shop
    level.tradespawns[11].origin = (2617.74,-568.425,-129.743);
    level.tradespawns[11].angles = (0.450713,297.773,0);

    level.tradeSpawnCount = level.tradespawns.size;
}
