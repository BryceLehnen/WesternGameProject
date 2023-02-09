ANewConnectionwiththeWorkers:


if start >= 200  and start < 219
	quest$ = "A New Connection with the Workers"
	if start = 200 then task$ = "Speak with John"
	if start = 206 then task$ = "Speak with William"
	if start = 214 then task$ = "Report back to John with your findings"
endif

for x = 1 to 1
if quest$ = "A New Connection with the Workers"
//////////////////////////////////////////////////////////////////////////////////////////
	if task$ = "Speak with John"
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
				if text = 202
					SetTextPosition(202,5,680)
					SetTextPosition(203,5,710)
					SetTextColor(203,140,140,140,255)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 204
						exit
					endif
				else
					SetTextPosition(202,-1024,0)
					SetTextPosition(203,-1024,0)
				endif
				if text = 204
					SetTextPosition(204,5,680)
					SetTextPosition(205,5,710)
					SetTextColor(205,140,140,140,255)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 207
						start = 206
						SetTextPosition(204,-1024,0)
						SetTextPosition(205,-1024,0)
						exit
					endif
				else
					SetTextPosition(204,-1024,0)
					SetTextPosition(205,-1024,0)
				endif
			endif
		endif
	endif
//////////////////////////////////////////////////////////////////////////////////////////
	if task$ = "Speak with William"
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
				if text = 207
					SetTextPosition(207,5,710)
					SetTextColor(207,140,140,140,255)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 208
						exit
					endif
				else
					SetTextPosition(207,-1024,0)
				endif
				if text = 208
					SetTextPosition(208,5,680)
					SetTextPosition(209,5,710)
					SetTextColor(209,140,140,140,255)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 210
						exit
					endif
				else
					SetTextPosition(208,-1024,0)
					SetTextPosition(209,-1024,0)
				endif
				if text = 210
					SetTextPosition(210,5,680)
					SetTextPosition(211,5,710)
					SetTextColor(211,140,140,140,255)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 212
						exit
					endif
				else
					SetTextPosition(210,-1024,0)
					SetTextPosition(211,-1024,0)
				endif
				if text = 212
					SetTextPosition(212,5,680)
					SetTextPosition(213,5,710)
					SetTextColor(213,140,140,140,255)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 215
						start = 214
						skytran = 2
						SetTextPosition(212,-1024,0)
						SetTextPosition(213,-1024,0)
						exit
					endif
				else
					SetTextPosition(212,-1024,0)
					SetTextPosition(213,-1024,0)
				endif
			endif
		endif
	endif
//////////////////////////////////////////////////////////////////////////////////////////
	if task$ = "Report back to John with your findings"
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
				if text = 215
					SetTextPosition(215,5,680)
					SetTextPosition(216,5,710)
					SetTextColor(216,140,140,140,255)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 217
						exit
					endif
				else
					SetTextPosition(215,-1024,0)
					SetTextPosition(216,-1024,0)
				endif
				if text = 217
					SetTextPosition(217,5,680)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 221
						start = 218
						skytran = 3
						task$ = "Go back home and sleep"
						SetTextPosition(217,-1024,0)
					endif
				else
					SetTextPosition(217,-1024,0)
				endif
			endif
		endif
	endif
endif
next


return
