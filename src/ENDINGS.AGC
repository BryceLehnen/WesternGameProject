Endings:


if tran$ = "Ending"
	for x = 255 to 0 step -5
		for y = 1 to 10
			SetSpriteColorAlpha(y,x)
		next
		for z = 14 to 42
			SetSpriteColorAlpha(z,x)
		next
		sync()
	next
	tran$ = ""
endif

//Mayor///////////////////////////////////////////////////////////////////////////////////
if start = 258
	SetTextSize(258,45)
	SetTextPosition(258,(GetVirtualWidth()/2 - GetTextTotalWidth(258)/2),GetVirtualHeight()/2 - GetTextTotalHeight(258/2))
	SetTextColorAlpha(258,0)
	for x = 0 to 255 step 5
		SetTextColorAlpha(258,x)
		sync()
	next
	sleep(3000)
	for x = 255 to 0 step -5
		SetTextColorAlpha(258,x)
		sync()
	next
	start = 261
endif
if start = 260
	SetTextSize(260,45)
	SetTextPosition(260,(GetVirtualWidth()/2 - GetTextTotalWidth(260)/2),GetVirtualHeight()/2 - GetTextTotalHeight(260/2))
	SetTextColorAlpha(260,0)
	for x = 0 to 255 step 5
		SetTextColorAlpha(260,x)
		sync()
	next
	sleep(3000)
	for x = 255 to 0 step -5
		SetTextColorAlpha(260,x)
		sync()
	next
	start = 261
endif

if start = 261
	SetTextPosition(13,(GetVirtualWidth()/2 - GetTextTotalWidth(13)/2),320)
	SetTextPosition(14,(GetVirtualWidth()/2 - GetTextTotalWidth(14)/2),360)
	SetTextPosition(15,(GetVirtualWidth()/2 - GetTextTotalWidth(15)/2),400)
	if GetRawKeyPressed(38) then choice = choice - 1
	if choice < 1 then choice = 3
	if GetRawKeyPressed(40) then choice = choice + 1
	if choice > 3 then choice = 1
	
	if choice = 1 
		SetTextColor(13,140,140,140,255)
	else
		SetTextColor(13,255,255,255,255)
	endif
	if choice = 2 
		SetTextColor(14,140,140,140,255)
	else
		SetTextColor(14,255,255,255,255)
	endif
	if choice = 3 
		SetTextColor(15,140,140,140,255)
	else
		SetTextColor(15,255,255,255,255)
	endif
	if GetRawKeyPressed(32)
		playsound(1)
		SetTextPosition(13,-1024,0)
		SetTextPosition(14,-1024,0)
		SetTextPosition(15,-1024,0)
		if choice = 1
			back$ = "Start"
			tran$ = "Start"
			skytran = 1
			start = 240
			text = 242
			choice = 1
			playersize$ = "Home"
			direction$ = "Right"
			for x = 14 to 42
				SetSpritePosition(x,-1024,0)
				SetSpriteColorAlpha(x,255)
			next
		endif
		if choice = 2
			back$ = "Start"
			tran$ = "Start"
			dialog$ = "Speak with the Mayor"
			skytran = 1
			start = 100
			text = 103
			choice = 1
			playersize$ = "Home"
			direction$ = "Right"
			for x = 14 to 42
				SetSpritePosition(x,-1024,0)
				SetSpriteColorAlpha(x,255)
			next
		endif
		if choice = 3
			end
		endif
	endif
endif


//Robber/////////////////////////////////////////////////////////////////////////////////
if start = 323
	SetTextSize(323,45)
	SetTextPosition(323,(GetVirtualWidth()/2 - GetTextTotalWidth(323)/2),GetVirtualHeight()/2 - GetTextTotalHeight(323/2))
	SetTextColorAlpha(323,0)
	for x = 0 to 255 step 5
		SetTextColorAlpha(323,x)
		sync()
	next
	sleep(3000)
	for x = 255 to 0 step -5
		SetTextColorAlpha(323,x)
		sync()
	next
	start = 326
endif
if start = 325
	SetTextSize(325,45)
	SetTextPosition(325,(GetVirtualWidth()/2 - GetTextTotalWidth(325)/2),GetVirtualHeight()/2 - GetTextTotalHeight(325/2))
	SetTextColorAlpha(325,0)
	for x = 0 to 255 step 5
		SetTextColorAlpha(325,x)
		sync()
	next
	sleep(3000)
	for x = 255 to 0 step -5
		SetTextColorAlpha(325,x)
		sync()
	next
	start = 326
endif

