//	@file Name: admins.sqf

if (!isServer) exitWith {};

if (loadFile (externalConfigFolder + "\admins.sqf") != "") then
{
	call compile preprocessFileLineNumbers (externalConfigFolder + "\admins.sqf");
}
else
{
	// Admin menu (U key) access levels

	/*******************************************************
	 Player UID examples :

		"76561198046182063", // =D2D=Cpt.Zilarrezko
	    "76561197982242370", // =D2D=Wookie
	    "76561198067659479", // =D2D=Gen.Brad
	    "76561198078451304"  // =D2D=Gen.Mazz

	 Important: Don't put a comma (,) at the end of the last one
	********************************************************/

	// Low Administrators: manage & spectate players, remove hacked vehicles
	lowAdmins = compileFinal str
	[
		// Put player UIDs here
	];

	// High Administrators: manage & spectate players, remove hacked vehicles, show player tags
	highAdmins = compileFinal str
	[
		// Put player UIDs here
		"76561198046182063" // =D2D=Cpt.Zilarrezko
	];

	// Server Owners: access to everything
	serverOwners = compileFinal str
	[
		// Put player UIDs here
		"76561197982242370", // =D2D=Wookie
	    "76561198067659479", // =D2D=Gen.Brad
	    "76561198078451304"  // =D2D=Gen.Mazz
	];

	/********************************************************/
};

if (typeName lowAdmins == "ARRAY") then { lowAdmins = compileFinal str lowAdmins };
if (typeName highAdmins == "ARRAY") then { highAdmins = compileFinal str highAdmins };
if (typeName serverOwners == "ARRAY") then { serverOwners = compileFinal str serverOwners };

publicVariable "lowAdmins";
publicVariable "highAdmins";
publicVariable "serverOwners";
