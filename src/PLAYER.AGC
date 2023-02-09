Player:

if playersize$ = "Home"
	SetSpriteDepth(25,1)
	SetSpriteDepth(26,1)
	SetSpriteDepth(37,1)
	SetSpriteDepth(38,1)
	SetSpriteColorAlpha(25,255)
	SetSpriteColorAlpha(26,255)
	SetSpriteColorAlpha(37,255)
	SetSpriteColorAlpha(38,255)
else
	SetSpriteDepth(25,4)
	SetSpriteDepth(26,4)
	SetSpriteDepth(37,4)
	SetSpriteDepth(38,4)
	SetSpriteColorAlpha(25,0)
	SetSpriteColorAlpha(26,0)
	SetSpriteColorAlpha(37,0)
	SetSpriteColorAlpha(38,0)
endif
if playersize$ = "Town"
	SetSpriteDepth(19,1)
	SetSpriteDepth(20,1)
	SetSpriteDepth(31,1)
	SetSpriteDepth(32,1)
	SetSpriteColorAlpha(19,255)
	SetSpriteColorAlpha(20,255)
	SetSpriteColorAlpha(31,255)
	SetSpriteColorAlpha(32,255)
else
	SetSpriteDepth(19,4)
	SetSpriteDepth(20,4)
	SetSpriteDepth(31,4)
	SetSpriteDepth(32,4)
	SetSpriteColorAlpha(19,0)
	SetSpriteColorAlpha(20,0)
	SetSpriteColorAlpha(31,0)
	SetSpriteColorAlpha(32,0)
endif
if playersize$ = "Mayor"
	SetSpriteDepth(29,1)
	SetSpriteDepth(30,1)
	SetSpriteDepth(41,1)
	SetSpriteDepth(42,1)
	SetSpriteColorAlpha(29,255)
	SetSpriteColorAlpha(30,255)
	SetSpriteColorAlpha(41,255)
	SetSpriteColorAlpha(42,255)
else
	SetSpriteDepth(29,4)
	SetSpriteDepth(30,4)
	SetSpriteDepth(41,4)
	SetSpriteDepth(42,4)
	SetSpriteColorAlpha(29,0)
	SetSpriteColorAlpha(30,0)
	SetSpriteColorAlpha(41,0)
	SetSpriteColorAlpha(42,0)
endif
if playersize$ = "Alley"
	SetSpriteDepth(27,1)
	SetSpriteDepth(28,1)
	SetSpriteDepth(39,1)
	SetSpriteDepth(40,1)
	SetSpriteColorAlpha(27,255)
	SetSpriteColorAlpha(28,255)
	SetSpriteColorAlpha(39,255)
	SetSpriteColorAlpha(40,255)
else
	SetSpriteDepth(27,4)
	SetSpriteDepth(28,4)
	SetSpriteDepth(39,4)
	SetSpriteDepth(40,4)
	SetSpriteColorAlpha(27,0)
	SetSpriteColorAlpha(28,0)
	SetSpriteColorAlpha(39,0)
	SetSpriteColorAlpha(40,0)
endif
if playersize$ = "Factory"
	SetSpriteDepth(21,1)
	SetSpriteDepth(22,1)
	SetSpriteDepth(33,1)
	SetSpriteDepth(34,1)
	SetSpriteColorAlpha(21,255)
	SetSpriteColorAlpha(22,255)
	SetSpriteColorAlpha(33,255)
	SetSpriteColorAlpha(34,255)
else
	SetSpriteDepth(21,4)
	SetSpriteDepth(22,4)
	SetSpriteDepth(33,4)
	SetSpriteDepth(34,4)
	SetSpriteColorAlpha(21,0)
	SetSpriteColorAlpha(22,0)
	SetSpriteColorAlpha(33,0)
	SetSpriteColorAlpha(34,0)
endif
if playersize$ = "Inside"
	SetSpriteDepth(23,1)
	SetSpriteDepth(24,1)
	SetSpriteDepth(35,1)
	SetSpriteDepth(36,1)
	SetSpriteColorAlpha(23,255)
	SetSpriteColorAlpha(24,255)
	SetSpriteColorAlpha(35,255)
	SetSpriteColorAlpha(36,255)
else
	SetSpriteDepth(23,4)
	SetSpriteDepth(24,4)
	SetSpriteDepth(35,4)
	SetSpriteDepth(36,4)
	SetSpriteColorAlpha(23,0)
	SetSpriteColorAlpha(24,0)
	SetSpriteColorAlpha(35,0)
	SetSpriteColorAlpha(36,0)
endif


//Skies/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
if tran$ = ""
	tran$ = ""
else
	if skytran = 1 then sky$ = "Day"
	if skytran = 2 then sky$ = "Sunset"
	if skytran = 3 then sky$ = "Night"
endif

if sky$ = "Day"
	SetSpritePosition(8,0,96)
	setspritedepth(8,3)
else
	SetSpritePosition(8,-1024,0)
endif
if sky$ = "Sunset"
	SetSpritePosition(9,0,96)
	setspritedepth(9,3)
else
	SetSpritePosition(9,-1024,0)
endif
if sky$ = "Night"
	SetSpritePosition(10,0,96)
	setspritedepth(10,3)
else
	SetSpritePosition(10,-1024,0)
endif







//Start of the Day///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
if back$ = "Start"
	if tran$ = "Start"
		SetSpritePosition(2,0,96)
		playerx = 370
		playery = 435
		SetSpritePosition(25,playerx,playery)
		playersize$ = "Home"
		SetSpriteDepth(2,2)
		for x = 0 to 255 step 5
			if sky$ = "Day"
				SetSpriteColorAlpha(8,x)
			endif
			if sky$ = "Sunset"
				SetSpriteColorAlpha(9,x)
			endif
			if sky$ = "Night"
				SetSpriteColorAlpha(10,x)
			endif
			SetSpriteColorAlpha(2,x)
			SetSpriteColorAlpha(25,x)
			sync()
		next
		tran$ = ""
	endif
//Backgrounds
	if playerx <= -10 then playerx = -10
	if playerx >= 930 then playerx = 930
//Back
	SetSpritePosition(2,0,96)
	setspritedepth(2,2)
