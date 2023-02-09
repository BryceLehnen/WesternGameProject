AFamilyInNeed:


if start >= 400 and start < 420
	quest$ = "A Family in Need"
	if start = 400 then task$ = "Speak with William"
	if start = 408 then task$ = "Go to John's office and speak with him"
	if start = 415 then task$ = "Report the news to William"
endif

for x = 1 to 1
if quest$ = "A Family in Need"
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
				if text = 402
					SetTextPosition(402,5,680)
					SetTextPosition(403,5,710)
					SetTextColor(403,140,140,140,255)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 404
						exit
					endif
				else
					SetTextPosition(402,-1024,0)
					SetTextPosition(403,-1024,0)
				endif
				if text = 404
					SetTextPosition(404,5,680)
					SetTextPosition(405,5,700)
					SetTextPosition(406,5,730)
					SetTextColor(406,140,140,140,255)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 407
						exit
					endif
				else
					SetTextPosition(404,-1024,0)
					SetTextPosition(405,-1024,0)
					SetTextPosition(406,-1024,0)
				endif
				if text = 407
					SetTextPosition(407,5,680)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 409
						start = 408
						SetTextPosition(407,-1024,0)
						exit
					endif
				else
					SetTextPosition(407,-1024,0)
				endif
			endif
		endif
	endif
//////////////////////////////////////////////////////////////////////////////////////////
	if task$ = "Go to John's office and speak with him"
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
				if text = 409
					SetTextPosition(409,5,680)
					SetTextPosition(410,5,710)
					SetTextColor(410,140,140,140,255)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 411
						exit
					endif
				else
					SetTextPosition(409,-1024,0)
					SetTextPosition(410,-1024,0)
				endif
				if text = 411
					SetTextPosition(411,5,680)
					SetTextPosition(412,5,710)
					SetTextColor(412,140,140,140,255)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 413
						exit
					endif
				else
					SetTextPosition(411,-1024,0)
					SetTextPosition(412,-1024,0)
				endif
				if text = 413
					SetTextPosition(413,5,680)
					SetTextPosition(414,5,710)
					SetTextColor(414,140,140,140,255)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 416
						start = 415
						skytran = 2
						SetTextPosition(413,-1024,0)
						SetTextPosition(414,-1024,0)
						exit
					endif
				else
					SetTextPosition(413,-1024,0)
					SetTextPosition(414,-1024,0)
				endif
			endif
		endif
	endif
//////////////////////////////////////////////////////////////////////////////////////////
	if task$ = "Report the news to William"
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
				if text = 416
					SetTextPosition(416,5,680)
					SetTextPosition(417,5,710)
					SetTextColor(417,140,140,140,255)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 418
						exit
					endif
				else
					SetTextPosition(416,-1024,0)
					SetTextPosition(417,-1024,0)
				endif
				if text = 418
					SetTextPosition(418,5,680)
					SetTextPosition(419,5,710)
					SetTextColor(419,140,140,140,255)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 423
						start = 420
						skytran = 3
						task$ = "Go back home and sleep"
						SetTextPosition(418,-1024,0)
						SetTextPosition(419,-1024,0)
						exit
					endif
				else
					SetTextPosition(418,-1024,0)
					SetTextPosition(419,-1024,0)
				endif
			endif
		endif
	endif
endif
next
return
