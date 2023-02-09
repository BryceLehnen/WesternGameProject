GottaDoWhatYouGottaDo:


if start >= 421 and start < 435
	quest$ = "Gotta Do What You Gotta Do"
	if start = 421 then task$ = "Meet with William at the Mayor's office"
	if start = 424 then task$ = "Convince John"
	if start = 430 then task$ = "Threaten John with force"
endif

for x = 1 to 1
if quest$ = "Gotta Do What You Gotta Do"
//////////////////////////////////////////////////////////////////////////////////////////
	if task$ = "Meet with William at the Mayor's office"
		if back$ = "Mayor"
			SetSpriteDepth(14,1)
			SetSpritePosition(14,750,368)
			SetSpriteDepth(17,1)
			SetSpritePosition(17,250,368)
		endif
		
		if back$ = "Mayor"
			if playerx >= 599
				playerx = 600
				if text = 423
					if GetRawKeyPressed(38) or GetRawKeyPressed(40) then choice = -choice
					SetTextPosition(423,5,680)
					SetTextPosition(424,5,710)
					SetTextPosition(430,5,730)
					if choice = 1
						SetTextColor(424,140,140,140,255)
						SetTextColor(430,255,255,255,255)
					else
						SetTextColor(424,255,255,255,255)
						SetTextColor(430,140,140,140,255)
					endif
					if GetRawKeyPressed(32)
						playsound(1)
						if choice = 1
							SetTextPosition(423,-1024,0)
							SetTextPosition(424,-1024,0)
							SetTextPosition(430,-1024,0)
							SetTextColor(424,255,255,255,255)
							text = 425
							start = 424
							exit
						endif
						if choice = -1
							SetTextPosition(423,-1024,0)
							SetTextPosition(424,-1024,0)
							SetTextPosition(430,-1024,0)
							SetTextColor(430,255,255,255,255)
							text = 431
							start = 430
							exit							
						endif
					endif
				endif
			endif
		endif
	endif
//////////////////////////////////////////////////////////////////////////////////////////
	if task$ = "Convince John"
		if back$ = "Mayor"
			SetSpriteDepth(14,1)
			SetSpritePosition(14,750,368)
			SetSpriteDepth(17,1)
			SetSpritePosition(17,250,368)
		endif
		
		if back$ = "Mayor"
			if playerx >= 599
				playerx = 600
				if text = 425
					SetTextPosition(425,5,680)
					SetTextPosition(426,5,710)
					SetTextColor(426,140,140,140,255)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 427
						exit
					endif
				else
					SetTextPosition(425,-1024,0)
					SetTextPosition(426,-1024,0)
				endif
				if text = 427
					SetTextPosition(427,5,680)
					SetTextPosition(428,5,710)
					SetTextColor(428,140,140,140,255)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 429
						exit
					endif
				else
					SetTextPosition(427,-1024,0)
					SetTextPosition(428,-1024,0)
				endif
				if text = 429
					SetTextPosition(429,5,680)
					if GetRawKeyPressed(32)
						playsound(1)
						SetTextPosition(429,-1024,0)
						text = 1
						start = 436
						tran$ = "Ending"
						playersize$ = ""
						quest$ = ""
						task$ = ""
						back$ = ""
						choice = 1
						exit
					endif
				else
					SetTextPosition(429,-1024,0)
				endif
			endif
		endif
	endif
//////////////////////////////////////////////////////////////////////////////////////////
	if task$ = "Threaten John with force"
		if back$ = "Mayor"
			SetSpriteDepth(14,1)
			SetSpritePosition(14,750,368)
			SetSpriteDepth(17,1)
			SetSpritePosition(17,250,368)
		endif
		
		if back$ = "Mayor"
			if playerx >= 599
				playerx = 600
				if text = 431
					SetTextPosition(431,5,680)
					SetTextPosition(432,5,710)
					SetTextColor(432,140,140,140,255)
					if GetRawKeyPressed(32)
						playsound(1)
						text = 433
						exit
					endif
				else
					SetTextPosition(431,-1024,0)
					SetTextPosition(432,-1024,0)
				endif
				if text = 433
					SetTextPosition(433,5,680)
					SetTextPosition(434,5,710)
					SetTextColor(434,140,140,140,255)
					if GetRawKeyPressed(32)
						playsound(1)
						SetTextPosition(433,-1024,0)
						SetTextPosition(434,-1024,0)
						text = 1
						start = 438
						tran$ = "Ending"
						playersize$ = ""
						quest$ = ""
						task$ = ""
						back$ = ""
						choice = 1
						exit
					endif
				else
					SetTextPosition(433,-1024,0)
					SetTextPosition(434,-1024,0)
				endif
			endif
		endif
	endif
endif
next
return