//Movement
	if playerx >= 900 and direction$ = "Right"
		SetTextColor(1,255,255,255,255)
		SetTextPosition(1,(GetVirtualWidth()/2 - GetTextTotalWidth(1)/2),680)
		if GetSpritePlaying(31) = 0 and GetSpritePlaying(32) = 0 and GetSpritePlaying(33) = 0 and GetSpritePlaying(34) = 0 and GetSpritePlaying(35) = 0 and GetSpritePlaying(36) = 0 and GetSpritePlaying(37) = 0 and GetSpritePlaying(38) = 0 and GetSpritePlaying(39) = 0 and GetSpritePlaying(40) = 0 and GetSpritePlaying(41) = 0 and GetSpritePlaying(42) = 0
		if x# >= (GetVirtualWidth()/2 - GetTextTotalWidth(1)/2) and x# <= (GetVirtualWidth()/2 + GetTextTotalWidth(1)/2) and y# >= 680 and y# <= (680 + GetTextTotalHeight(1))
			SetTextColor(1,140,140,140,255)
			if GetPointerPressed() = 1
				playsound(1)
				for x = 255 to 0 step -5
					if sky$ = "Day"
						SetSpriteColorAlpha(8,x)
					endif
					if sky$ = "Sunset"
						SetSpriteColorAlpha(9,x)
					endif
					if sky$ = "Night"
						SetSpriteColorAlpha(10,x)
					endif
					SetSpriteColorAlpha(2,x)
					SetSpriteColorAlpha(25,x)
					SetSpriteColorAlpha(26,x)
					SetSpriteColorAlpha(37,x)
					SetSpriteColorAlpha(38,x)
					sync()
				next
				SetSpritePosition(2,-1024,0)
				for x = 14 to 42
					SetSpritePosition(x,-1024,0)
				next
				SetTextPosition(1,-1024,0)
				playerx = 0
				playery = 415
				playersize$ = "Town"
				back$ = "Town"
				tran$ = "HomeTown"
			endif
		endif
		endif
	else
		SetTextPosition(1,-1024,0)
	endif
endif

//Home///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
if back$ = "Home"
//Tran
	if tran$ = "Home"
		SetSpritePosition(2,0,96)
		playerx = 920
		playery = 435
		SetSpritePosition(26,playerx,playery)
		SetSpriteDepth(2,2)
		for x = 0 to 255 step 5
			if sky$ = "Day"
				SetSpriteColorAlpha(8,x)
			endif
			if sky$ = "Sunset"
				SetSpriteColorAlpha(9,x)
			endif
			if sky$ = "Night"
				SetSpriteColorAlpha(10,x)
			endif
			SetSpriteColorAlpha(2,x)
			SetSpriteColorAlpha(26,x)
			sync()
		next
		tran$ = ""
	endif
//Background
	if playerx <= -10 then playerx = -10
	if playerx >= 930 then playerx = 930
//Back
	SetSpritePosition(2,0,96)
	setspritedepth(2,2)
//Movement
	if playerx >= 900 and direction$ = "Right"
		SetTextColor(1,255,255,255,255)
		SetTextPosition(1,(GetVirtualWidth()/2 - GetTextTotalWidth(1)/2),680)
		if GetSpritePlaying(31) = 0 and GetSpritePlaying(32) = 0 and GetSpritePlaying(33) = 0 and GetSpritePlaying(34) = 0 and GetSpritePlaying(35) = 0 and GetSpritePlaying(36) = 0 and GetSpritePlaying(37) = 0 and GetSpritePlaying(38) = 0 and GetSpritePlaying(39) = 0 and GetSpritePlaying(40) = 0 and GetSpritePlaying(41) = 0 and GetSpritePlaying(42) = 0
		if x# >= (GetVirtualWidth()/2 - GetTextTotalWidth(1)/2) and x# <= (GetVirtualWidth()/2 + GetTextTotalWidth(1)/2) and y# >= 680 and y# <= (680 + GetTextTotalHeight(1))
			SetTextColor(1,140,140,140,255)
			if GetPointerPressed() = 1
				playsound(1)
				for x = 255 to 0 step -5
					if sky$ = "Day"
						SetSpriteColorAlpha(8,x)
					endif
					if sky$ = "Sunset"
						SetSpriteColorAlpha(9,x)
					endif
					if sky$ = "Night"
						SetSpriteColorAlpha(10,x)
					endif
					SetSpriteColorAlpha(2,x)
					SetSpriteColorAlpha(25,x)
					SetSpriteColorAlpha(26,x)
					SetSpriteColorAlpha(37,x)
					SetSpriteColorAlpha(38,x)
					sync()
				next
				SetSpritePosition(2,-1024,0)
				for x = 14 to 42
					SetSpritePosition(x,-1024,0)
				next
				SetTextPosition(1,-1024,0)
				playerx = 0
				playery = 415
				playersize$ = "Town"
				back$ = "Town"
				tran$ = "HomeTown"
			endif
		endif
		endif
	else
		SetTextPosition(1,-1024,0)
	endif
endif

//Town///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
if back$ = "Town"
//Tran
	if tran$ = "HomeTown"
		SetSpritePosition(3,0,96)
		playerx = 0
		playery = 520
		SetSpritePosition(19,playerx,playery)
		SetSpriteDepth(3,2)
		for x = 0 to 255 step 5
			if sky$ = "Day"
				SetSpriteColorAlpha(8,x)
			endif
			if sky$ = "Sunset"
				SetSpriteColorAlpha(9,x)
			endif
			if sky$ = "Night"
				SetSpriteColorAlpha(10,x)
			endif
			SetSpriteColorAlpha(3,x)
			SetSpriteColorAlpha(19,x)
			sync()
		next
		tran$ = ""
	endif
//Cont.
	if tran$ = "MayorTown"
		SetSpritePosition(3,0,96)
		playerx = 125
		playery = 520
		SetSpritePosition(20,playerx,playery)
		SetSpriteDepth(3,2)
		for x = 0 to 255 step 5
			if sky$ = "Day"
				SetSpriteColorAlpha(8,x)
			endif
			if sky$ = "Sunset"
				SetSpriteColorAlpha(9,x)
			endif
			if sky$ = "Night"
				SetSpriteColorAlpha(10,x)
			endif
			SetSpriteColorAlpha(3,x)
			SetSpriteColorAlpha(20,x)
			sync()
		next
		tran$ = ""
	endif
