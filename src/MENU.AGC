Menu:


if back$ = "Menu"
	//Images
	SetSpriteDepth(1,2)
	SetSpritePosition(1,0,96)
	SetSpriteDepth(8,3)
	SetSpritePosition(8,0,96)
		
	//Text
	SetTextColor(7,255,255,255,255)
	SetTextPosition(7,(GetVirtualWidth()/2 - GetTextTotalWidth(7)/2),680)
		
	//Keyhit
	if x# >= (GetVirtualWidth()/2 - GetTextTotalWidth(7)/2) and x# <= (GetVirtualWidth()/2 + GetTextTotalWidth(7)/2) and y# >= 680 and y# <= (680 + GetTextTotalHeight(7))
		SetTextColor(7,140,140,140,255)
		if GetPointerPressed() = 1
			playsound(1)
			SetTextPosition(7,-1024,0)
			for x = 255 to 0 step -5
				SetSpriteColorAlpha(1,x)
				SetSpriteColorAlpha(8,x)
				sync()
			next
			SetSpritePosition(1,-1024,0)
			SetSpritePosition(8,-1024,0)
			
			back$ = "Intro"
		endif
	endif
endif

if back$ = "Intro"
	//Hide
	for x = 8 to 10
		SetTextColorAlpha(x,0)
	next
	SetTextPosition(8,5,5)
	SetTextPosition(9,5,40)
	settextposition(10,5,75)
	
	//Show
	for x = 0 to 255 step 5
		SetTextColorAlpha(8,x)
		sync()
	next
	sleep(500)
	for x = 0 to 255 step 5
		SetTextColorAlpha(9,x)
		sync()
	next
	sleep(500)
	for x = 0 to 255 step 5
		SetTextColorAlpha(10,x)
		sync()
	next
	sleep(5000)
	for x = 255 to 0 step -5
		SetTextColorAlpha(8,x)
		SetTextColorAlpha(9,x)
		SetTextColorAlpha(10,x)
		sync()
	next


//LEGIT
	back$ = "Start"
	sky$ = "Day"
	start = 100
	dialog$ = "Speak with the Mayor"
	text = 103
//TESTING
//	back$ = ""
//	sky$ = ""
//	start = 326
//	dialog$ = ""
//	text = 1
endif

return
