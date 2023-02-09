Text:

//Main and Random Text
CreateText(1,"Click Here to Go to the Town")
CreateText(2,"Click Here to Go to the Factory")
createtext(3,"Click Here to Go to your Home")
CreateText(4,"Click Here to Enter the Mayor's Office")
CreateText(5,"Click Here to Enter the Alley Way")
CreateText(6,"Click Here to Enter the Factory")
for x = 1 to 6
	SetTextSize(x,30)
	SetTextPosition(x,-1024,0)
next

CreateText(7,"Click Here to Play")
SetTextSize(7,50)
SetTextPosition(7,-1024,0)

createtext(8,"You're the new sheriff.")
createtext(9,"Head into town and meet some of the people who live there.")
createtext(10,"Don't die and good luck.")
for x = 8 to 10
	SetTextSize(x,30)
	SetTextPosition(x,-1024,0)
next

CreateText(11,"Click Here to Exit the Factory")
SetTextSize(11,30)
SetTextPosition(11,-1024,0)
CreateText(12,"Click Here to Sleep")
SetTextSize(12,30)
SetTextPosition(12,-1024,0)
CreateText(13,"Choose a Different Ending")
SetTextSize(13,30)
SetTextPosition(13,-1024,0)
CreateText(14,"Restart")
SetTextSize(14,30)
SetTextPosition(14,-1024,0)
CreateText(15,"Quit")
SetTextSize(15,30)
SetTextPosition(15,-1024,0)



//First Quest////////////////////////////////////////////////////////////////////////////
CreateText(100,"Getting to Know the Town")
CreateText(101,"Meet with a few of the townsfolk")

CreateText(102,"Speak with the Mayor")
CreateText(103,"Welcome to our fine town. How can I assist you")
CreateText(104,"I'm James... the new sheriff. You are the mayor in town, right?")
CreateText(105,"Yes, I am the mayor, but you can just call me John. I also run some of the local businesses like the local lumber and railroad companies.")
CreateText(106,"Just curious, but wouldn't you simply make decisions that benefit your companies?")
CreateText(107,"Yes and no. Of course I make decisions that benefit my companies because they need to prosper, but I do my best to help the workers.")
CreateText(108,"Alright then. I'll just be on my way.")
CreateText(109,"Of course! You do have to keep this town safe. Come back if you want to help me out with a little job.")

CreateText(110,"Speak with the Robber")
CreateText(111,"Pssssst. Over here.")
CreateText(112,"What seems to be the problem?")
CreateText(113,"No problem here, but I have a proposition for you.")
CreateText(114,"What kind of proposition?")
CreateText(115,"The kind that would get rid of the Mayor and put someone useful in control of this town.")
createtext(116,"He fired a bunch of the workers to lower costs. He needs to be punished.")
CreateText(117,"I understand. Hey, what's your name any way?")
CreateText(118,"The names Harry, but come back to talk with me if you want more information.")

CreateText(119,"Speak with the Railroad Worker")
CreateText(120,"Howdy! I'm William. Welcome to the railroad workshop. What can I do for ya?")
CreateText(121,"I'm just looking around to meet some of the folk here in town. I'm James, the new Sheriff.")
CreateText(122,"Nice to meet you. Not to somber your mood, but do you know why you're the new Sheriff?")
CreateText(123,"I never heard what happened to the last man in charge.")
CreateText(124,"He was just shot dead in the street. No one knows who did it.")
CreateText(125,"I'll keep that in mind. Do you have a family of your own?")
CreateText(126,"Yep, It’s just me, my wife, and our two kids. Nothing crazy, but it is starting to become hard to support them.")
createtext(127,"My wife is helping out financially though.")
CreateText(128,"If you want to help us out that would be great. Just come back here to talk to me.")

CreateText(129,"Go back home and sleep")

//Second Quest
CreateText(130,"Choices, Choices, Choices!")
CreateText(131,"Speak with either John, Harry, or William to side with them")

CreateText(132,"Speak with John")
CreateText(133,"Ahhh, I see you're back. Interested in my job?")
CreateText(134,"You could say I'm Intrigued.")
CreateText(135,"Alright. Well, meet me here tomorrow morning.")
CreateText(136,"No, just checking around town.")
CreateText(137,"Well, come back when you're ready.")

CreateText(138,"Speak with Harry")
CreateText(139,"You ready to get started?")
CreateText(140,"Yeah let's do it.")
CreateText(141,"Good choice. Meet me here tomorrow morning.")
CreateText(142,"No. Just keeping an eye on you.")
CreateText(143,"No need. Come back when you're ready to start this though.")

