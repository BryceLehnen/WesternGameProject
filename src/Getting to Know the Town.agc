GettingtoKnowntheTown:


if start = 100
	quest$ = "Getting to Know the Town"
	task$ = "Meet with a few of the townsfolk"
endif


for x = 1 to 1
if quest$ = "Getting to Know the Town"
	if task$ = "Meet with a few of the townsfolk"
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
		if dialog$ = "Speak with the Mayor"
			if back$ = "Mayor"
				if playerx >= 600
					playerx = 600
					if text = 103
						SetTextPosition(103,5,680)
						SetTextPosition(104,5,710)
						SetTextColor(104,140,140,140,255)
						if GetRawKeyPressed(32)
							playsound(1)
							text = 105
							exit
						endif
					else
						SetTextPosition(103,-1024,0)
						SetTextPosition(104,-1024,0)
					endif
					if text = 105
						SetTextPosition(105,5,680)
						SetTextPosition(106,5,710)
						SetTextColor(106,140,140,140,255)
						if GetRawKeyPressed(32)
							playsound(1)
							text = 107
							exit
						endif
					else
						SetTextPosition(105,-1024,0)
						SetTextPosition(106,-1024,0)
					endif
					if text = 107
						SetTextPosition(107,5,680)
						SetTextPosition(108,5,710)
						SetTextColor(108,140,140,140,255)
						if GetRawKeypressed(32)
							playsound(1)
							text = 109
							exit
						endif
					else
						SetTextPosition(107,-1024,0)
						SetTextPosition(108,-1024,0)
					endif
					if text = 109
						SetTextPosition(109,5,680)
						if GetRawKeyPressed(32)
							playsound(1)
							dialog$ = "Speak with the Robber"
							text = 111
							SetTextPosition(109,-1024,0)
							exit
						endif
					else
						SetTextPosition(109,-1024,0)
					endif
				endif
			endif
		endif
		if dialog$ = "Speak with the Robber"
			if back$ = "Alley"
				if playerx >= 700
					playerx = 700
					if text = 111
						SetTextPosition(111,5,680)
						SetTextPosition(112,5,710)
						SetTextColor(112,140,140,140,255)
						if GetRawKeyPressed(32)
							playsound(1)
							text = 113
							exit
						endif
					else
						SetTextPosition(111,-1024,0)
						SetTextPosition(112,-1024,0)
					endif
					if text = 113
						SetTextPosition(113,5,680)
						SetTextPosition(114,5,710)
						SetTextColor(114,140,140,140,255)
						if GetRawKeyPressed(32)
							playsound(1)
							text = 115
							exit
						endif
					else
						SetTextPosition(113,-1024,0)
						SetTextPosition(114,-1024,0)
					endif
					if text = 115
						SetTextPosition(115,5,680)
						SetTextPosition(116,5,700)
						SetTextPosition(117,5,730)
						SetTextColor(117,140,140,140,255)
						if GetRawKeyPressed(32)
							playsound(1)
							text = 118
							exit
						endif
					else
						SetTextPosition(115,-1024,0)
						SetTextPosition(116,-1024,0)
						SetTextPosition(117,-1024,0)
					endif
					if text = 118
						SetTextPosition(118,5,680)
						if GetRawKeyPressed(32)
							playsound(1)
							dialog$ = "Speak with the Railroad Worker"
							skytran = 2
							text = 120
							SetTextPosition(118,-1024,0)
							exit
						endif
					else
						SetTextPosition(118,-1024,0)
					endif
				endif
			endif
		endif
		if dialog$ = "Speak with the Railroad Worker"
			if back$ = "Factory Inside"
				if playerx >= 450
					playerx = 450
					if text = 120
						SetTextPosition(120,5,680)
						SetTextPosition(121,5,710)
						SetTextColor(121,140,140,140,255)
						if GetRawKeyPressed(32)
							playsound(1)
							text = 122
							exit
						endif
					else
						SetTextPosition(120,-1024,0)
						SetTextPosition(121,-1024,0)
					endif
					if text = 122
						SetTextPosition(122,5,680)
						SetTextPosition(123,5,710)
						SetTextColor(123,140,140,140,255)
						if GetRawKeyPressed(32)
							playsound(1)
							text = 124
							exit
						endif
					else
						SetTextPosition(122,-1024,0)
						SetTextPosition(123,-1024,0)
					endif
					if text = 124
						SetTextPosition(124,5,680)
						SetTextPosition(125,5,710)
						SetTextColor(125,140,140,140,255)
						if GetRawKeyPressed(32)
							playsound(1)
							text = 126
							exit
						endif
					else
						SetTextPosition(124,-1024,0)
						SetTextPosition(125,-1024,0)
					endif
					if text = 126
						SetTextPosition(126,5,680)
						SetTextPosition(127,5,700)
						if GetRawKeyPressed(32)
							playsound(1)
							text = 128
							exit
						endif
					else
						SetTextPosition(126,-1024,0)
						SetTextPosition(127,-1024,0)
					endif
					if text = 128
						SetTextPosition(128,5,680)
						if GetRawKeyPressed(32)
							playsound(1)
							dialog$ = ""
							task$ = "Go back home and sleep"
							skytran = 3
							start = 129
							text = 133
							SetTextPosition(128,-1024,0)
						endif
					else
						SetTextPosition(128,-1024,0)
					endif
				endif
			endif
		endif
	endif
endif

next
return
