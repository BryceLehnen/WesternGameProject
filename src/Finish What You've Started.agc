FinishWhatYouveStarted:

if start >= 313 and start < 323
	quest$ = "Finish What You've Started"
	if start = 313 then task$ = "Meet with Harry at John's office"
endif

for x = 1 to 1
if quest$ = "Finish What You've Started"
	if task$ = "Meet with Harry at John's office"
		if back$ = "Mayor"
			SetSpriteDepth(14,1)
			SetSpritePosition(14,750,368)
			SetSpriteDepth(15,1)
			SetSpritePosition(15,250,368)
		endif
		
		if back$ = "Mayor"
			if playerx >= 599
				playerx = 600
				if text = 315
					SetTextPosition(315,5,680)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 316
						exit
					endif
				else
					SetTextPosition(315,-1024,0)
				endif
				if text = 316
					SetTextPosition(316,5,680)
					SetTextPosition(317,5,710)
					SetTextColor(317,140,140,140,255)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 318
						exit
					endif
				else
					SetTextPosition(316,-1024,0)
					SetTextPosition(317,-1024,0)
				endif
				if text = 318
					SetTextPosition(318,5,680)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 319
						exit
					endif
				else
					SetTextPosition(318,-1024,0)
				endif
				if text = 319
					SetTextPosition(319,5,680)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 320
						exit
					endif
				else
					SetTextPosition(319,-1024,0)
				endif
				
				if text = 320
					if GetRawKeyPressed(38) or GetRawKeyPressed(40) then choice = -choice
					SetTextPosition(320,5,680)
					SetTextPosition(321,5,710)
					SetTextPosition(322,5,730)
					if choice = 1
						SetTextColor(321,140,140,140,255)
						SetTextColor(322,255,255,255,255)
					else
						SetTextColor(321,255,255,255,255)
						SetTextColor(322,140,140,140,255)
					endif
					if GetRawKeyPressed(32)
						playsound(1)
						if choice = 1
							SetTextPosition(320,-1024,0)
							SetTextPosition(321,-1024,0)
							SetTextPosition(322,-1024,0)
							text = 1
							start = 323
							tran$ = "Ending"
							playersize$ = ""
							quest$ = ""
							task$ = ""
							back$ = ""
							choice = 1
							exit
						endif
						if choice = -1
							SetTextPosition(320,-1024,0)
							SetTextPosition(321,-1024,0)
							SetTextPosition(322,-1024,0)
							text = 1
							start = 325
							tran$ = "Ending"
							playersize$ = ""
							quest$ = ""
							task$ = ""
							back$ = ""
							choice = 1
							exit							
						endif
					endif
				endif
				
			endif
		endif
	endif
endif
next
return
