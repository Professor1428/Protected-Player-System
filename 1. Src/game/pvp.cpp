إبحث عن :

bool CPVPManager::CanAttack(LPCHARACTER pkChr, LPCHARACTER pkVictim)
{
	
		if (pkVictim->IsNPC() && pkChr->IsNPC() && !pkChr->IsGuardNPC())
		return false;

أضف أسفلها :

#ifdef Protected_Player
	if (pkChr->IsProtected() || pkVictim->IsProtected())
	{
		return false;
	}
#endif