CreateText(144,"Speak with William")
CreateText(145,"Are you ready to do this thing?")
CreateText(146,"Sure am!")
CreateText(147,"Meet me here tomorrow morning.")
CreateText(148,"No. Just out on patrol.")
CreateText(149,"If you want to help, just come back here and talk to me.")

CreateText(150,"Go back home and sleep")

for x = 100 to 150
	SetTextSize(x,20)
	SetTextPosition(x,-1024,0)
next

//Mayor Questline////////////////////////////////////////////////////////////////////////
CreateText(200,"A New Connection with the Workers")

CreateText(201,"Speak with John")
CreateText(202,"To get started, I’ll need you to talk with the workers at the railroad factory, and get some info about wages.")
CreateText(203,"What kind of information?")
CreateText(204,"The kind that asks them (more appropriately tells them), that their pay is being decreased.")
CreateText(205,"I’ll get right on that.")

CreateText(206,"Speak with William")
CreateText(207,"What are your feelings about the wages?")
CreateText(208,"What? Our pays are low enough! This is ridiculous!")
CreateText(209,"I’m just the messenger. No need to be angry at me.")
CreateText(210,"Who gave you the message?")
CreateText(211,"John sent me.")
CreateText(212,"Well you tell John that we won’t stand for this.")
CreateText(213,"I’ll make sure he gets that message.")

CreateText(214,"Report back to John with your findings")
CreateText(215,"What was their reaction?")
CreateText(216,"Not good. They said that they would not stand for the wage decreases.")
CreateText(217,"I’ll need you to give some news to the workers. I’ll give you the details tomorrow morning.")

CreateText(218,"Go back home to sleep")


//2nd Quest
CreateText(219,"The Best Part of Waking Up is Pay-Cuts in your Cup!")

CreateText(220,"Speak with the Mayor about his plans")
CreateText(221,"Good morning Sheriff. I have the newsletter right here. Please open it and read it to the workers. Come back when you’re done.")
CreateText(222,"I’m on it, sir.")

CreateText(223,"Report the good news to the workers")
CreateText(224,"Howdy, James. Did you tell John what I told you to tell him?")
CreateText(225,"Yes, and he’s sent a letter in response for me to read to you.")
CreateText(226,"Don’t just stand there. Get to it.")
CreateText(227,"The Letter reads as follows:")
CreateText(228,"It has come to my attention that my fine workers are receiving too much pay.")
CreateText(229,"From today onward, your wages will be decreased, but I will ensure that the money goes back into our fine city - John")
CreateText(230,"We told him that we would not stand for this. Now we’ll show him what we mean. Tell him that we’re going on strike.")

CreateText(231,"Report back to John")
CreateText(232,"How did they take the news?")
CreateText(233,"Not well. They have proceeded to go on strike.")
CreateText(234,"STRIKE! They can’t do that. Not while there is so much work to be done.")
CreateText(235,"I’m just passing the news onto you.")
CreateText(236,"They can’t change my mind. You make sure that they stay in line, you here?")
CreateText(237,"I’ll keep an eye out.")
CreateText(238,"Please leave my office, so I can think.")

CreateText(239,"Go back home to sleep")


//3rd Quest
CreateText(240,"Ohhh, the Horror!")

CreateText(241,"Go into town and ask Harry what’s happened")
CreateText(242,"Fine time for you to show up.")
CreateText(243,"What’s happened to the Mayor?")
CreateText(244,"A lot of the workers banded together to get what they wanted from him. I think they have him held up in his office right now.")
CreateText(245,"I need to go stop this.")

CreateText(246,"Head into John’s office")
CreateText(247,"William: Stop right there.")
CreateText(248,"You need to stop this immediately.")
CreateText(249,"William: We won’t stop until we get what we want.")
CreateText(250,"And what is that?")
CreateText(251,"William: Higher wages. John here said he was gonna put the money back into the city, but we found out he’s kept it to himself.")
CreateText(252,"John: They’re lying. Throw them all in jail.")
CreateText(253,"William: Who are you gonna believe James?")
CreateText(254,"John made a promise, and I made a promise to keep this city safe. You’re all coming with me.")
CreateText(255,"They caught you John. I have to go on their side.")

CreateText(256,"Stop the violent workers and save John or Arrest John")
CreateText(257,"Arrest John")


//4th Quest
CreateText(258,"The Town of Total Control")
CreateText(259,"Go into town")

CreateText(260,"The Town Controlled by the People")
CreateText(261,"Go into town")

