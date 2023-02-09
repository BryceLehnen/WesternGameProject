Load:


// BackGrounds
LoadImage ( 1,"Back Menu-1.png.png")
LoadImage ( 2,"Back Home-1.png.png")
LoadImage ( 3,"Back Town-1.png.png")
LoadImage ( 4,"Back Mayor-1.png.png")
LoadImage ( 5,"Back Alley-1.png.png")
LoadImage ( 6,"Back Factory-1.png.png")
LoadImage ( 7,"Back Factory Inside-1.png.png")
LoadImage ( 8,"Day Sky-1.png.png")
LoadImage ( 9,"Sunset Sky-1.png.png")
LoadImage ( 10,"Night Sky-1.png.png")

for x = 1 to 10
	CreateSprite(x,x)
	SetSpritePosition(x,-1024,0)
next

// Still Characters
//LoadImage ( 11,"Base Sheriff Still R-1.png")
//LoadImage ( 12,"Base Sheriff Still L-1.png")
//LoadImage ( 13,"Base Mayor Still R-1.png")
LoadImage ( 14,"12Base Mayor Still L-1.png.png")
LoadImage ( 15,"12Base Robber Still R-1.png.png")
LoadImage ( 16,"10Base Robber Still L-1.png.png")
LoadImage ( 17,"12Base Worker Still R-1.png.png")
LoadImage ( 18,"6Base Worker Still L-1.png.png")

for x = 14 to 18
	CreateSprite(x,x)
	SetSpritePosition(x,-1024,0)
next


//Sheriff Sets

//Stills
//TOWN
LoadImage (19,"3Base Sheriff Still R-1.png.png")
LoadImage (20,"3Base Sheriff Still L-1.png.png")
//FACTORY
LoadImage (21,"4Base Sheriff Still R-1.png.png")
LoadImage (22,"4Base Sheriff Still L-1.png.png")
//INSIDE
LoadImage (23,"6Base Sheriff Still R-1.png.png")
LoadImage (24,"6Base Sheriff Still L-1.png.png")
//HOME
LoadImage (25,"8Base Sheriff Still R-1.png.png")
LoadImage (26,"8Base Sheriff Still L-1.png.png")
//ALLEY
LoadImage (27,"10Base Sheriff Still R-1.png.png")
LoadImage (28,"10Base Sheriff Still L-1.png.png")
//MAYOR
LoadImage (29,"12Base Sheriff Still R-1.png.png")
LoadImage (30,"12Base Sheriff Still L-1.png.png")

for x = 19 to 30
	CreateSprite(x,x)
	SetSpritePosition(x,-1024,0)
next

//Animation
//TOWN
CreateSprite(31,0)
AddSpriteAnimationFrame(31, LoadImage ("3Base Sheriff R-1.png.png"))
AddSpriteAnimationFrame(31, LoadImage ("3Base Sheriff R-2.png.png"))
AddSpriteAnimationFrame(31, LoadImage ("3Base Sheriff R-3.png.png"))
AddSpriteAnimationFrame(31, LoadImage ("3Base Sheriff R-4.png.png"))
AddSpriteAnimationFrame(31, LoadImage ("3Base Sheriff R-5.png.png"))
AddSpriteAnimationFrame(31, LoadImage ("3Base Sheriff R-6.png.png"))
AddSpriteAnimationFrame(31, LoadImage ("3Base Sheriff R-7.png.png"))
AddSpriteAnimationFrame(31, LoadImage ("3Base Sheriff R-8.png.png"))
CreateSprite(32,0)
AddSpriteAnimationFrame(32, LoadImage ("3Base Sheriff L-1.png.png"))
AddSpriteAnimationFrame(32, LoadImage ("3Base Sheriff L-2.png.png"))
AddSpriteAnimationFrame(32, LoadImage ("3Base Sheriff L-3.png.png"))
AddSpriteAnimationFrame(32, LoadImage ("3Base Sheriff L-4.png.png"))
AddSpriteAnimationFrame(32, LoadImage ("3Base Sheriff L-5.png.png"))
AddSpriteAnimationFrame(32, LoadImage ("3Base Sheriff L-6.png.png"))
AddSpriteAnimationFrame(32, LoadImage ("3Base Sheriff L-7.png.png"))
AddSpriteAnimationFrame(32, LoadImage ("3Base Sheriff L-8.png.png"))

