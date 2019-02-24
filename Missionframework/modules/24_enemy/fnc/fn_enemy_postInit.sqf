/*
    KPLIB_fnc_enemy_postInit

    File: fn_enemy_postInit.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2019-02-02
    Last Update: 2019-02-18
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
        The postInit function of a module takes care of starting/executing the modules functions or scripts.
        Basically it starts/initializes the module functionality to make all provided features usable.

    Parameter(s):
        NONE

    Returns:
        Module postInit finished [BOOL]
*/

if (isServer) then {diag_log format ["[KP LIBERATION] [%1] [POST] [ENEMY] Module initializing...", diag_tickTime];};

// Server section (dedicated and player hosted)
if (isServer) then {

    // Start strength increase events
    [] call KPLIB_fnc_enemy_strengthInc;

};

// HC section
if (!hasInterface && !isDedicated) then {

};

// Player section
if (hasInterface) then {

};

if (isServer) then {diag_log format ["[KP LIBERATION] [%1] [POST] [ENEMY] Module initialized", diag_tickTime];};

true