//Cont.
	if tran$ = "AlleyTown"
		SetSpritePosition(3,0,96)
		playerx = 645
		playery = 520
		SetSpritePosition(20,playerx,playery)
		SetSpriteDepth(3,2)
		for x = 0 to 255 step 5
			if sky$ = "Day"
				SetSpriteColorAlpha(8,x)
			endif
			if sky$ = "Sunset"
				SetSpriteColorAlpha(9,x)
			endif
			if sky$ = "Night"
				SetSpriteColorAlpha(10,x)
			endif
			SetSpriteColorAlpha(3,x)
			SetSpriteColorAlpha(20,x)
			sync()
		next
		tran$ = ""
	endif
//Cont.
	if tran$ = "FactoryTown"
		SetSpritePosition(3,0,96)
		playerx = 990
		playery = 520
		SetSpritePosition(20,playerx,playery)
		SetSpriteDepth(3,2)
		for x = 0 to 255 step 5
			if sky$ = "Day"
				SetSpriteColorAlpha(8,x)
			endif
			if sky$ = "Sunset"
				SetSpriteColorAlpha(9,x)
			endif
			if sky$ = "Night"
				SetSpriteColorAlpha(10,x)
			endif
			SetSpriteColorAlpha(3,x)
			SetSpriteColorAlpha(20,x)
			sync()
		next
		tran$ = ""
	endif
//Background
	if playerx <= 0 then playerx = 0
	if playerx >= 990 then playerx = 990
//Back
	SetSpritePosition(3,0,96)
	setspritedepth(3,2)
//Movement
	if playerx <= 40 and direction$ = "Left"
		SetTextColor(3,255,255,255,255)
		SetTextPosition(3,(GetVirtualWidth()/2 - GetTextTotalWidth(3)/2),680)
		if GetSpritePlaying(31) = 0 and GetSpritePlaying(32) = 0 and GetSpritePlaying(33) = 0 and GetSpritePlaying(34) = 0 and GetSpritePlaying(35) = 0 and GetSpritePlaying(36) = 0 and GetSpritePlaying(37) = 0 and GetSpritePlaying(38) = 0 and GetSpritePlaying(39) = 0 and GetSpritePlaying(40) = 0 and GetSpritePlaying(41) = 0 and GetSpritePlaying(42) = 0
		if x# >= (GetVirtualWidth()/2 - GetTextTotalWidth(3)/2) and x# <= (GetVirtualWidth()/2 + GetTextTotalWidth(3)/2) and y# >= 680 and y# <= (680 + GetTextTotalHeight(3))
			SetTextColor(3,140,140,140,255)
			if GetPointerPressed() = 1
				playsound(1)
				for x = 255 to 0 step -5
					if sky$ = "Day"
						SetSpriteColorAlpha(8,x)
					endif
					if sky$ = "Sunset"
						SetSpriteColorAlpha(9,x)
					endif
					if sky$ = "Night"
						SetSpriteColorAlpha(10,x)
					endif
					SetSpriteColorAlpha(3,x)
					SetSpriteColorAlpha(19,x)
					SetSpriteColorAlpha(20,x)
					SetSpriteColorAlpha(31,x)
					SetSpriteColorAlpha(32,x)
					sync()
				next
				SetSpritePosition(3,-1024,0)
				for x = 14 to 42
					SetSpritePosition(x,-1024,0)
				next
				SetTextPosition(3,-1024,0)
				playerx = 920
				playery = 370
				playersize$ = "Home"
				back$ = "Home"
				tran$ = "Home"
			endif
		endif
		endif
	else
		SetTextPosition(3,-1024,0)
	endif
//Cont.
	if playerx >= 100 and playerx <= 150 and direction$ = "Right"
		SetTextColor(4,255,255,255,255)
		SetTextPosition(4,(GetVirtualWidth()/2 - GetTextTotalWidth(4)/2),680)
		if GetSpritePlaying(31) = 0 and GetSpritePlaying(32) = 0 and GetSpritePlaying(33) = 0 and GetSpritePlaying(34) = 0 and GetSpritePlaying(35) = 0 and GetSpritePlaying(36) = 0 and GetSpritePlaying(37) = 0 and GetSpritePlaying(38) = 0 and GetSpritePlaying(39) = 0 and GetSpritePlaying(40) = 0 and GetSpritePlaying(41) = 0 and GetSpritePlaying(42) = 0
		if x# >= (GetVirtualWidth()/2 - GetTextTotalWidth(4)/2) and x# <= (GetVirtualWidth()/2 + GetTextTotalWidth(4)/2) and y# >= 680 and y# <= (680 + GetTextTotalHeight(4))
			SetTextColor(4,140,140,140,255)
			if GetPointerPressed() = 1
				playsound(1)
				for x = 255 to 0 step -5
					if sky$ = "Day"
						SetSpriteColorAlpha(8,x)
					endif
					if sky$ = "Sunset"
						SetSpriteColorAlpha(9,x)
					endif
					if sky$ = "Night"
						SetSpriteColorAlpha(10,x)
					endif
					SetSpriteColorAlpha(3,x)
					SetSpriteColorAlpha(19,x)
					SetSpriteColorAlpha(20,x)
					SetSpriteColorAlpha(31,x)
					SetSpriteColorAlpha(32,x)
					sync()
				next
				SetSpritePosition(3,-1024,0)
				for x = 14 to 42
					SetSpritePosition(x,-1024,0)
				next
				SetTextPosition(4,-1024,0)
				playerx = 10
				playery = 400
				playersize$ = "Mayor"
				back$ = "Mayor"
				tran$ = "Mayor"
			endif
		endif
		endif
	else
		SetTextPosition(4,-1024,0)
	endif
