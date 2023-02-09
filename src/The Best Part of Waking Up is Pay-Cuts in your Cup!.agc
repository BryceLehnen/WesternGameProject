TheBestPartofWakingUpisPayCutsinyourCup:

if start >= 219 and start < 239
	quest$ = "The Best Part of Waking Up is Pay-Cuts in your Cup!"
	if start = 219 then task$ = "Speak with the Mayor about his plans"
	if start = 223 then task$ = "Report the good news to the workers"
	if start = 231 then task$ = "Report back to John"
endif

for x = 1 to 1
if quest$ = "The Best Part of Waking Up is Pay-Cuts in your Cup!"
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	if task$ = "Speak with the Mayor about his plans"
		if back$ = "Mayor"
			SetSpriteDepth(14,1)
			SetSpritePosition(14,750,368)
		endif
		if back$ = "Factory Inside"
			SetSpriteDepth(18,1)
			SetSpritePosition(18,550,492)
		endif
		
		if back$ = "Mayor"
			if playerx >= 599
				playerx = 600
				if text = 221
					SetTextPosition(221,5,680)
					SetTextPosition(222,5,710)
					SetTextColor(222,140,140,140,255)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 224
						start = 223
						SetTextPosition(221,-1024,0)
						SetTextPosition(222,-1024,0)
						exit
					endif
				else
					SetTextPosition(221,-1024,0)
					SetTextPosition(222,-1024,0)
				endif
			endif
		endif
	endif
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	if task$ = "Report the good news to the workers"
		if back$ = "Mayor"
			SetSpriteDepth(14,1)
			SetSpritePosition(14,750,368)
		endif
		if back$ = "Factory Inside"
			SetSpriteDepth(18,1)
			SetSpritePosition(18,550,492)
		endif	
		
		if back$ = "Factory Inside"
		if playerx >= 449
			playerx = 450
			if text = 224
				SetTextPosition(224,5,680)
				SetTextPosition(225,5,710)
				SetTextColor(225,140,140,140,255)
				if GetRawKeyPressed(32)
					playsound(1)
					text = 226
					exit
				endif
			else
				SetTextPosition(224,-1024,0)
				SetTextPosition(225,-1024,0)
			endif
			if text = 226
				SetTextPosition(226,5,680)
				SetTextPosition(227,5,710)
				SetTextColor(227,140,140,140,255)
				if GetRawKeyPressed(32)
					playsound(1)
					text = 228
					exit
				endif
			else
				SetTextPosition(226,-1024,0)
				SetTextPosition(227,-1024,0)
			endif
			if text = 228
				SetTextPosition(228,5,710)
				SetTextPosition(229,5,730)
				SetTextColor(228,140,140,140,255)
				SetTextColor(229,140,140,140,255)
				if GetRawKeyPressed(32)
					playsound(1)
					text = 230
					exit
				endif
			else
				SetTextPosition(228,-1024,0)
				SetTextPosition(229,-1024,0)
				
			endif
			if text = 230
				SetTextPosition(230,5,680)
				if GetRawKeyPressed(32)
					playsound(1)
					text = 232
					start = 231
					skytran = 2
					SetTextPosition(230,-1024,0)
				endif
			else
				SetTextPosition(230,-1023,0)
			endif
		endif
		endif	
	endif
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	if task$ = "Report back to John"
		if back$ = "Mayor"
			SetSpriteDepth(14,1)
			SetSpritePosition(14,750,368)
		endif
		if back$ = "Factory Inside"
			SetSpriteDepth(18,1)
			SetSpritePosition(18,550,492)
		endif	
		
		if back$ = "Mayor"
		if playerx >= 599
			playerx = 600
			if text = 232
				SetTextPosition(232,5,680)
				SetTextPosition(233,5,710)
				SetTextColor(233,140,140,140,255)
				if GetRawKeyPressed(32)
					playsound(1)
					text = 234
					exit
				endif
			else
				SetTextPosition(232,-1024,0)
				SetTextPosition(233,-1024,0)
			endif
			if text = 234
				SetTextPosition(234,5,680)
				SetTextPosition(235,5,710)
				SetTextColor(235,140,140,140,255)
				if GetRawKeyPressed(32)
					playsound(1)
					text = 236
					exit
				endif
			else
				SetTextPosition(234,-1024,0)
				SetTextPosition(235,-1024,0)
			endif
			if text = 236
				SetTextPosition(236,5,680)
				SetTextPosition(237,5,710)
				SetTextColor(237,140,140,140,255)
				if GetRawKeyPressed(32)
					playsound(1)
					text = 238
					exit
				endif
			else
				SetTextPosition(236,-1024,0)
				SetTextPosition(237,-1024,0)
			endif
			if text = 238
				SetTextPosition(238,5,680)
				if GetRawKeyPressed(32)
					playsound(1)
					text = 242
					start = 239
					skytran = 3
					task$ = "Go back home and sleep"
					SetTextPosition(238,-1024,0)
					exit
				endif
			else
				SetTextPosition(238,-1024,0)
			endif
		endif
		endif
	endif
endif
next
return