for x = 200 to 261
	SetTextSize(x,20)
	SetTextPosition(x,-1024,0)
next


//Robber Questline///////////////////////////////////////////////////////////////////////
CreateText(300,"The Start of Something Terrible")

CreateText(301,"Speak with Harry")
CreateText(302,"Good morning Sheriff. Ready to hear the plan?")
CreateText(303,"Yeah, let’s hear it.")
CreateText(304,"It’s simple. You get some intel on John’s place and then we infiltraight it tomorrow.")
CreateText(305,"Sounds simple enough. I’ll get right on it.")

CreateText(306,"Gather intel for the plan")

CreateText(307,"Report back to Harry")
CreateText(308,"What’d you find?")
CreateText(309,"There are multiple entrances that we can use to get inside without him noticing.")
CreateText(310,"The best plan would be for you to go in back while I come in the front because he doesn’t suspect a thing.")
CreateText(311,"Good idea. Be up nice and early tomorrow, so you can meet me at his office.")

CreateText(312,"Go back home to sleep")

//2nd Quest
CreateText(313,"Finish What You’ve Started")

CreateText(314,"Meet with Harry at John’s office")
CreateText(315,"Harry: Perfect timing Sheriff.")
CreateText(316,"Mayor: You need to help me!")
CreateText(317,"You said we’d do this together")
CreateText(318,"Harry: I might have lied a little bit, but I was going to let you do the honors.")
CreateText(319,"Mayor: You were in on it!?!")
CreateText(320,"Harry: The choice is yours Sheriff. Kill him or let him go. Either way, we win.")

CreateText(321,"Kill the Mayor")
CreateText(322,"Spare the Mayor")

//3rd Quest
CreateText(323,"The End of Someone Terrible")
CreateText(324,"Take over the town with Harry")

CreateText(325,"The Start of Something Great")
CreateText(326,"Become the new Mayor")

for x = 300 to 326
	SetTextSize(x,20)
	SetTextPosition(x,-1024,0)
next


//Worker Questline///////////////////////////////////////////////////////////////////////
CreateText(400,"A Family in Need")

CreateText(401,"Speak with WIlliam")
CreateText(402,"You actually came.")
CreateText(403,"Just doing what’s right.")
CreateText(404,"To start off, you need to talk with John about our wages.")
CreateText(405,"We would all like this to go over as peaceful as possible before we turn to more… chaotic measures.")
CreateText(406,"Understood. I’ll have a chat with him.")
CreateText(407,"Just come back when you’re done.")

CreateText(408,"Go to John’s office and speak with him")
CreateText(409,"Welcome Sheriff. What can I do for you?")
CreateText(410,"Just came with a message from the workers.")
CreateText(411,"Damn. What is it now? Did someone get caught in one of the machines again. I swear that happens all the time.")
CreateText(412,"No no no. Everyone’s fine, but they wanted me to speak with you about raising their wages. They simply want to be paid more.")
CreateText(413,"No can do cowboy.")
CreateText(414,"Thanks for the chat.")

CreateText(415,"Report the news to William")
CreateText(416,"Is this going to end peacefully?")
CreateText(417,"Not that I can see. He refused.")
CreateText(418,"So be it. We have a plan B. Meet us at his office tomorrow morning.")
CreateText(419,"I’ll be there.")

CreateText(420,"Go back home to sleep")

//2nd Quest
CreateText(421,"Gotta do What You Gotta Do")

CreateText(422,"Meet with William at the Mayor’s office")
CreateText(423,"William: Nice of you to show up James. I can’t get through to John. Maybe you can.")

CreateText(424,"Convince John")
CreateText(425,"I don’t have the money to pay them more.")
CreateText(426,"We all know you do John. You own the companies.")
CreateText(427,"No one will believe you.")
CreateText(428,"They’ll believe the Sheriff of the town who has no reason to lie. You can keep being Mayor if you lose your corrupt ways.")
CreateText(429,"... deal.")

CreateText(430,"Threaten John with force")
CreateText(431,"I don’t have the money to pay them more.")
CreateText(432,"I don’t want to have to kill you John. Just give them the raises, and then you get to see another day.")
CreateText(433,"You don’t have the guts to do it.")
CreateText(434,"All you had to do was the right thing.")

CreateText(435,"Go back home to sleep")

//3rd Quest
CreateText(436,"The People Always Win")
CreateText(437,"Head into town")

CreateText(438,"Sometimes, Violence is the Answer")
CreateText(439,"Head into town")

for x = 400 to 439
	SetTextSize(x,20)
	SetTextPosition(x,-1024,0)
next


return