//Cont.
	if playerx >= 630 and playerx <= 665 and direction$ = "Right"
		SetTextColor(5,255,255,255,255)
		SetTextPosition(5,(GetVirtualWidth()/2 - GetTextTotalWidth(5)/2),680)
		if GetSpritePlaying(31) = 0 and GetSpritePlaying(32) = 0 and GetSpritePlaying(33) = 0 and GetSpritePlaying(34) = 0 and GetSpritePlaying(35) = 0 and GetSpritePlaying(36) = 0 and GetSpritePlaying(37) = 0 and GetSpritePlaying(38) = 0 and GetSpritePlaying(39) = 0 and GetSpritePlaying(40) = 0 and GetSpritePlaying(41) = 0 and GetSpritePlaying(42) = 0
		if x# >= (GetVirtualWidth()/2 - GetTextTotalWidth(5)/2) and x# <= (GetVirtualWidth()/2 + GetTextTotalWidth(5)/2) and y# >= 680 and y# <= (680 + GetTextTotalHeight(5))
			SetTextColor(5,140,140,140,255)
			if GetPointerPressed() = 1
				playsound(1)
				for x = 255 to 0 step -5
					if sky$ = "Day"
						SetSpriteColorAlpha(8,x)
					endif
					if sky$ = "Sunset"
						SetSpriteColorAlpha(9,x)
					endif
					if sky$ = "Night"
						SetSpriteColorAlpha(10,x)
					endif
					SetSpriteColorAlpha(3,x)
					SetSpriteColorAlpha(19,x)
					SetSpriteColorAlpha(20,x)
					SetSpriteColorAlpha(31,x)
					SetSpriteColorAlpha(32,x)
					sync()
				next
				SetSpritePosition(3,-1024,0)
				for x = 14 to 42
					SetSpritePosition(x,-1024,0)
				next
				SetTextPosition(5,-1024,0)
				playerx = 10
				playery = 400
				playersize$ = "Alley"
				back$ = "Alley"
				tran$ = "Alley"
			endif
		endif
		endif
	else
		SetTextPosition(5,-1024,0)
	endif
//Cont.
	if playerx >= 980 and direction$ = "Right"
		SetTextColor(2,255,255,255,255)
		SetTextPosition(2,(GetVirtualWidth()/2 - GetTextTotalWidth(2)/2),680)
		if GetSpritePlaying(31) = 0 and GetSpritePlaying(32) = 0 and GetSpritePlaying(33) = 0 and GetSpritePlaying(34) = 0 and GetSpritePlaying(35) = 0 and GetSpritePlaying(36) = 0 and GetSpritePlaying(37) = 0 and GetSpritePlaying(38) = 0 and GetSpritePlaying(39) = 0 and GetSpritePlaying(40) = 0 and GetSpritePlaying(41) = 0 and GetSpritePlaying(42) = 0
		if x# >= (GetVirtualWidth()/2 - GetTextTotalWidth(2)/2) and x# <= (GetVirtualWidth()/2 + GetTextTotalWidth(2)/2) and y# >= 680 and y# <= (680 + GetTextTotalHeight(2))
			SetTextColor(2,140,140,140,255)
			if GetPointerPressed() = 1
				playsound(1)
				for x = 255 to 0 step -5
					if sky$ = "Day"
						SetSpriteColorAlpha(8,x)
					endif
					if sky$ = "Sunset"
						SetSpriteColorAlpha(9,x)
					endif
					if sky$ = "Night"
						SetSpriteColorAlpha(10,x)
					endif
					SetSpriteColorAlpha(3,x)
					SetSpriteColorAlpha(19,x)
					SetSpriteColorAlpha(20,x)
					SetSpriteColorAlpha(31,x)
					SetSpriteColorAlpha(32,x)
					sync()
				next
				SetSpritePosition(3,-1024,0)
				for x = 14 to 42
					SetSpritePosition(x,-1024,0)
				next
				SetTextPosition(2,-1024,0)
				playerx = 10
				playery = 530
				playersize$ = "Factory"
				back$ = "Factory"
				tran$ = "TownFactory"
			endif
		endif
		endif
	else
		SetTextPosition(2,-1024,0)
	endif
endif

//Mayor//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
if back$ = "Mayor"
//Tran
	if tran$ = "Mayor"
		if text = 0 then text = 133
		SetSpritePosition(4,0,96)
		playerx = 0
		playery = 368
		SetSpritePosition(29,playerx,playery)
		SetSpriteDepth(4,2)
		for x = 0 to 255 step 5
			if sky$ = "Day"
				SetSpriteColorAlpha(8,x)
			endif
			if sky$ = "Sunset"
				SetSpriteColorAlpha(9,x)
			endif
			if sky$ = "Night"
				SetSpriteColorAlpha(10,x)
			endif
			SetSpriteColorAlpha(4,x)
			SetSpriteColorAlpha(29,x)
			sync()
		next
		tran$ = ""
	endif
//Background
	if playerx <= -10 then playerx = -10
	if playerx >= 880 then playerx = 880
//Back
	SetSpritePosition(4,0,96)
	setspritedepth(4,2)
//Movement
	if playerx <= 50 and direction$ = "Left"
		SetTextColor(1,255,255,255,255)
		SetTextPosition(1,(GetVirtualWidth()/2 - GetTextTotalWidth(1)/2),680)
		if GetSpritePlaying(31) = 0 and GetSpritePlaying(32) = 0 and GetSpritePlaying(33) = 0 and GetSpritePlaying(34) = 0 and GetSpritePlaying(35) = 0 and GetSpritePlaying(36) = 0 and GetSpritePlaying(37) = 0 and GetSpritePlaying(38) = 0 and GetSpritePlaying(39) = 0 and GetSpritePlaying(40) = 0 and GetSpritePlaying(41) = 0 and GetSpritePlaying(42) = 0
		if x# >= (GetVirtualWidth()/2 - GetTextTotalWidth(1)/2) and x# <= (GetVirtualWidth()/2 + GetTextTotalWidth(1)/2) and y# >= 680 and y# <= (680 + GetTextTotalHeight(1))
			SetTextColor(1,140,140,140,255)
			if GetPointerPressed() = 1
				playsound(1)
				for x = 255 to 0 step -5
					if sky$ = "Day"
						SetSpriteColorAlpha(8,x)
					endif
					if sky$ = "Sunset"
						SetSpriteColorAlpha(9,x)
					endif
					if sky$ = "Night"
						SetSpriteColorAlpha(10,x)
					endif
					SetSpriteColorAlpha(4,x)
					SetSpriteColorAlpha(29,x)
					SetSpriteColorAlpha(30,x)
					SetSpriteColorAlpha(41,x)
					SetSpriteColorAlpha(42,x)
					sync()
				next
				SetSpritePosition(4,-1024,0)
				for x = 14 to 42
					SetSpritePosition(x,-1024,0)
				next
				SetTextPosition(1,-1024,0)
				playerx = 100
				playery = 520
				playersize$ = "Town"
				back$ = "Town"
				tran$ = "MayorTown"
			endif
		endif
		endif
	else
		SetTextPosition(1,-1024,0)
	endif
