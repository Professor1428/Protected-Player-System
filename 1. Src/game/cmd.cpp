إبحث عن :
ACMD(do_pkmode);
أضف اسفله :

#ifdef Protected_Player
	ACMD(do_protected);
	ACMD(do_unprotected);
#endif

إبحث عن :

{ "pkmode",		do_pkmode,		0,			POS_DEAD,	GM_PLAYER	},

أضف اسفله :

#ifdef Protected_Player
	{ "protected_true",			do_protected,		0,			POS_DEAD,	GM_PLAYER },
	{ "protected_false",		do_unprotected,		0,			POS_DEAD,	GM_PLAYER },
#endif