if start = 326
	SetTextPosition(13,(GetVirtualWidth()/2 - GetTextTotalWidth(13)/2),320)
	SetTextPosition(14,(GetVirtualWidth()/2 - GetTextTotalWidth(14)/2),360)
	SetTextPosition(15,(GetVirtualWidth()/2 - GetTextTotalWidth(15)/2),400)
	sync()
	if GetRawKeyPressed(38) then choice = choice - 1
	if choice < 1 then choice = 3
	if GetRawKeyPressed(40) then choice = choice + 1
	if choice > 3 then choice = 1
	
	if choice = 1 
		SetTextColor(13,140,140,140,255)
	else
		SetTextColor(13,255,255,255,255)
	endif
	if choice = 2 
		SetTextColor(14,140,140,140,255)
	else
		SetTextColor(14,255,255,255,255)
	endif
	if choice = 3 
		SetTextColor(15,140,140,140,255)
	else
		SetTextColor(15,255,255,255,255)
	endif
	if GetRawKeyPressed(32)
		SetTextPosition(13,-1024,0)
		SetTextPosition(14,-1024,0)
		SetTextPosition(15,-1024,0)
		playsound(1)
		if choice = 1
			back$ = "Start"
			tran$ = "Start"
			skytran = 1
			start = 313
			text = 315
			choice = 1
			playersize$ = "Home"
			direction$ = "Right"
			for x = 14 to 42
				SetSpritePosition(x,-1024,0)
				SetSpriteColorAlpha(x,255)
			next
		endif
		if choice = 2
			back$ = "Start"
			tran$ = "Start"
			dialog$ = "Speak with the Mayor"
			skytran = 1
			start = 100
			text = 103
			choice = 1
			playersize$ = "Home"
			direction$ = "Right"
			for x = 14 to 42
				SetSpritePosition(x,-1024,0)
				SetSpriteColorAlpha(x,255)
			next
		endif
		if choice = 3
			end
		endif
	endif
endif


//Worker/////////////////////////////////////////////////////////////////////////////////
if start = 436
	SetTextSize(436,45)
	SetTextPosition(436,(GetVirtualWidth()/2 - GetTextTotalWidth(436)/2),GetVirtualHeight()/2 - GetTextTotalHeight(436/2))
	SetTextColorAlpha(436,0)
	for x = 0 to 255 step 5
		SetTextColorAlpha(436,x)
		sync()
	next
	sleep(3000)
	for x = 255 to 0 step -5
		SetTextColorAlpha(436,x)
		sync()
	next
	start = 439
endif
if start = 438
	SetTextSize(438,45)
	SetTextPosition(438,(GetVirtualWidth()/2 - GetTextTotalWidth(438)/2),GetVirtualHeight()/2 - GetTextTotalHeight(438/2))
	SetTextColorAlpha(438,0)
	for x = 0 to 255 step 5
		SetTextColorAlpha(438,x)
		sync()
	next
	sleep(3000)
	for x = 255 to 0 step -5
		SetTextColorAlpha(438,x)
		sync()
	next
	start = 439
endif

if start = 439
	SetTextPosition(13,(GetVirtualWidth()/2 - GetTextTotalWidth(13)/2),320)
	SetTextPosition(14,(GetVirtualWidth()/2 - GetTextTotalWidth(14)/2),360)
	SetTextPosition(15,(GetVirtualWidth()/2 - GetTextTotalWidth(15)/2),400)
	if GetRawKeyPressed(38) then choice = choice - 1
	if choice < 1 then choice = 3
	if GetRawKeyPressed(40) then choice = choice + 1
	if choice > 3 then choice = 1
	
	if choice = 1 
		SetTextColor(13,140,140,140,255)
	else
		SetTextColor(13,255,255,255,255)
	endif
	if choice = 2 
		SetTextColor(14,140,140,140,255)
	else
		SetTextColor(14,255,255,255,255)
	endif
	if choice = 3 
		SetTextColor(15,140,140,140,255)
	else
		SetTextColor(15,255,255,255,255)
	endif
	if GetRawKeyPressed(32)
		SetTextPosition(13,-1024,0)
		SetTextPosition(14,-1024,0)
		SetTextPosition(15,-1024,0)
		playsound(1)
		if choice = 1
			back$ = "Start"
			tran$ = "Start"
			skytran = 1
			start = 421
			text = 423
			choice = 1
			playersize$ = "Home"
			direction$ = "Right"
			for x = 14 to 42
				SetSpritePosition(x,-1024,0)
				SetSpriteColorAlpha(x,255)
			next
		endif
		if choice = 2
			back$ = "Start"
			tran$ = "Start"
			dialog$ = "Speak with the Mayor"
			skytran = 1
			start = 100
			text = 103
			choice = 1
			playersize$ = "Home"
			direction$ = "Right"
			for x = 14 to 42
				SetSpritePosition(x,-1024,0)
				SetSpriteColorAlpha(x,255)
			next
		endif
		if choice = 3
			end
		endif
	endif
endif

return