endif

//Alley//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
if back$ = "Alley"
//Tran
	if tran$ = "Alley"
		if text = 0 then text = 133
		SetSpritePosition(5,0,96)
		playerx = 0
		playery = 372
		SetSpritePosition(27,playerx,playery)
		SetSpriteDepth(5,2)
		for x = 0 to 255 step 5
			if sky$ = "Day"
				SetSpriteColorAlpha(8,x)
			endif
			if sky$ = "Sunset"
				SetSpriteColorAlpha(9,x)
			endif
			if sky$ = "Night"
				SetSpriteColorAlpha(10,x)
			endif
			SetSpriteColorAlpha(5,x)
			SetSpriteColorAlpha(27,x)
			sync()
		next
		tran$ = ""
	endif
//Background
	if playerx <= -10 then playerx = -10
	if playerx >= 910 then playerx = 910
//Back
	SetSpritePosition(5,0,96)
	setspritedepth(5,2)
//Movement
	if playerx <= 50 and direction$ = "Left"
		SetTextColor(1,255,255,255,255)
		SetTextPosition(1,(GetVirtualWidth()/2 - GetTextTotalWidth(1)/2),680)
		if GetSpritePlaying(31) = 0 and GetSpritePlaying(32) = 0 and GetSpritePlaying(33) = 0 and GetSpritePlaying(34) = 0 and GetSpritePlaying(35) = 0 and GetSpritePlaying(36) = 0 and GetSpritePlaying(37) = 0 and GetSpritePlaying(38) = 0 and GetSpritePlaying(39) = 0 and GetSpritePlaying(40) = 0 and GetSpritePlaying(41) = 0 and GetSpritePlaying(42) = 0
		if x# >= (GetVirtualWidth()/2 - GetTextTotalWidth(1)/2) and x# <= (GetVirtualWidth()/2 + GetTextTotalWidth(1)/2) and y# >= 680 and y# <= (680 + GetTextTotalHeight(1))
			SetTextColor(1,140,140,140,255)
			if GetPointerPressed() = 1
				playsound(1)
				for x = 255 to 0 step -5
					if sky$ = "Day"
						SetSpriteColorAlpha(8,x)
					endif
					if sky$ = "Sunset"
						SetSpriteColorAlpha(9,x)
					endif
					if sky$ = "Night"
						SetSpriteColorAlpha(10,x)
					endif
					SetSpriteColorAlpha(5,x)
					SetSpriteColorAlpha(27,x)
					SetSpriteColorAlpha(28,x)
					SetSpriteColorAlpha(39,x)
					SetSpriteColorAlpha(40,x)
					sync()
				next
				SetSpritePosition(5,-1024,0)
				for x = 14 to 42
					SetSpritePosition(x,-1024,0)
				next
				SetTextPosition(1,-1024,0)
				playerx = 645
				playery = 520
				playersize$ = "Town"
				back$ = "Town"
				tran$ = "AlleyTown"
			endif
		endif
		endif
	else
		SetTextPosition(1,-1024,0)
	endif
endif

//Factory////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
if back$ = "Factory"
//Tran
	if tran$ = "TownFactory"
		SetSpritePosition(6,0,96)
		playerx = 10
		playery = 530
		SetSpritePosition(21,playerx,playery)
		SetSpriteDepth(6,2)
		for x = 0 to 255 step 5
			if sky$ = "Day"
				SetSpriteColorAlpha(8,x)
			endif
			if sky$ = "Sunset"
				SetSpriteColorAlpha(9,x)
			endif
			if sky$ = "Night"
				SetSpriteColorAlpha(10,x)
			endif
			SetSpriteColorAlpha(6,x)
			SetSpriteColorAlpha(21,x)
			SetSpriteColorAlpha(22,x)
			SetSpriteColorAlpha(33,x)
			SetSpriteColorAlpha(34,x)
			sync()
		next
		tran$ = ""
	endif
//Cont.
	if tran$ = "InsideFactory"
		SetSpritePosition(6,0,96)
		playerx = 560
		playery = 530
		SetSpritePosition(22,playerx,playery)
		SetSpriteDepth(6,2)
		for x = 0 to 255 step 5
			if sky$ = "Day"
				SetSpriteColorAlpha(8,x)
			endif
			if sky$ = "Sunset"
				SetSpriteColorAlpha(9,x)
			endif
			if sky$ = "Night"
				SetSpriteColorAlpha(10,x)
			endif
			SetSpriteColorAlpha(6,x)
			SetSpriteColorAlpha(22,x)
			sync()
		next
		tran$ = ""
	endif
//Background
	if playerx <= 0 then playerx = 0
	if playerx >= 975 then playerx = 975
//Back
	SetSpritePosition(6,0,96)
	setspritedepth(6,2)
//Movement
	if playerx <= 75 and direction$ = "Left"
		SetTextColor(1,255,255,255,255)
		SetTextPosition(1,(GetVirtualWidth()/2 - GetTextTotalWidth(1)/2),680)
		if GetSpritePlaying(31) = 0 and GetSpritePlaying(32) = 0 and GetSpritePlaying(33) = 0 and GetSpritePlaying(34) = 0 and GetSpritePlaying(35) = 0 and GetSpritePlaying(36) = 0 and GetSpritePlaying(37) = 0 and GetSpritePlaying(38) = 0 and GetSpritePlaying(39) = 0 and GetSpritePlaying(40) = 0 and GetSpritePlaying(41) = 0 and GetSpritePlaying(42) = 0
		if x# >= (GetVirtualWidth()/2 - GetTextTotalWidth(1)/2) and x# <= (GetVirtualWidth()/2 + GetTextTotalWidth(1)/2) and y# >= 680 and y# <= (680 + GetTextTotalHeight(1))
			SetTextColor(1,140,140,140,255)
			if GetPointerPressed() = 1
				playsound(1)
				for x = 255 to 0 step -5
					if sky$ = "Day"
						SetSpriteColorAlpha(8,x)
					endif
					if sky$ = "Sunset"
						SetSpriteColorAlpha(9,x)
					endif
					if sky$ = "Night"
						SetSpriteColorAlpha(10,x)
					endif
					SetSpriteColorAlpha(6,x)
					SetSpriteColorAlpha(21,x)
					SetSpriteColorAlpha(22,x)
					SetSpriteColorAlpha(33,x)
					SetSpriteColorAlpha(34,x)
					sync()
				next
				SetSpritePosition(6,-1024,0)
				for x = 14 to 42
					SetSpritePosition(x,-1024,0)
				next
				SetTextPosition(1,-1024,0)
				playerx = 990
				playery = 520
				playersize$ = "Town"
				back$ = "Town"
				tran$ = "FactoryTown"
			endif
		endif
		endif
	else
		SetTextPosition(1,-1024,0)
	endif