//FACTORY
CreateSprite(33,0)
AddSpriteAnimationFrame(33, LoadImage ("4Base Sheriff R-1.png.png"))
AddSpriteAnimationFrame(33, LoadImage ("4Base Sheriff R-2.png.png"))
AddSpriteAnimationFrame(33, LoadImage ("4Base Sheriff R-3.png.png"))
AddSpriteAnimationFrame(33, LoadImage ("4Base Sheriff R-4.png.png"))
AddSpriteAnimationFrame(33, LoadImage ("4Base Sheriff R-5.png.png"))
AddSpriteAnimationFrame(33, LoadImage ("4Base Sheriff R-6.png.png"))
AddSpriteAnimationFrame(33, LoadImage ("4Base Sheriff R-7.png.png"))
AddSpriteAnimationFrame(33, LoadImage ("4Base Sheriff R-8.png.png"))
CreateSprite(34,0)
AddSpriteAnimationFrame(34, LoadImage ("4Base Sheriff L-1.png.png"))
AddSpriteAnimationFrame(34, LoadImage ("4Base Sheriff L-2.png.png"))
AddSpriteAnimationFrame(34, LoadImage ("4Base Sheriff L-3.png.png"))
AddSpriteAnimationFrame(34, LoadImage ("4Base Sheriff L-4.png.png"))
AddSpriteAnimationFrame(34, LoadImage ("4Base Sheriff L-5.png.png"))
AddSpriteAnimationFrame(34, LoadImage ("4Base Sheriff L-6.png.png"))
AddSpriteAnimationFrame(34, LoadImage ("4Base Sheriff L-7.png.png"))
AddSpriteAnimationFrame(34, LoadImage ("4Base Sheriff L-8.png.png"))

//INSIDE
CreateSprite(35,0)
AddSpriteAnimationFrame(35, LoadImage ("6Base Sheriff R-1.png.png"))
AddSpriteAnimationFrame(35, LoadImage ("6Base Sheriff R-2.png.png"))
AddSpriteAnimationFrame(35, LoadImage ("6Base Sheriff R-3.png.png"))
AddSpriteAnimationFrame(35, LoadImage ("6Base Sheriff R-4.png.png"))
AddSpriteAnimationFrame(35, LoadImage ("6Base Sheriff R-5.png.png"))
AddSpriteAnimationFrame(35, LoadImage ("6Base Sheriff R-6.png.png"))
AddSpriteAnimationFrame(35, LoadImage ("6Base Sheriff R-7.png.png"))
AddSpriteAnimationFrame(35, LoadImage ("6Base Sheriff R-8.png.png"))
CreateSprite(36,0)
AddSpriteAnimationFrame(36, LoadImage ("6Base Sheriff L-1.png.png"))
AddSpriteAnimationFrame(36, LoadImage ("6Base Sheriff L-2.png.png"))
AddSpriteAnimationFrame(36, LoadImage ("6Base Sheriff L-3.png.png"))
AddSpriteAnimationFrame(36, LoadImage ("6Base Sheriff L-4.png.png"))
AddSpriteAnimationFrame(36, LoadImage ("6Base Sheriff L-5.png.png"))
AddSpriteAnimationFrame(36, LoadImage ("6Base Sheriff L-6.png.png"))
AddSpriteAnimationFrame(36, LoadImage ("6Base Sheriff L-7.png.png"))
AddSpriteAnimationFrame(36, LoadImage ("6Base Sheriff L-8.png.png"))

//HOME
CreateSprite(37,0)
AddSpriteAnimationFrame(37, LoadImage ("8Base Sheriff R-1.png.png"))
AddSpriteAnimationFrame(37, LoadImage ("8Base Sheriff R-2.png.png"))
AddSpriteAnimationFrame(37, LoadImage ("8Base Sheriff R-3.png.png"))
AddSpriteAnimationFrame(37, LoadImage ("8Base Sheriff R-4.png.png"))
AddSpriteAnimationFrame(37, LoadImage ("8Base Sheriff R-5.png.png"))
AddSpriteAnimationFrame(37, LoadImage ("8Base Sheriff R-6.png.png"))
AddSpriteAnimationFrame(37, LoadImage ("8Base Sheriff R-7.png.png"))
AddSpriteAnimationFrame(37, LoadImage ("8Base Sheriff R-8.png.png"))
CreateSprite(38,0)
AddSpriteAnimationFrame(38, LoadImage ("8Base Sheriff L-1.png.png"))
AddSpriteAnimationFrame(38, LoadImage ("8Base Sheriff L-2.png.png"))
AddSpriteAnimationFrame(38, LoadImage ("8Base Sheriff L-3.png.png"))
AddSpriteAnimationFrame(38, LoadImage ("8Base Sheriff L-4.png.png"))
AddSpriteAnimationFrame(38, LoadImage ("8Base Sheriff L-5.png.png"))
AddSpriteAnimationFrame(38, LoadImage ("8Base Sheriff L-6.png.png"))
AddSpriteAnimationFrame(38, LoadImage ("8Base Sheriff L-7.png.png"))
AddSpriteAnimationFrame(38, LoadImage ("8Base Sheriff L-8.png.png"))

