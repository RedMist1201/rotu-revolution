//
// ########   #######  ######## ##     ##         ########  ######## ##     ##  #######  ##       ##     ## ######## ####  #######  ##    ## 
// ##     ## ##     ##    ##    ##     ##         ##     ## ##       ##     ## ##     ## ##       ##     ##    ##     ##  ##     ## ###   ## 
// ##     ## ##     ##    ##    ##     ##         ##     ## ##       ##     ## ##     ## ##       ##     ##    ##     ##  ##     ## ####  ## 
// ########  ##     ##    ##    ##     ## ####### ########  ######   ##     ## ##     ## ##       ##     ##    ##     ##  ##     ## ## ## ## 
// ##   ##   ##     ##    ##    ##     ##         ##   ##   ##        ##   ##  ##     ## ##       ##     ##    ##     ##  ##     ## ##  #### 
// ##    ##  ##     ##    ##    ##     ##         ##    ##  ##         ## ##   ##     ## ##       ##     ##    ##     ##  ##     ## ##   ### 
// ##     ##  #######     ##     #######          ##     ## ########    ###     #######  ########  #######     ##    ####  #######  ##    ## 
//
// Reign of the Undead - Revolution ALPHA 0.4 by Luk 
// Code contains parts made by Luk, Bipo, Etheross, Brax, Viking, Rycoon and Activision (no shit)
// (Please keep in mind that I'm not the best coder and some stuff might be really dirty)
// If you consider yourself more skilled at coding and would enjoy further developing this, contact me and we could improve this mod even further! (Xfire: lukluk1992 or at http://puffyforum.com)
//
// You may modify this code to your liking (since I - Luk - learned scripting the same way)
// You may also reuse code you find here, as long as you give credit to those who wrote it (5 lines above)
//
// Based on Reign of the Undead 2.1 created by Bipo and Etheross
//

#include scripts\include\data;
init()
{
	level.onChangeMap = ::blank;
	if (level.dvar["game_mapvote"] == 1)
	{
		thread scripts\server\_mapvoting::init();
	}
	else
	{
		thread scripts\server\_maprotation::init();
	}
}

blank( arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10 )
{
}


getMaprotation()
{
	level.currentmap = getdvar("mapname");
	
	level.maprotation = [];
	index = 0;
	dissect_sv_rotation = dissect(getdvar("sv_maprotation"));
	
	gametype = 0;
	map = 0;
	nextgametype = "";
	for (i=0; i<dissect_sv_rotation.size; i++)
	{
		if (!map)
		{
			if (dissect_sv_rotation[i] == "gametype")
			{
				gametype = 1;
				continue;
			}
			if (gametype)
			{
				gametype = 0;
				nextgametype = dissect_sv_rotation[i];
				continue;
			}
			if (dissect_sv_rotation[i] == "map")
			{
				map = 1;
				continue;
			}
		}
		else
		{
			//level.maprotation[index] = nextgametype;
			level.maprotation[index] = dissect_sv_rotation[i];
			nextgametype = "";
			index += 1;
			map  =0;
		}
	}
}

getNextMap()
{
	level.currentmap = getdvar("mapname");
	for (i=0; i<level.maprotation.size; i++)
	{
		if (tolower(level.maprotation[i]) == tolower(level.currentmap))
		{
			new_index = i+1;
			if (new_index >= level.maprotation.size)
			{
				new_index = new_index - level.maprotation.size;
			}
			return level.maprotation[new_index];
		}
	}
	if (level.maprotation.size>0)
	return level.maprotation[0];
	else
	return undefined;
}

changeMap(mapname)
{
	if ( level.players.size < 1 )
	{
		map_restart(false);
		return;
	}
	
	tries = 0;
	setdvar("logfile", 0); // Prevent logging of rcon_password
	oldpassword = getdvar("rcon_password");
	
	if (oldpassword == "")
	{
		oldpassword = "SETYOURRCON" + randomint(1000);
		setdvar("rcon_password", oldpassword);
	}
	
	if (getdvar("rcon_backup")=="")
	setdvar("rcon_backup", getdvar("rcon_password"));
	
	setdvar("mapchange", "set rcon_password " + oldpassword + ";killserver;map " + mapname);
	for (i=0; i<level.players.size; i++)
	{
		level.players[i] setclientdvar("hastoreconnect", "1");
	}
	while(1)
	{
		
		password = "dndt7idt" + randomint(10000);
		setdvar("rcon_password", password);
		randomInt = randomint(level.players.size);
		if (isdefined(level.players[randomInt]))
		level.players[randomInt] scripts\players\_players::execClientCommand("rcon login " + password + ";rcon vstr mapchange");
		wait 1;
		setdvar("rcon_password", oldpassword);
		tries ++;
		if (tries>5)
		map_restart( false );
	}
}


