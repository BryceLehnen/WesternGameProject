// Project: Final Project 
// Created: 2018-12-22

// show all errors
SetErrorMode(1)
// set window properties
SetWindowTitle( "Final Project" )
SetWindowSize( 1024, 768, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window
// set display properties
SetVirtualResolution( 1024, 768 ) // doesn't have to match the window
//SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 60, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts


//Variables
back$ = "Menu"
tran$ = "Start"
sky$ = ""
skytran = 1
start = 0
quest$ = ""
task$ = ""
dialog$ = ""
text = 0
choice = 1

playerx = -1024
playery = 0
playersize$ = "Home"
direction$ = "Right"


//Includes
#include "Opening.agc"
#include "Load.agc"
#include "Sounds.agc"
#include "Text.agc"
#include "Player.agc"
#include "Menu.agc"
#include "Getting to Know the Town.agc"
#include "Choices, Choices, Choices!.agc"
#include "A New Connection with the Workers.agc"
#include "The Best Part of Waking Up is Pay-Cuts in your Cup!.agc"
#include "Ohhh, the Horror!.agc"
#include "The Start of Something Terrible.agc"
#include "Finish What You've Started.agc"
#include "A Family in Need.agc"
#include "Gotta Do What You Gotta Do.agc"

#include "Endings.agc"

//Main Loads
gosub Load
gosub Sounds
gosub Text
gosub Opening






do
//Basics
x# = GetPointerX()
y# = GetPointerY()

//GoSub
gosub Player
gosub Menu

gosub Endings

gosub GettingtoKnowntheTown
gosub ChoicesChoicesChoices
gosub ANewConnectionwiththeWorkers
gosub TheBestPartofWakingUpisPayCutsinyourCup
gosub OhhhtheHorror
gosub TheStartofSomethingTerrible
gosub FinishWhatYouveStarted
gosub AFamilyInNeed
gosub GottaDoWhatYouGottaDo


 



	
    Sync()
loop
