TheStartofSomethingTerrible:


if start >= 300 and start < 312
	quest$ = "The Start of Something Terrible"
	if start = 300 then task$ = "Speak with Harry"
	if start = 306 then task$ = "Gather intel for the plan"
	if start = 307 then task$ = "Report back to Harry"
endif

for x = 1 to 1
if quest$ = "The Start of Something Terrible"
//////////////////////////////////////////////////////////////////////////////////////////
	if task$ = "Speak with Harry"
		if back$ = "Alley"
			SetSpriteDepth(16,1)
			SetSpritePosition(16,800,372)
		endif
		
		if back$ = "Alley"
			if playerx >= 699
				playerx = 700
				if text = 302
					SetTextPosition(302,5,680)
					SetTextPosition(303,5,710)
					SetTextColor(303,140,140,140,255)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 304
						exit
					endif
				else
					SetTextPosition(302,-1024,0)
					SetTextPosition(303,-1024,0)
				endif
				if text = 304
					SetTextPosition(304,5,680)
					SetTextPosition(305,5,710)
					SetTextColor(305,140,140,140,255)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 306
						start = 306
						SetTextPosition(304,-1024,0)
						SetTextPosition(305,-1024,0)
						exit
					endif
				else
					SetTextPosition(304,-1024,0)
					SetTextPosition(305,-1024,0)
				endif
			endif
		endif
	endif
//////////////////////////////////////////////////////////////////////////////////////////
	if task$ = "Gather intel for the plan"
		if back$ = "Alley"
			SetSpriteDepth(16,1)
			SetSpritePosition(16,800,372)
		endif
		
		if back$ = "Mayor"
			if playerx >= 599
				playerx = 600
				if text = 306
					SetTextPosition(306,5,710)
					SetTextColor(306,140,140,140,255)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 308
						start = 307
						skytran = 2
						SetTextPosition(306,-1024,0)
						exit
					endif
				else
					SetTextPosition(306,-1024,0)
				endif
			endif
		endif
	endif
//////////////////////////////////////////////////////////////////////////////////////////
	if task$ = "Report back to Harry"
		if back$ = "Alley"
			SetSpriteDepth(16,1)
			SetSpritePosition(16,800,372)
		endif
		
		if back$ = "Alley"
			if playerx >= 699
				playerx = 700
				if text = 308
					SetTextPosition(308,5,680)
					SetTextPosition(309,5,710)
					SetTextPosition(310,5,730)
					SetTextColor(309,140,140,140,255)
					SetTextColor(310,140,140,140,255)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 310
						exit
					endif
				else
					SetTextPosition(308,-1024,0)
					SetTextPosition(309,-1024,0)
					SetTextPosition(310,-1024,0)
				endif
				if text = 310
					SetTextPosition(311,5,680)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 315
						start = 312
						skytran = 3
						task$ = "Go back home and sleep"
						SetTextPosition(311,-1024,0)
						exit
					endif
				else
					SetTextPosition(311,-1024,0)
				endif
			endif
		endif
	endif
endif
next
return
