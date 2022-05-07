إبحث عن :

		// HACK
		
أضف اسفله :

#ifdef Protected_Player
	public:
		void				SetProtected(bool f) { m_IsProtected = f; }
		bool				IsProtected() const { return m_IsProtected; }

#endif

إبحث عن :

		BYTE				m_bSendHorseStaminaGrade;
		
أضف اسفله :

		bool m_IsProtected;
