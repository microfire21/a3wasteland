//	@file Name: admins.sqf

// Admin menu (U key) access levels

/*******************************************************
 Player UID examples :

	    "76561198046182063", // =D2D=Cpt.Zilarrezko
	    "76561197982242370", // =D2D=Wookie
	    "76561198067659479", // =D2D=Gen.Brad
	    "76561198078451304"  // =D2D=Gen.Mazz

 Important: Don't put a coma at the end of the last one
********************************************************/

// Low Administrators: manage & spectate players, remove hacked vehicles
lowAdmins = 
[
	// Put player UIDs here
];

// High Administrators: manage & spectate players, remove hacked vehicles, show player tags
highAdmins = 
[
	// Put player UIDs here
	"76561198046182063" // =D2D=Cpt.Zilarrezko
];

// Server Owners: access to everything
serverOwners = 
[
	// Put player UIDs here
		"76561197982242370", // =D2D=Wookie
	    "76561198067659479", // =D2D=Gen.Brad
	    "76561198078451304"  // =D2D=Gen.Mazz
];
