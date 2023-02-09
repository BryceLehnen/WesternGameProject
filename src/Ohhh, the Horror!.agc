OhhhtheHorror:

if start >= 240 and start < 257
	quest$ = "Ohhh, the Horror!"
	if start = 240 then task$ = "Go into town and ask Harry what's happened"
	if start = 246 then task$ = "Head into John's Office"
	if start = 256 then task$ = "Mayor Choice"
endif

for x = 1 to 1
if quest$ = "Ohhh, the Horror!"
//////////////////////////////////////////////////////////////////////////////////////////
	if task$ = "Go into town and ask Harry what's happened"
		if back$ = "Alley"
			SetSpriteDepth(16,1)
			SetSpritePosition(16,800,372)
		endif
		
		if back$ = "Alley"
			if playerx >= 699
				playerx = 700
				if text = 242
					SetTextPosition(242,5,680)
					SetTextPosition(243,5,710)
					SetTextColor(243,140,140,140,255)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 244
						exit
					endif
				else
					SetTextPosition(242,-1024,0)
					SetTextPosition(243,-1024,0)
				endif
				if text = 244
					SetTextPosition(244,5,680)
					SetTextPosition(245,5,710)
					SetTextColor(245,140,140,140,255)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 247
						start = 246
						skytran = 2
						SetTextPosition(244,-1024,0)
						SetTextPosition(245,-1024,0)
						exit
					endif
				else
					SetTextPosition(244,-1024,0)
					SetTextPosition(245,-1024,0)
				endif
			endif
		endif
	endif
//////////////////////////////////////////////////////////////////////////////////////////
	if task$ = "Head into John's Office"
		if back$ = "Mayor"
			SetSpriteDepth(14,1)
			SetSpritePosition(14,750,368)
			SetSpriteDepth(17,1)
			SetSpritePosition(17,250,368)
		endif
		if back$ = "Alley"
			SetSpriteDepth(16,1)
			SetSpritePosition(16,800,372)
		endif
		
		if back$ = "Mayor"
			if playerx >= 599
				playerx = 600
				if text = 247
					SetTextPosition(247,5,680)
					SetTextPosition(248,5,710)
					SetTextColor(248,140,140,140,255)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 249
						exit
					endif
				else
					SetTextPosition(247,-1024,0)
					SetTextPosition(248,-1024,0)
				endif
				if text = 249
					SetTextPosition(249,5,680)
					SetTextPosition(250,5,710)
					SetTextColor(250,140,140,140,255)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 251
						exit
					endif
				else
					SetTextPosition(249,-1024,0)
					SetTextPosition(250,-1024,0)
				endif
				if text = 251
					SetTextPosition(251,5,680)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 252
						exit
					endif
				else
					SetTextPosition(251,-1024,0)
				endif
				if text = 252
					SetTextPosition(252,5,680)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 253
						exit
					endif
				else
					SetTextPosition(252,-1024,0)
				endif
				if text = 253
					if GetRawKeyPressed(38) or GetRawKeyPressed(40) then choice = -choice
					SetTextPosition(253,5,680)
					SetTextPosition(254,5,710)
					SetTextPosition(255,5,730)
					if choice = 1
						SetTextColor(254,140,140,140,255)
						SetTextColor(255,255,255,255,255)
					else
						SetTextColor(254,255,255,255,255)
						SetTextColor(255,140,140,140,255)
					endif
					if GetRawKeyPressed(32)
						playsound(1)
						if choice = 1
							SetTextPosition(253,-1024,0)
							SetTextPosition(254,-1024,0)
							SetTextPosition(255,-1024,0)
							text = 1
							start = 258
							tran$ = "Ending"
							playersize$ = ""
							quest$ = ""
							task$ = ""
							back$ = ""
							choice = 1
							exit
						endif
						if choice = -1
							SetTextPosition(253,-1024,0)
							SetTextPosition(254,-1024,0)
							SetTextPosition(255,-1024,0)
							text = 1
							start = 260
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