//ALLEY
CreateSprite(39,0)
AddSpriteAnimationFrame(39, LoadImage ("10Base Sheriff R-1.png.png"))
AddSpriteAnimationFrame(39, LoadImage ("10Base Sheriff R-2.png.png"))
AddSpriteAnimationFrame(39, LoadImage ("10Base Sheriff R-3.png.png"))
AddSpriteAnimationFrame(39, LoadImage ("10Base Sheriff R-4.png.png"))
AddSpriteAnimationFrame(39, LoadImage ("10Base Sheriff R-5.png.png"))
AddSpriteAnimationFrame(39, LoadImage ("10Base Sheriff R-6.png.png"))
AddSpriteAnimationFrame(39, LoadImage ("10Base Sheriff R-7.png.png"))
AddSpriteAnimationFrame(39, LoadImage ("10Base Sheriff R-8.png.png"))
CreateSprite(40,0)
AddSpriteAnimationFrame(40, LoadImage ("10Base Sheriff L-1.png.png"))
AddSpriteAnimationFrame(40, LoadImage ("10Base Sheriff L-2.png.png"))
AddSpriteAnimationFrame(40, LoadImage ("10Base Sheriff L-3.png.png"))
AddSpriteAnimationFrame(40, LoadImage ("10Base Sheriff L-4.png.png"))
AddSpriteAnimationFrame(40, LoadImage ("10Base Sheriff L-5.png.png"))
AddSpriteAnimationFrame(40, LoadImage ("10Base Sheriff L-6.png.png"))
AddSpriteAnimationFrame(40, LoadImage ("10Base Sheriff L-7.png.png"))
AddSpriteAnimationFrame(40, LoadImage ("10Base Sheriff L-8.png.png"))

//MAYOR
CreateSprite(41,0)
AddSpriteAnimationFrame(41, LoadImage ("12Base Sheriff R-1.png.png"))
AddSpriteAnimationFrame(41, LoadImage ("12Base Sheriff R-2.png.png"))
AddSpriteAnimationFrame(41, LoadImage ("12Base Sheriff R-3.png.png"))
AddSpriteAnimationFrame(41, LoadImage ("12Base Sheriff R-4.png.png"))
AddSpriteAnimationFrame(41, LoadImage ("12Base Sheriff R-5.png.png"))
AddSpriteAnimationFrame(41, LoadImage ("12Base Sheriff R-6.png.png"))
AddSpriteAnimationFrame(41, LoadImage ("12Base Sheriff R-7.png.png"))
AddSpriteAnimationFrame(41, LoadImage ("12Base Sheriff R-8.png.png"))
CreateSprite(42,0)
AddSpriteAnimationFrame(42, LoadImage ("12Base Sheriff L-1.png.png"))
AddSpriteAnimationFrame(42, LoadImage ("12Base Sheriff L-2.png.png"))
AddSpriteAnimationFrame(42, LoadImage ("12Base Sheriff L-3.png.png"))
AddSpriteAnimationFrame(42, LoadImage ("12Base Sheriff L-4.png.png"))
AddSpriteAnimationFrame(42, LoadImage ("12Base Sheriff L-5.png.png"))
AddSpriteAnimationFrame(42, LoadImage ("12Base Sheriff L-6.png.png"))
AddSpriteAnimationFrame(42, LoadImage ("12Base Sheriff L-7.png.png"))
AddSpriteAnimationFrame(42, LoadImage ("12Base Sheriff L-8.png.png"))


for x = 31 to 42
	playsprite(x,10,1,1,8)
	SetSpritePosition(x,-1024,0)
next




return
