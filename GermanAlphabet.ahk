
GermanKey(key)
{
	GetKeystate, CAPSstate, CapsLock, T ;
	GetKeystate, SHIFTstate, Shift, D ;
	if (SHIFTstate = "D")
	{
		if (CAPSstate = "D")
		{
			if(key = "a") 
			{
				Send,ä
			}
			if(key = "o") 
			{
				Send,ö
			}
			if(key = "u") 
			{
				Send,ü
			}
			
		}
		else
		{
			if(key = "a") 
			{
				Send,Ä
			}
			if(key = "o") 
			{
				Send,Ö
			}
			if(key = "u") 
			{
				Send,Ü
			}
			
		}	
	}
	else
	{
		if (CAPSstate = "D")
		{
			if(key = "a") 
			{
				Send,Ä
			}
			if(key = "o") 
			{
				Send,Ö
			}
			if(key = "u") 
			{
				Send,Ü
			}
			
		}
		else
		{
			if(key = "a") 
			{
				Send,ä
			}
			if(key = "o") 
			{
				Send,ö
			}
			if(key = "u") 
			{
				Send,ü
			}
			
		}	
	}
	if(key = "s") 
	{
		Send, ß
	}
	if(key = "e") 
	{
		Send, €
	}
		if(key = "m") 
	{
		Send, μ
	}
}