//Cont.
	if playerx >= 550 and playerx <= 575 and direction$ = "Right"
		SetTextColor(6,255,255,255,255)
		SetTextPosition(6,(GetVirtualWidth()/2 - GetTextTotalWidth(6)/2),680)
		if GetSpritePlaying(31) = 0 and GetSpritePlaying(32) = 0 and GetSpritePlaying(33) = 0 and GetSpritePlaying(34) = 0 and GetSpritePlaying(35) = 0 and GetSpritePlaying(36) = 0 and GetSpritePlaying(37) = 0 and GetSpritePlaying(38) = 0 and GetSpritePlaying(39) = 0 and GetSpritePlaying(40) = 0 and GetSpritePlaying(41) = 0 and GetSpritePlaying(42) = 0
		if x# >= (GetVirtualWidth()/2 - GetTextTotalWidth(6)/2) and x# <= (GetVirtualWidth()/2 + GetTextTotalWidth(6)/2) and y# >= 680 and y# <= (680 + GetTextTotalHeight(6))
			SetTextColor(6,140,140,140,255)
			if GetPointerPressed() = 1
				playsound(1)
				for x = 255 to 0 step -5
					if sky$ = "Day"
						SetSpriteColorAlpha(8,x)
					endif
					if sky$ = "Sunset"
						SetSpriteColorAlpha(9,x)
					endif
					if sky$ = "Night"
						SetSpriteColorAlpha(10,x)
					endif
					SetSpriteColorAlpha(6,x)
					SetSpriteColorAlpha(21,x)
					SetSpriteColorAlpha(22,x)
					SetSpriteColorAlpha(33,x)
					SetSpriteColorAlpha(34,x)
					sync()
				next
				SetSpritePosition(6,-1024,0)
				for x = 14 to 42
					SetSpritePosition(x,-1024,0)
				next
				SetTextPosition(6,-1024,0)
				playerx = 990
				playery = 520
				playersize$ = "Inside"
				back$ = "Factory Inside"
				tran$ = "FactoryInside"
			endif
		endif
		endif
	else
		SetTextPosition(6,-1024,0)
	endif
endif

//Factory Inside/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
if back$ = "Factory Inside"
//Tran
	if tran$ = "FactoryInside"
		if text = 0 then text = 133
		SetSpritePosition(7,0,96)
		playerx = 50
		playery = 492
		SetSpritePosition(23,playerx,playery)
		SetSpriteDepth(4,2)
		for x = 0 to 255 step 5
			if sky$ = "Day"
				SetSpriteColorAlpha(8,x)
			endif
			if sky$ = "Sunset"
				SetSpriteColorAlpha(9,x)
			endif
			if sky$ = "Night"
				SetSpriteColorAlpha(10,x)
			endif
			SetSpriteColorAlpha(7,x)
			SetSpriteColorAlpha(23,x)
			sync()
		next
		tran$ = ""
	endif
//Background
	if playerx <= 45 then playerx = 45
	if playerx >= 900 then playerx = 900
//Back
	SetSpritePosition(7,0,96)
	setspritedepth(7,2)
//Movement
	if playerx <= 75 and direction$ = "Left"
		SetTextColor(11,255,255,255,255)
		SetTextPosition(11,(GetVirtualWidth()/2 - GetTextTotalWidth(11)/2),680)
		if GetSpritePlaying(31) = 0 and GetSpritePlaying(32) = 0 and GetSpritePlaying(33) = 0 and GetSpritePlaying(34) = 0 and GetSpritePlaying(35) = 0 and GetSpritePlaying(36) = 0 and GetSpritePlaying(37) = 0 and GetSpritePlaying(38) = 0 and GetSpritePlaying(39) = 0 and GetSpritePlaying(40) = 0 and GetSpritePlaying(41) = 0 and GetSpritePlaying(42) = 0
		if x# >= (GetVirtualWidth()/2 - GetTextTotalWidth(11)/2) and x# <= (GetVirtualWidth()/2 + GetTextTotalWidth(11)/2) and y# >= 680 and y# <= (680 + GetTextTotalHeight(11))
			SetTextColor(11,140,140,140,255)
			if GetPointerPressed() = 1
				playsound(1)
				for x = 255 to 0 step -5
					if sky$ = "Day"
						SetSpriteColorAlpha(8,x)
					endif
					if sky$ = "Sunset"
						SetSpriteColorAlpha(9,x)
					endif
					if sky$ = "Night"
						SetSpriteColorAlpha(10,x)
					endif
					SetSpriteColorAlpha(7,x)
					SetSpriteColorAlpha(23,x)
					SetSpriteColorAlpha(24,x)
					SetSpriteColorAlpha(35,x)
					SetSpriteColorAlpha(36,x)
					sync()
				next
				SetSpritePosition(7,-1024,0)
				for x = 14 to 42
					SetSpritePosition(x,-1024,0)
				next
				SetTextPosition(11,-1024,0)
				playerx = 100
				playery = 520
				playersize$ = "Factory"
				back$ = "Factory"
				tran$ = "InsideFactory"
			endif
		endif
		endif
	else
		SetTextPosition(11,-1024,0)
	endif
endif


