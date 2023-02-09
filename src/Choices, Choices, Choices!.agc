ChoicesChoicesChoices:



if start = 130
	quest$ = "Choices, Choices, Choices!"
	task$ = "Speak with either John, Harry, or William to side with them"
endif

for x = 1 to 1
if quest$ = "Choices, Choices, Choices!"
	if task$ = "Speak with either John, Harry, or William to side with them"
		if back$ = "Mayor"
			SetSpriteDepth(14,1)
			SetSpritePosition(14,750,368)
		endif
		if back$ = "Alley"
			SetSpriteDepth(16,1)
			SetSpritePosition(16,800,372)
		endif
		if back$ = "Factory Inside"
			SetSpriteDepth(18,1)
			SetSpritePosition(18,550,492)
		endif
//////////////////////////////////////////////////////////////////////////////////////////
		if back$ = "Mayor"
			if playerx > 599
				playerx = 600
				if text = 133
					if GetRawKeyPressed(38) or GetRawKeyPressed(40) then choice = -choice
					SetTextPosition(133,5,680)
					SetTextPosition(134,5,710)
					SetTextPosition(136,5,730)
					if choice = 1
						SetTextColor(134,140,140,140,255)
						SetTextColor(136,255,255,255,255)
					else
						SetTextColor(134,255,255,255,255)
						SetTextColor(136,140,140,140,255)
					endif
					if GetRawKeyPressed(32)
						playsound(1)
						if choice = 1
							SetTextPosition(133,-1024,0)
							SetTextPosition(134,-1024,0)
							SetTextPosition(136,-1024,0)
							text = 135
							exit
						endif
						if choice = -1
							SetTextPosition(133,-1024,0)
							SetTextPosition(134,-1024,0)
							SetTextPosition(136,-1024,0)
							choice = 1
							text = 1
							exit							
						endif
					endif
				endif
				if text = 135
					SetTextPosition(135,5,680)
					if GetRawKeyPressed(32)
						playsound(1)
						task$ = "Go back home and sleep"
						skytran = 3
						start = 199
						text = 202
						SetTextPosition(135,-1024,0)
					endif
				else
					SetTextPosition(135,-1024,0)
				endif
				if text = 1
					SetTextPosition(137,5,680)
					if GetRawKeyPressed(32)
						playsound(1)
						skytran = 2
						text = 0
						SetTextPosition(137,5,680)
						exit
					endif
				else
					SetTextPosition(137,-1024,0)
				endif
			endif
		endif
//////////////////////////////////////////////////////////////////////////////////////////
		if back$ = "Alley"
			if playerx > 699
				playerx = 700
				if text = 133
					if GetRawKeyPressed(38) or GetRawKeyPressed(40) then choice = -choice
					SetTextPosition(139,5,680)
					SetTextPosition(140,5,710)
					SetTextPosition(142,5,730)
					if choice = 1
						SetTextColor(140,140,140,140,255)
						SetTextColor(142,255,255,255,255)
					else
						SetTextColor(140,255,255,255,255)
						SetTextColor(142,140,140,140,255)
					endif
					if GetRawKeyPressed(32)
						playsound(1)
						if choice = 1
							SetTextPosition(139,-1024,0)
							SetTextPosition(140,-1024,0)
							SetTextPosition(142,-1024,0)
							text = 135
							exit
						endif
						if choice = -1
							SetTextPosition(139,-1024,0)
							SetTextPosition(140,-1024,0)
							SetTextPosition(142,-1024,0)
							choice = 1
							text = 1
							exit							
						endif
					endif
				endif
				if text = 135
					SetTextPosition(141,5,680)
					if GetRawKeyPressed(32)
						playsound(1)
						task$ = "Go back home and sleep"
						skytran = 3
						start = 299
						text = 302
						SetTextPosition(141,-1024,0)
					endif
				else
					SetTextPosition(141,-1024,0)
				endif
				if text = 1
					SetTextPosition(143,5,680)
					if GetRawKeyPressed(32)
						playsound(1)
						skytran = 2
						text = 0
						SetTextPosition(143,5,680)
						exit
					endif
				else
					SetTextPosition(143,-1024,0)
				endif
			endif
		endif
//////////////////////////////////////////////////////////////////////////////////////////
		if back$ = "Factory Inside"
			if playerx > 449
				playerx = 450
				if text = 133
					if GetRawKeyPressed(38) or GetRawKeyPressed(40) then choice = -choice
					SetTextPosition(145,5,680)
					SetTextPosition(146,5,710)
					SetTextPosition(148,5,730)
					if choice = 1
						SetTextColor(146,140,140,140,255)
						SetTextColor(148,255,255,255,255)
					else
						SetTextColor(146,255,255,255,255)
						SetTextColor(148,140,140,140,255)
					endif
					if GetRawKeyPressed(32)
						playsound(1)
						if choice = 1
							SetTextPosition(145,-1024,0)
							SetTextPosition(146,-1024,0)
							SetTextPosition(148,-1024,0)
							text = 135
							exit
						endif
						if choice = -1
							SetTextPosition(145,-1024,0)
							SetTextPosition(146,-1024,0)
							SetTextPosition(148,-1024,0)
							choice = 1
							text = 1
							exit							
						endif
					endif
				endif
				if text = 135
					SetTextPosition(147,5,680)
					if GetRawKeyPressed(32)
						playsound(1)
						task$ = "Go back home and sleep"
						skytran = 3
						start = 399
						text = 402
						SetTextPosition(147,-1024,0)
					endif
				else
					SetTextPosition(147,-1024,0)
				endif
				if text = 1
					SetTextPosition(149,5,680)
					if GetRawKeyPressed(32)
						playsound(1)
						skytran = 2
						text = 0
						SetTextPosition(149,5,680)
						exit
					endif
				else
					SetTextPosition(149,-1024,0)
				endif
			endif
		endif
	endif
endif
next
return
