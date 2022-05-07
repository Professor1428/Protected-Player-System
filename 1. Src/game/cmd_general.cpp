إبحث عن :

ACMD(do_pvp)
{
	إبحث عن :
	LPCHARACTER pkVictim = CHARACTER_MANAGER::instance().Find(vid);

أضف اسفله :

#ifdef Protected_Player
	if (ch->IsProtected())
	{
		ch->ChatPacket(CHAT_TYPE_INFO, LC_TEXT("You can't do this because your (IsProtected)."));
		return;
	}
	
	if (pkVictim->IsProtected())
	{
		ch->ChatPacket(CHAT_TYPE_INFO, LC_TEXT("You can't do this casue you'r victim (Protected)."));
		return;
	}
#endif

إبحث عن :

ACMD(do_pkmode)
{
	
	إبحث عن :
	
	if (ch->GetLevel() < PK_PROTECT_LEVEL && mode != 0)
		return;
	
أضف اسفله :

#ifdef Protected_Player
	if (ch->IsProtected())
	{
		ch->ChatPacket(CHAT_TYPE_INFO, LC_TEXT("You can't do this because your (IsProtected)."));
		return;
	}
#endif

إبحث عن :

	ch->SetPKMode(mode);
}

أضف بعدها :

#ifdef Protected_Player
ACMD(do_protected)
{
	int pkmodenew = 0; // pkmode = 0

	if (ch->GetLevel() < 15)
	{
		ch->ChatPacket(CHAT_TYPE_INFO, LC_TEXT("You can't do this because your level is lower than 15."));
		return;
	}

	if (ch->IsDead())
	{
		ch->ChatPacket(CHAT_TYPE_INFO, LC_TEXT("You cannot do this because you are dead."));
		return;
	}

	if (CPVPManager::Instance().IsFighting(ch)) // MartySama Source
	{
		ch->ChatPacket(CHAT_TYPE_INFO, LC_TEXT("You can't do this because you are in pvp mode."));
		return;
	}

	if (ch->IsProtected())
	{
		ch->ChatPacket(CHAT_TYPE_INFO, LC_TEXT("You Are Already Protected."));
		return;
	}
	
	ch->SetPKMode(pkmodenew); // with int;

	ch->SetProtected(true); // from false to true; "char.h"
}

ACMD(do_unprotected)
{
	if (ch->IsProtected())
	{
		ch->SetProtected(false);
	}
	else
	{
		ch->ChatPacket(CHAT_TYPE_INFO, LC_TEXT("You can't do this because you are not protected"));
	}
}
#endif