//End of the Day////////////////////////////////////////////////////////////////////////
if task$ = "Go back home and sleep"
	if back$ = "Home"
		if playerx >= 300 and playerx <= 400 and direction$ = "Left"
			SetTextColor(12,255,255,255,255)
			SetTextPosition(12,(GetVirtualWidth()/2 - GetTextTotalWidth(12)/2),680)
		if GetSpritePlaying(31) = 0 and GetSpritePlaying(32) = 0 and GetSpritePlaying(33) = 0 and GetSpritePlaying(34) = 0 and GetSpritePlaying(35) = 0 and GetSpritePlaying(36) = 0 and GetSpritePlaying(37) = 0 and GetSpritePlaying(38) = 0 and GetSpritePlaying(39) = 0 and GetSpritePlaying(40) = 0 and GetSpritePlaying(41) = 0 and GetSpritePlaying(42) = 0
			if x# >= (GetVirtualWidth()/2 - GetTextTotalWidth(12)/2) and x# <= (GetVirtualWidth()/2 + GetTextTotalWidth(12)/2) and y# >= 680 and y# <= (680 + GetTextTotalHeight(12))
				SetTextColor(12,140,140,140,255)
				if GetPointerPressed() = 1
				playsound(1)
				for x = 255 to 0 step -5
					if sky$ = "Day"
						SetSpriteColorAlpha(8,x)
					endif
					if sky$ = "Sunset"
						SetSpriteColorAlpha(9,x)
					endif
					if sky$ = "Night"
						SetSpriteColorAlpha(10,x)
					endif
					SetSpriteColorAlpha(2,x)
					SetSpriteColorAlpha(25,x)
					SetSpriteColorAlpha(26,x)
					SetSpriteColorAlpha(37,x)
					SetSpriteColorAlpha(38,x)
					sync()
				next
				SetSpritePosition(2,-1024,0)
				for x = 14 to 42
					SetSpritePosition(x,-1024,0)
				next
				SetTextPosition(12,-1024,0)
				playerx = 370
				playery = 435
				playersize$ = "Home"
				back$ = "Start"
				skytran = 1
				tran$ = "Start"
				direction$ = "Right"
				start = start + 1
				sync()
				sleep(3000)
				endif
			endif
			endif
		else
			SetTextPosition(12,-1024,0)
		endif
	endif
endif





//Player Movement////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Left
if GetRawKeyState(65) = 1 and GetRawKeyState(68) = 0
	for x = 19 to 30
		SetSpritePosition(x,-1024,0)
	next
	playerx = playerx - 4
	if playersize$ = "Town" then ResumeSprite(32)
	if playersize$ = "Factory" then ResumeSprite(34)
	if playersize$ = "Inside" then ResumeSprite(36)
	if playersize$ = "Home" then ResumeSprite(38)
	if playersize$ = "Alley" then ResumeSprite(40)
	if playersize$ = "Mayor" then ResumeSprite(42)
	
	if playersize$ = "Town" then SetSpritePosition(32,playerx,playery)
	if playersize$ = "Factory" then SetSpritePosition(34,playerx,playery)
	if playersize$ = "Inside" then SetSpritePosition(36,playerx,playery)
	if playersize$ = "Home" then SetSpritePosition(38,playerx,playery)
	if playersize$ = "Alley" then SetSpritePosition(40,playerx,playery)
	if playersize$ = "Mayor" then SetSpritePosition(42,playerx,playery)
	direction$ = "Left"
else
	for x = 32 to 42 step 2
		SetSpritePosition(x,-1024,0)
		stopsprite(x)
	next
	if direction$ = "Left"
		if playersize$ = "Town" then SetSpritePosition(20,playerx,playery)
		if playersize$ = "Factory" then SetSpritePosition(22,playerx,playery)
		if playersize$ = "Inside" then SetSpritePosition(24,playerx,playery)
		if playersize$ = "Home" then SetSpritePosition(26,playerx,playery)
		if playersize$ = "Alley" then SetSpritePosition(28,playerx,playery)
		if playersize$ = "Mayor" then SetSpritePosition(30,playerx,playery)
	endif
endif
//Right
if GetRawKeyState(68) = 1 and GetRawKeyState(65) = 0
	for x = 19 to 30
		SetSpritePosition(x,-1024,0)
	next
	playerx = playerx + 4
	if playersize$ = "Town" then ResumeSprite(31)
	if playersize$ = "Factory" then ResumeSprite(33)
	if playersize$ = "Inside" then ResumeSprite(35)
	if playersize$ = "Home" then ResumeSprite(37)
	if playersize$ = "Alley" then ResumeSprite(39)
	if playersize$ = "Mayor" then ResumeSprite(41)
	
	if playersize$ = "Town" then SetSpritePosition(31,playerx,playery)
	if playersize$ = "Factory" then SetSpritePosition(33,playerx,playery)
	if playersize$ = "Inside" then SetSpritePosition(35,playerx,playery)
	if playersize$ = "Home" then SetSpritePosition(37,playerx,playery)
	if playersize$ = "Alley" then SetSpritePosition(39,playerx,playery)
	if playersize$ = "Mayor" then SetSpritePosition(41,playerx,playery)
	direction$ = "Right"
else
	for x = 31 to 41 step 2
		SetSpritePosition(x,-1024,0)
		stopsprite(x)
	next
	if direction$ = "Right"
		if playersize$ = "Town" then SetSpritePosition(19,playerx,playery)
		if playersize$ = "Factory" then SetSpritePosition(21,playerx,playery)
		if playersize$ = "Inside" then SetSpritePosition(23,playerx,playery)
		if playersize$ = "Home" then SetSpritePosition(25,playerx,playery)
		if playersize$ = "Alley" then SetSpritePosition(27,playerx,playery)
		if playersize$ = "Mayor" then SetSpritePosition(29,playerx,playery)
	endif
endif




//Quest Topscreen///////////////////////////////////////////////////////////////////////
if quest$ = "Getting to Know the Town"
	SetTextPosition(100,(GetVirtualWidth()/2 - GetTextTotalWidth(100)/2),2)
else
	SetTextPosition(100,-1024,0)
endif
if quest$ = "Choices, Choices, Choices!"
	SetTextPosition(130,(GetVirtualWidth()/2 - GetTextTotalWidth(130)/2),2)
else
	SetTextPosition(130,-1024,0)
endif
if quest$ = "A New Connection with the Workers"
	SetTextPosition(200,(GetVirtualWidth()/2 - GetTextTotalWidth(200)/2),2)
else
	SetTextPosition(200,-1024,0)
endif
if quest$ = "The Best Part of Waking Up is Pay-Cuts in your Cup!"
	SetTextPosition(219,(GetVirtualWidth()/2 - GetTextTotalWidth(219)/2),2)
else
	SetTextPosition(219,-1024,0)
endif
if quest$ = "Ohhh, the Horror!"
	SetTextPosition(240,(GetVirtualWidth()/2 - GetTextTotalWidth(240)/2),2)
else
	SetTextPosition(240,-1024,0)
