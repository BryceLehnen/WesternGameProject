Opening:



LoadImage(1000,"logo.png")
CreateSprite(1000,1000)
CreateText(1000,"Bryce Lehnen")
CreateText(1001,"Billings West High School")
CreateText(1002,"US History")
CreateText(1003,"January, 2019")
CreateText(1004,"Version Unknown")
for x = 1000 to 1004
	SetTextSize(x,25)
next
SetSpritePosition(1000,(GetVirtualWidth()/2 - GetSpriteWidth(1000)/2),75)
SetTextPosition(1000,(GetVirtualWidth()/2 - GetTextTotalWidth(1000)/2),600)
SetTextPosition(1001,(GetVirtualWidth()/2 - GetTextTotalWidth(1001)/2),625)
SetTextPosition(1002,(GetVirtualWidth()/2 - GetTextTotalWidth(1002)/2),650)
SetTextPosition(1003,(GetVirtualWidth()/2 - GetTextTotalWidth(1003)/2),675)
SetTextPosition(1004,(GetVirtualWidth()/2 - GetTextTotalWidth(1004)/2),700)

sync()
sleep(5000)
SetspritePosition(1000,-1024,0)
SetTextPosition(1000,-1024,0)
SetTextPosition(1001,-1024,0)
SetTextPosition(1002,-1024,0)
SetTextPosition(1003,-1024,0)
SetTextPosition(1004,-1024,0)

createtext(1005,"Instructions:")
createtext(1006,"Use A and D to move the character")
createtext(1007,"Use the mouse to go from location to location")
createtext(1008,"Use the up and down arrows to select different text options")
createtext(1009,"Use the spacebar to progress through dialog")

y = 0
for x = 1005 to 1009
	SetTextSize(x,30)
	SetTextPosition(x,5,y)
	y = y + 30
next

sync()
sleep(13000)
SetTextPosition(1005,-1024,0)
SetTextPosition(1006,-1024,0)
SetTextPosition(1007,-1024,0)
SetTextPosition(1008,-1024,0)
SetTextPosition(1009,-1024,0)



return