endif
if quest$ = "The Start of Something Terrible"
	SetTextPosition(300,(GetVirtualWidth()/2 - GetTextTotalWidth(300)/2),2)
else
	SetTextPosition(300,-1024,0)
endif
if quest$ = "Finish What You've Started"
	SetTextPosition(313,(GetVirtualWidth()/2 - GetTextTotalWidth(313)/2),2)
else
	SetTextPosition(313,-1024,0)
endif
if quest$ = "A Family in Need"
	SetTextPosition(400,(GetVirtualWidth()/2 - GetTextTotalWidth(400)/2),2)
else
	SetTextPosition(400,-1024,0)
endif
if quest$ = "Gotta Do What You Gotta Do"
	SetTextPosition(421,(GetVirtualWidth()/2 - GetTextTotalWidth(421)/2),2)
else
	SetTextPosition(421,-1024,0)
endif

//Task Topscreen////////////////////////////////////////////////////////////////////////
if task$ = "Meet with a few of the townsfolk"
	SetTextPosition(101,(GetVirtualWidth()/2 - GetTextTotalWidth(101)/2),24)
else
	SetTextPosition(101,-1024,0)
endif
if task$ = "Speak with either John, Harry, or William to side with them"
	SetTextPosition(131,(GetVirtualWidth()/2 - GetTextTotalWidth(131)/2),24)
else
	SetTextPosition(131,-1024,0)
endif
if task$ = "Speak with John"
	SetTextPosition(201,(GetVirtualWidth()/2 - GetTextTotalWidth(201)/2),24)
else
	SetTextPosition(201,-1024,0)
endif
if task$ = "Speak with William"
	SetTextPosition(206,(GetVirtualWidth()/2 - GetTextTotalWidth(206)/2),24)
else
	SetTextPosition(206,-1024,0)
endif
if task$ = "Report back to John with your findings"
	SetTextPosition(214,(GetVirtualWidth()/2 - GetTextTotalWidth(214)/2),24)
else
	SetTextPosition(214,-1024,0)
endif
if task$ = "Speak with the Mayor about his plans"
	SetTextPosition(220,(GetVirtualWidth()/2 - GetTextTotalWidth(220)/2),24)
else
	SetTextPosition(220,-1024,0)
endif
if task$ = "Report the good news to the workers"
	SetTextPosition(223,(GetVirtualWidth()/2 - GetTextTotalWidth(223)/2),24)
else
	SetTextPosition(223,-1024,0)
endif
if task$ = "Report back to John"
	SetTextPosition(231,(GetVirtualWidth()/2 - GetTextTotalWidth(231)/2),24)
else
	SetTextPosition(231,-1024,0)
endif
if task$ = "Go into town and ask Harry what's happened"
	SetTextPosition(241,(GetVirtualWidth()/2 - GetTextTotalWidth(241)/2),24)
else
	SetTextPosition(241,-1024,0)
endif
if task$ = "Head into John's Office"
	SetTextPosition(246,(GetVirtualWidth()/2 - GetTextTotalWidth(246)/2),24)
else
	SetTextPosition(246,-1024,0)
endif
if task$ = "Mayor Choice"
	SetTextPosition(256,(GetVirtualWidth()/2 - GetTextTotalWidth(256)/2),24)
else
	SetTextPosition(256,-1024,0)
endif
if task$ = "Speak with Harry"
	SetTextPosition(301,(GetVirtualWidth()/2 - GetTextTotalWidth(301)/2),24)
else
	SetTextPosition(301,-1024,0)
endif
if task$ = "Gather intel for the plan"
	SetTextPosition(306,(GetVirtualWidth()/2 - GetTextTotalWidth(306)/2),24)
else
	SetTextPosition(306,-1024,0)
endif
if task$ = "Report back to Harry"
	SetTextPosition(307,(GetVirtualWidth()/2 - GetTextTotalWidth(307)/2),24)
else
	SetTextPosition(307,-1024,0)
endif
if task$ = "Meet with Harry at John's office"
	SetTextPosition(314,(GetVirtualWidth()/2 - GetTextTotalWidth(314)/2),24)
else
	SetTextPosition(314,-1024,0)
endif
if task$ = "Speak with William"
	SetTextPosition(401,(GetVirtualWidth()/2 - GetTextTotalWidth(401)/2),24)
else
	SetTextPosition(401,-1024,0)
endif
if task$ = "Go to John's office and speak with him"
	SetTextPosition(408,(GetVirtualWidth()/2 - GetTextTotalWidth(408)/2),24)
else
	SetTextPosition(408,-1024,0)
endif
if task$ = "Report the news to William"
	SetTextPosition(415,(GetVirtualWidth()/2 - GetTextTotalWidth(415)/2),24)
else
	SetTextPosition(415,-1024,0)
endif
if task$ = "Meet with William at the Mayor's office"
	SetTextPosition(422,(GetVirtualWidth()/2 - GetTextTotalWidth(422)/2),24)
else
	SetTextPosition(422,-1024,0)
endif
if task$ = "Convince John"
	SetTextPosition(424,(GetVirtualWidth()/2 - GetTextTotalWidth(424)/2),24)
else
	SetTextPosition(424,-1024,0)
endif
if task$ = "Threaten John with force"
	SetTextPosition(430,(GetVirtualWidth()/2 - GetTextTotalWidth(430)/2),24)
else
	SetTextPosition(430,-1024,0)
endif

if task$ = "Go back home and sleep"
	SetTextPosition(129,(GetVirtualWidth()/2 - GetTextTotalWidth(129)/2),24)
else
	SetTextPosition(129,-1024,0)
endif

//Subtask Topscreen/////////////////////////////////////////////////////////////////////
if dialog$ = "Speak with the Mayor"
	SetTextPosition(102,(GetVirtualWidth()/2 - GetTextTotalWidth(102)/2),46)
else
	SetTextPosition(102,-1024,0)
endif
if dialog$ = "Speak with the Robber"
	SetTextPosition(110,(GetVirtualWidth()/2 - GetTextTotalWidth(110)/2),46)
else
	SetTextPosition(110,-1024,0)
endif
if dialog$ = "Speak with the Railroad Worker"
	SetTextPosition(119,(GetVirtualWidth()/2 - GetTextTotalWidth(119)/2),46)
else
	SetTextPosition(119,-1024,0)
endif






return
