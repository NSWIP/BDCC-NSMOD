extends SceneBase

var anger = 0.0
var corruption = 0.0
var lust = 0.0
var hasUnderwear = false
var buttScore = 0
var usedItemName = ""
var plasticBottleFluidID = ""
var waterLevel = 0

func _init():
	sceneID = "jackiCh2s2GymScene"

func _reactInit():
	getCharacter("jacki").updateBodyparts()

func _run():
	if(state == ""):
		anger = getFlag("JackiModule.jackiAnger", 0.0)
		corruption = getFlag("JackiModule.jackiCorruption", 0.0)
		lust = getFlag("JackiModule.jackiLust", 0.0)
		hasUnderwear = getModule("JackiModule").shouldUnderwear()
		buttScore = getModule("JackiModule").getSkillScore("jackiSkillButtslut")
		addCharacter("jacki")
		saynn("Jacki's anger: "+str(anger)+"")

		saynn("Jacki's corruption: "+str(corruption)+"")

		saynn("Jacki's lust: "+str(lust)+"")

		playAnimation(StageScene.Solo, "kneel", {pc="jacki", bodyState={underwear=hasUnderwear}})
		if (anger >= 0.1):
			saynn("Jacki is"+str(" extremely" if anger > 0.5 else "")+" angry at you so it's best for you not to come too close to her. Not until you decide to act.")

			saynn("You take a spot in some shadow and just watch her exercise.")

		elif (anger >= -0.1):
			saynn("Jacki is not angry at you. But you're also weren't exactly kind to her. So it's best to stay some distance away. Until you decide to do something.")

			saynn("You take a spot near some tall bush and just watch her exercise.")

		else:
			saynn("You walk up to Jacki. She smiles"+str(" very kindly" if anger < -0.5 else "")+" when she sees you.")

			saynn("[say=jacki]Hey there. Wruff.[/say]")

			saynn("She seems to be doing some exercises.")

		if (corruption >= 1.0):
			saynn("The way she acts is extremely slutty. Bending over often and showing off her ass to anyone who wishes to even glance at it.")

		elif (corruption > 0.7):
			saynn("The way she acts is quite slutty. Each time she bends over, she catches a few hungry glances from other inmates.")

		elif (corruption > 0.4):
			saynn("You notice Jacki acting a bit more.. provocative. Often attracting some extra glances from inmates around.")

		elif (corruption > 0.2):
			saynn("Jacki is a little more brave with what kinds of poses she chooses.")

		if (lust >= 1.0):
			saynn("There is always a visible damp spot on Jacki's shorts where her stitched up pussy is. She is dripping like a slut. You can't walk past without sensing her lusty scent.")

		elif (lust > 0.7):
			saynn("When Jacki bends, her pussy leaves a wet spot on her shorts that fades away after some time. And the smell of juices is quite arousing.")

		elif (lust > 0.4):
			saynn("You get a slight lusty scent from Jacki. Occasionally you notice the outline of her pussy")

		elif (lust > 0.2):
			saynn("You get a slight lusty scent from Jacki.")

		if (anger >= -0.1):
			addButton("Perv", "Watch her do yoga from a far", "do_perv")
			addButton("Gift", "Offer a gift that Jacki might forgive you for. In case you want that", "pick_gift")
			addButton("Follow", "See where Jacki usually jogs", "do_pullaway")
			addButton("Chain up", "Chain Jacki up like she is a punching bag", "do_chainup")
			addButton("Public fuck", "Fuck Jacki right here in the public", "do_publicfuck")
		else:
			addButton("Watch", "Watch her do yoga", "kind_watch")
			addButton("Gift", "Gift Jacki something", "pick_gift")
			if (anger < -0.3):
				addButton("Jogging", "Offer Jacki to jog together", "kind_jog")
			else:
				addDisabledButton("Jogging", "Jacki doesn't trust you enough")
		addDisabledButton("Enslave", "Jacki's corruption and lust must be at 100%")
		addButton("Leave", "Never mind", "endthescene")
	if(state == "do_perv"):
		saynn("You sneakily sit on one of the benches near the yoga mats which puts you in a prime position to watch Jacki do yoga.")

		if (corruption < 0.2):
			playAnimation(StageScene.Yoga, "camel", {pc="jacki", bodyState={underwear=hasUnderwear}})
			saynn("She chooses a pretty tame camel pose that focuses mostly on bending the back.")

			saynn("And so Jacki gets on her knees, pulls her chest high and extends her paws backwards as she arches her back, creating quite an enticing curve. Her fit butt is raised enticingly, drawing your attention like a magnet. She closes her eyes.")

			saynn("As she holds the pose, a little suspicion spawns in her mind. It's like she feels someone watching her. But at the same time, she has to actively maintain this graceful pose or she will fall.")

			saynn("Her breathing gets deeper. At this point you are watching her closely. Maybe you can do more?")

		elif (corruption < 0.5):
			playAnimation(StageScene.Yoga, "dog", {pc="jacki", bodyState={underwear=hasUnderwear}})
			saynn("It's obvious that something about Jacki is changing because she chose a slightly more lewd yoga pose today. A downward-facing dog.")

			saynn("The elegance in her movements is still there but you can just.. feel the difference. Jacki slowly and carefully stretches her body into the posture. Her tail, long and fluffy, sways gently behind her as she raises her hips high.")

			saynn("This pose makes you wish that the wolfie was wearing something more tight. Like spandex. But still, you are able to see the roundness of her fit ass quite clearly. That butt was sculpted by years of exercises.")

			saynn("Jacki is probably still feeling someone watching her. But it's like she doesn't care. She proudly raises her tail as she holds the pose, her bare feet and paws pressed firmly into the mat, her back arches in perfect alignment. Is that a moan you hear coming from her?")

		else:
			playAnimation(StageScene.Yoga, "catcow", {pc="jacki", bodyState={underwear=hasUnderwear}})
			saynn("Jacki gracefully gets on all fours, preparing to do a cat-cow yoga pose. Her fit slim curves are on full display. "+str("It seems she even found a uniform that is a few sizes smaller than she is supposed to wear, allowing the cloth to tightly wrap around her nice butt and small tits." if !hasUnderwear else "It seems the sporty underwear that you gave her are helping with that.")+"")

			saynn("The wolfie arches her back as low as she can, her modest chest pressing forward, her gaze directed high up. Just like her tail. Jacki is shivering and moaning softly, her ass wiggling a bit.. so inviting.")

			saynn("With a sinful sway of her hips, Jacki transitions to the second pose. Her back gently curves, her ass loses some of its perceived volume.. But it's still a great butt.")

			saynn("Yet again, Jacki is panting and moaning softly as she tries to hold the pose. Eventually her neediness wins over, causing her to wiggle again, her tail wagging seductively.")

			saynn("[say=jacki]Ngh..[/say]")

		addButton("Leave", "That was enough watching", "endthescene")
		addButton("Spank", "Give that ass a sudden spank", "perv_spank")
	if(state == "perv_spank"):
		saynn("That ass is too enticing. You decide to walk up to her and deliver a firm smack that resonates through the whole gym area.")

		if (corruption < 0.5):
			saynn("Jacki gasps in surprise and breaks out of her pose. She then whips her head around until she sees you. Her eyes are flashing with pain and frustration.")

			saynn("[say=jacki]What do you think you're doing?[/say]")

			saynn("Her voice is trembling with a mixture of anger and.. something else. You offer her a devilish grin.")

			saynn("[say=pc]Couldn't resist.[/say]")

			saynn("[say=jacki]Huff.[/say]")

			addButton("Leave", "Enough spanking", "endthescene")
		else:
			saynn("Jacki moans suddenly. Which is not entirely surprising for you. But it is for her. She looks at you while trying to hide her blush.")

			saynn("[say=jacki]Hey.. What do you think you are doing..[/say]")

			saynn("Her voice is trembling with anger.. but also nervousness. You offer her a devilish grin.")

			saynn("[say=pc]That ass was just too good to pass up.[/say]")

			saynn("[say=jacki]Well suck it if you like it so much..[/say]")

			saynn("Is that.. an invitation?")

			addButton("Nah", "Enough spanking", "endthescene")
			addButton("Suck her ass", "Might as well", "perv_suckass")
	if(state == "perv_suckass"):
		playAnimation(StageScene.SexRimming, "fast", {npc="pc", pc="jacki", bodyState={exposedCrotch=true}})
		saynn("And so you suddenly pull Jacki's shorts and force your face between her fluffy buns, spreading them wide, allowing you to whip your tongue out and start licking her tailhole.")

		saynn("That was.. unexpected.. to say the least. Jacki gasps as she feels your tongue caressing her sensitive ring.")

		saynn("[say=jacki]H-hey..[/say]")

		saynn("She tries to pry you off her sweaty rear so you wrap your arms around her legs and just keep lapping away at her ass, ignoring all the eyes of others that are glued to you. They're just jealous of the treat that you have found.")

		saynn("[say=jacki]Stop licking.. that's my dirty asshole.. fuck..[/say]")

		saynn("You listen to her.. and switch from licking to sucking, pressing your mouth against her wet star and letting your lips brush against her skin in a very teasing manner. Little smooches that you deliver causes the wolfie to suddenly start squirming.")

		saynn("[say=jacki]Oh fuck..[/say]")

		saynn("It's hard to see.. but her stitched up cunt is getting wet from this. So you must be on the right track. Her paw lands on your head and keeps trying to pull you away.. but you're stronger.")

		saynn("The slut is blushing, little moans escape from her when you decide to use your tongue again, thrusting it inside and exploring there, lapping away at the inner walls of her asshole.")

		saynn("[say=jacki]Fucking asswhore.. ah..[/say]")

		saynn("At this point you're not sure who she is referring to.")

		saynn("After a few minutes of ass sucking, you decide to pull your tongue out and give that ass a final smack.")

		saynn("[say=jacki]Ah..[/say]")

		saynn("[say=pc]Slut.[/say]")

		addButton("Kiss her", "Make it even more humiliating for her", "perv_suckass_kiss")
		addButton("Enough", "That was enough lewding for one time", "endthescene")
	if(state == "perv_suckass_kiss"):
		playAnimation(StageScene.Hug, "kiss", {npc="jacki", npcBodyState={underwear=hasUnderwear}})
		saynn("You get up and suddenly initiate a kiss, forcibly pulling the wolfie close and letting your lips collide.")

		saynn("[say=jacki]H-hey!.. Mmh!..[/say]")

		saynn("You slip your tongue into her mouth and let her get a taste of her own ass. And that only makes the wolf blush even harder.")

		saynn("In the end, she manages to push you back.")

		if (anger > 0.4):
			saynn("[say=jacki]Fucking.. creep..[/say]")

		else:
			saynn("[say=jacki]Fucking.. ngh..[/say]")

		saynn("You giggle and leave her alone for now.")

		addButton("Enough", "That was enough lewding for one time", "endthescene")
	if(state == "pick_gift"):
		saynn("What do you wanna gift Jacki? She might react differently depending on her corruption and lust.")

		addButton("Never mind", "You don't wanna gift anything", "")
		addButtonWithChecks("Apple", "Gift Jacki an apple", "gift_apple", [], [[ButtonChecks.HasItemID, "appleitem"]])
		addButtonWithChecks("Energy drink", "Gift Jacki an energy drink", "gift_energydrink", [], [[ButtonChecks.HasItemID, "EnergyDrink"]])
		addButtonWithChecks("5 credits", "Gift Jacki 5 credits", "gift_5credits", [], [[ButtonChecks.HasCredits, 5]])
		addButtonWithChecks("Heat pill", "Gift Jacki a little pill", "gift_heatpill", [], [[ButtonChecks.HasItemID, "HeatPill"]])
		if (!getFlag("JackiModule.jackiReceivedHorsecockDildo")):
			addButtonWithChecks("Horsecock dildo", "Gift Jacki a whole ass dildo", "gift_horsecockdildo", [], [[ButtonChecks.HasItemID, "HorsecockDildo"]])
		if (!getModule("JackiModule").shouldWearSportsBra()):
			addButtonWithChecks("Sporty Top", "Gift Jacki a sporty top for her to wear during exercises", "gift_sportybra", [], [[ButtonChecks.HasItemID, "sportyTop"]])
		if (!getModule("JackiModule").shouldWearSportsShorts()):
			addButtonWithChecks("Sporty Briefs", "Gift Jacki some sporty shorts for her to wear during exercises", "gift_sportyshorts", [], [[ButtonChecks.HasItemID, "sportyBriefs"]])
	if(state == "gift_sportybra"):
		playAnimation(StageScene.Duo, "stand", {npc="jacki"})
		saynn("Since the wolfie likes to do exercises so much, you thought that you might as well give her some better clothing for that. Jacki gets a little surprised when you offer her a sporty top made out of some stretchy material.")

		if (anger > 0):
			saynn("[say=jacki]Huh? Is this a part of some kind of plan?[/say]")

			saynn("You shake your head and just give her the top. No strings attached.")

			saynn("[say=jacki]Well.. Thanks I guess.[/say]")

			saynn("Looks like she likes it. Maybe that will make her less mad towards you.")

		else:
			saynn("[say=jacki]Oh? Oh wow. Uh.. Do I have to pay?[/say]")

			saynn("You shake your head and just give her the top. No strings attached.")

			saynn("[say=jacki]Thank you! You're very kind.[/say]")

			saynn("Looks like she likes it.")

		if (!getModule("JackiModule").shouldWearSportsShorts()):
			saynn("Jacki would still need the sporty briefs as well if you wanna see her wear this.")

		addButton("Continue", "See what happens next", "endthescene")
	if(state == "gift_sportyshorts"):
		playAnimation(StageScene.Duo, "stand", {npc="jacki"})
		saynn("Since the wolfie likes to do exercises so much, you thought that you might as well give her some better clothing for that. Jacki gets a little surprised when you offer her some sporty briefs made out of some stretchy material.")

		if (anger > 0):
			saynn("[say=jacki]Huh? What? You think this will excuse you after everything you did?[/say]")

			saynn("You shake your head and just give her the briefs. No strings attached.")

			saynn("[say=jacki]Well.. Okay.. I guess.[/say]")

			saynn("Looks like she likes it. Maybe that will make her less mad towards you.")

		else:
			saynn("[say=jacki]Oh? Is that for me?[/say]")

			saynn("You shake your head and just give her the top. No strings attached.")

			saynn("[say=jacki]Thanks! I needed something like these.[/say]")

			saynn("Looks like she likes it.")

		if (!getModule("JackiModule").shouldWearSportsBra()):
			saynn("Jacki would still need the sporty top as well if you wanna see her wear this.")

		addButton("Continue", "See what happens next", "endthescene")
	if(state == "gift_apple"):
		playAnimation(StageScene.Duo, "stand", {npc="jacki"})
		saynn("You offer Jacki an apple as a gesture of good will.")

		if (anger > 0.0):
			saynn("[say=jacki]What is this?[/say]")

			saynn("[say=pc]Just thought you might be hungry for some vitamins.[/say]")

			saynn("She grabs it and takes a closer look.")

			saynn("[say=jacki]Is it poisoned or something?[/say]")

			saynn("You raise a brow. But then shake your head.")

			saynn("[say=jacki]I don't even know what to expect from you.[/say]")

			saynn("She rubs the apple against the cloth and then takes a careful bite. And then another. And another. The fruit seems alright.")

			saynn("[say=jacki]Well.. Thanks?[/say]")

			saynn("You nod.")

		else:
			saynn("[say=jacki]Is that for me?[/say]")

			saynn("[say=pc]Yeah. Vitamins for a sporty wolfie.[/say]")

			saynn("You hand her the apple and watch her rub it against the cloth before taking a bite with her sharp claws. And then another. Some juices flowing down her maw.")

			saynn("[say=jacki]Thankies![/say]")

			saynn("You nod.")

		addButton("Continue", "See what happens next", "endthescene")
	if(state == "gift_energydrink"):
		playAnimation(StageScene.Duo, "stand", {npc="jacki"})
		saynn("You offer Jacki an unopened energy drink of some generic brand that everyone here drinks.")

		if (anger > 0.0):
			saynn("She is looking extremely skeptical.")

			saynn("[say=jacki]Is that like a bribe? Or is there piss in there or something?[/say]")

			saynn("You shake your head and show her that the can wasn't tampered with. She carefully takes it and pops it open before sniffing the contents.")

			saynn("[say=jacki]Doesn't smell like piss..[/say]")

			saynn("She takes a refreshing gulp and sighs.")

			saynn("[say=jacki]Thanks.[/say]")

			saynn("Even though she doesn't like you, she can still appreciate a kind gesture it seems.")

		else:
			saynn("She smiles when she sees you.")

			saynn("[say=jacki]Oh, thank you! Do I have to..[/say]")

			saynn("[say=pc]Free.[/say]")

			saynn("She nods and grabs the can before opening it and taking a sip.")

			saynn("[say=jacki]Thank you. I needed that.[/say]")

			saynn("What a kind wolfie.")

		addButton("Continue", "See what happens next", "endthescene")
	if(state == "gift_5credits"):
		playAnimation(StageScene.Duo, "stand", {npc="jacki"})
		saynn("Everybody likes credits, right? You walk up to Jacki and offer her a chip that contains five of them.")

		if (corruption > 0.5):
			saynn("Jacki looks at it.. and frowns at first.")

			saynn("[say=jacki]What is this?[/say]")

			saynn("[say=pc]Credits.[/say]")

			saynn("[say=jacki]I'm not a slut.. But.. How much is there?[/say]")

			saynn("Oh. Huh. Did your little offer intrigued her?")

			saynn("[say=pc]Enough not to work for a few days in the mines.[/say]")

			saynn("She huffs and raises her chin high. But her eyes keep looking at the credits in your hand.")

			saynn("[say=jacki]Gimme.[/say]")

			addButton("Just give", "Give her the credits for no return", "gift_credits_free")
			addButtonWithChecks("Hand job", "Ask for a favor first", "gift_credits_handjob", [], [ButtonChecks.HasReachablePenis])
		elif (anger > -0.1):
			saynn("Jacki looks at it.. and then frowns."+str(" Even though you do notice a slight hesitation at first." if corruption > 0.2 else "")+"")

			saynn("[say=jacki]What is this?[/say]")

			saynn("[say=pc]Credits.[/say]")

			saynn("[say=jacki]Yeah, I'm not stupid. Is this some kind of bribe?[/say]")

			saynn("She snarls at you.")

			saynn("[say=jacki]Or are you treating me like a prostitute?[/say]")

			saynn("Well, looks like giving her credits was too obvious. Or maybe she is just not corrupted enough.")

			addButton("Continue", "See what happens next", "endthescene")
		else:
			saynn("Jacki looks at it.. and then frowns slightly."+str(" Even though you do notice a slight hesitation at first." if corruption > 0.2 else "")+"")

			saynn("[say=jacki]This kinda feels like you're trying to pay me for something.[/say]")

			saynn("You shrug while Jacki gets in a very defensive position, her arms crossed under her small chest.")

			saynn("[say=jacki]I'm not one of those purple inmates that walk around. You know? I'm not a prostitute.[/say]")

			saynn("Well, looks like Jacki is not into you being her sugar mommy/daddy.")

			addButton("Continue", "See what happens next", "endthescene")
	if(state == "gift_credits_free"):
		saynn("You give her the credits and the wolfie happily takes them. She presses the chip against the collar, transferring them to her inmate account.")

		if (corruption > 0.8):
			saynn("After that she even kisses you on the check real fast.")

		saynn("[say=jacki]But I'm not a slut, okay?[/say]")

		saynn("[say=pc]Sure~.[/say]")

		addButton("Continue", "See what happens next", "endthescene")
	if(state == "gift_credits_handjob"):
		playAnimation(StageScene.SexHandjob, "tease", {pc="pc", npc="jacki", bodyState={naked=true, hard=true}})
		saynn("Jacki leans to take the chip but your hand suddenly raises it high out of her reach. The wolfie pouts.")

		saynn("[say=jacki]Give![/say]")

		saynn("[say=pc]Not so fast. I want something back.[/say]")

		saynn("[say=jacki]What?[/say]")

		saynn("Your gaze moves down to your crotch."+str(" A crotch that has a visible bump, outlining your boner." if !GM.pc.isFullNaked() else "")+" Jacki follows your gaze.. and pouts more.")

		saynn("[say=jacki]..fine.[/say]")

		saynn("You and Jacki hide behind some tall green bushes where nobody can see you. A somewhat private spot.")

		saynn("Jacki slowly lowers herself down to her knees and awkwardly pulls your {pc.penis} out. She can't hide a slight blush from the sight.. and the situation that she has found herself in.")

		saynn("You wiggle the chip in front of her face.")

		saynn("[say=pc]Use your mouth maybe?[/say]")

		saynn("[say=jacki]No.[/say]")

		saynn("The slut still has some sense of dignity left, huh.")

		addButton("Continue", "See how Jacki treats you", "gift_credits_hj_do")
	if(state == "gift_credits_hj_do"):
		playAnimation(StageScene.SexHandjob, "sex", {pc="pc", npc="jacki", bodyState={naked=true, hard=true}})
		saynn("And so Jacki wraps her digits around the shaft of your member, getting a feel for it. She raises a brow when she senses how your heart is pumping blood through it. Your member is only getting more hard and twitchy from that grasp.")

		saynn("Jacki keeps watching it pulse as she starts stroking it with short repetitive motions. The wolfie is clearly not an expert at this.. but she is trying.")

		saynn("[say=pc]You can do better than that.[/say]")

		saynn("She frowns.. but then listens, stroking your cock a little faster, causing a drop of pre to hang off of its tip. Your smile makes her pout.")

		saynn("[say=jacki]What?..[/say]")

		saynn("[say=pc]Awfully obedient for not a slut.[/say]")

		saynn("It starts to feel good real quick. Looks like teasing the wolfie makes her more eager to prove you wrong, her paw working your dick real fast now.")

		saynn("[say=pc]NGh..[/say]")

		saynn("[say=jacki]I just want the credits. I'm not a slut.[/say]")

		saynn("[say=pc]Uh huh~. Will you agree to receive a nice facial?[/say]")

		saynn("[say=jacki]Of course not.. I still need to exercise![/say]")

		saynn("A little groan escapes your lips. Your legs are getting weaker as your cock starts twitching and throbbing more in her paw.")

		saynn("[say=pc]What if I double those creds~?[/say]")

		saynn("She instantly gets quiet. Looks like she is deliberating and just needs a little push. Just like you..")

		addButtonWithChecks("Double creds", "Give her twice as much credits and see what she will do", "gift_creds_hj_double", [], [[ButtonChecks.HasCredits, 10]])
		addButton("Just cum", "Five creds is enough", "gift_creds_hj_cum")
	if(state == "gift_creds_hj_cum"):
		playAnimation(StageScene.SexHandjob, "tease", {pc="pc", npc="jacki", bodyState={naked=true, hard=true}})
		saynn("You decide not to sweeten the deal, the girl is receiving enough already. But you also decide not to warn her.")

		saynn("And so, suddenly, strings of thick {pc.cum} get pushed out of your {pc.penis} as your orgasm takes over. Jacki gasps as she fails to dodge the first few, causing her to receive some onto her muzzle and hair.")

		saynn("[say=jacki]H-hey!..[/say]")

		saynn("Hah. Obviously she pulls away after that, avoiding the rest of your load. But it felt good either way.")

		saynn("[say=jacki]You could have told me![/say]")

		saynn("You shrug and smile.")

		saynn("[say=pc]My bad~. Catch.[/say]")

		saynn("You give the wolfie exactly zero time to react before throwing the chip at her, causing it to bounce off her snout and land into your {pc.cum} on the floor.")

		saynn("[say=pc]Oops.[/say]")

		saynn("[say=jacki]Grr-r-r..[/say]")

		saynn("You watch her deliberate for a bit. But eventually she succumbs to the greed and picks up the chip, getting some of your seed onto her paws too.")

		saynn("[say=pc]Good slut.[/say]")

		saynn("[say=jacki]Huff! Now I have to go wash..[/say]")

		saynn("[say=pc]It's not that much, it's fine~.[/say]")

		saynn("[say=jacki]You think so? Fine..[/say]")

		saynn("Jacki gets up and walks away swiftly.")

		addButton("Continue", "See what happens next", "endthescene")
	if(state == "gift_creds_hj_double"):
		playAnimation(StageScene.SexHandjob, "tease", {pc="pc", npc="jacki", bodyState={naked=true, hard=true}})
		saynn("Everything has a price. You flash Jacki the second chip of the same value. And she seems to understand everything without you saying anything.")

		saynn("Why? Because she positions herself right in front of your cock and raises her chin high while closing her eyes. All the while her paw keeps stroking you more and more.. Until the orgasm takes over.")

		saynn("Strings of your thick {pc.cum} begin landing on Jacki's face.. and she welcomes them with a strong posture, allowing your load to leave a sticky mess on her muzzle. You grunt softly as you watch her receive it all like a champ.")

		saynn("[say=pc]Good little slut.[/say]")

		saynn("Some of it lands on her shoulders and clothing of course. And now she can't even open her eyes or mouth either.")

		saynn("[say=jacki]Huff..[/say]")

		saynn("You drop the two credit chips in front of her, causing her to start searching for them blindly.")

		saynn("[say=pc]Thank you. You can always just wipe it with your paws.[/say]")

		saynn("She huffs again. And just like that, you leave her be.")

		addButton("Continue", "See what happens next", "endthescene")
	if(state == "gift_heatpill"):
		playAnimation(StageScene.Duo, "stand", {npc="jacki"})
		saynn("A pill can fix a lot of problems. So you decide to give Jacki one that would make all her current problems seem silly.")

		if (corruption <= 0.5):
			saynn("[say=jacki]Huh?[/say]")

			saynn("She grabs the pill and looks at it.")

			saynn("[say=jacki]What is it for?[/say]")

			saynn("[say=pc]Can't tell. Just try it.[/say]")

			saynn("Jacki tilts her head slightly. And then gives you the unknown pill back.")

			saynn("[say=jacki]I'm not a test subject. Please don't use me to test your drugs.[/say]")

			saynn("That's fair. Seems like she won't eat it willingly in her current state. Oh well.")

			addButton("Continue", "See what happens next", "endthescene")
		else:
			saynn("[say=jacki]Umm..[/say]")

			saynn("She grabs the pill and looks at it.")

			saynn("[say=jacki]What is it for?[/say]")

			saynn("[say=pc]Can't tell. Just try it.[/say]")

			saynn("Jacki tilts her head slightly while looking at you.")

			saynn("[say=jacki]Ah, what the hell, why not.[/say]")

			saynn("And then throw the pill into her mouth.")

			saynn("Nothing is different at first. But as the drug starts circulating in her bloodflood, the wolfie suddenly starts to act a little differently. She feels a need to start rubbing her body against yours while a little soft moan escapes her lips.")

			saynn("[say=jacki]Thankies~.[/say]")

			saynn("Looks like it worked. Maybe she is going to be more eager now.")

			addButton("Continue", "See what happens next", "endthescene")
	if(state == "gift_horsecockdildo"):
		playAnimation(StageScene.Duo, "stand", {npc="jacki"})
		saynn("Go big or go home. You offer Jacki a giant horsecock dildo.")

		if (corruption > 0.5 || lust > 0.5):
			saynn("Her eyes go wide.")

			saynn("[say=jacki]Wow.. Why is it so fucking big.[/say]")

			saynn("Huh? Her answer is a bit different from what you would expect from a kind shy wolfie.")

			saynn("[say=pc]It's a gift. Do you want it?[/say]")

			saynn("She blushes deeply as you catch her blatantly staring at it, drooling even.")

			saynn("[say=jacki]Uhm.. Why would I? But you can leave it here on the floor if you don't need it.. Maybe somebody would like to have such a big flared horsecock shoved up their dirty asshole..[/say]")

			saynn("Wow. You decide not to argue any further and just place the toy on the floor tiles.")

			saynn("Jacki stands on the mat and pretends to do some exercises while looking high at the ceiling. But as soon as you leave the space, you hear someone's rear paws sprinting away.")

			saynn("When you turn around.. there is no toy anymore. Or Jacki. She only returns a few minutes later and pretends like nothing has happened.")

			addButton("Continue", "See what happens next", "endthescene")
		else:
			saynn("Her eyes instantly go wide.")

			saynn("[say=jacki]Wha.. The fuck?[/say]")

			saynn("[say=pc]It's a gift.[/say]")

			saynn("She blushes while looking at that giant girthy shaft with a flared tip. But then shakes her head.")

			saynn("[say=jacki]Listen. I appreciate the gesture. But I'm not that desperate. You know?[/say]")

			saynn("Not yet she isn't.")

			addButton("Continue", "See what happens next", "endthescene")
	if(state == "kind_watch"):
		saynn("You ask Jacki if you can just watch her do yoga.")

		if (lust < 0.2 || RNG.chance(25)):
			playAnimation(StageScene.Yoga, "camel", {pc="jacki"})
			saynn("[say=jacki]Oh. Uh. Sure. Why not. I'm not the best at it.[/say]")

			saynn("You sit on the nearest bench and watch Jacki go through a series of yoga poses.")

			saynn("The last one interests you the most. Her lithe body gracefully arches backwards, her paws reaching for her legs. The way she stretches is quite captivating.")

			saynn("[say=pc]Oh, I think you're pretty good.[/say]")

			saynn("[say=jacki]You think so?.. Ah..[/say]")

			saynn("The wolfie starts to pant softly the longer she holds this pose. So strong. And yet. So vulnerable.")

			saynn("She keeps standing like this for some time, blushing when your gazes collide. As Jacki finally eases out of this camel pose, her breathing makes her chest rise and fall. A modest and yet still feminine chest.")

			saynn("[say=jacki]Thanks for watching.. wruff..[/say]")

			saynn("You just chuckle.")

		elif (lust < 0.5 || RNG.chance(25)):
			playAnimation(StageScene.Yoga, "dog", {pc="jacki"})
			saynn("[say=jacki]Of course~. I like when you watch me, wruff.[/say]")

			saynn("You sit on the nearest bench and watch the wolfie go through a series of yoga poses, warming up on simple ones before proceeding to do one special one.")

			saynn("This time she decides to put the most focus on the pose called 'downward-facing dog'. Her hips rise high into the air while her hands are pressed firmly into the mat. She maintains this pose, the curves of her fit butt full on display, while gazing towards the ground.")

			saynn("[say=pc]Very nice.[/say]")

			saynn("[say=jacki]Thanks.. ah..[/say]")

			saynn("While stretching all her limbs out like that, she can't help but to produce a soft moan. And that, combined with sticking her butt out so provocatively, makes her all blushy.")

			saynn("As Jacki finally eases out of this camel pose, her breathing makes her chest rise and fall. A modest and yet still feminine chest.")

			saynn("[say=jacki]Well. Hope you liked the view, wruff.[/say]")

			saynn("You smile and nod.")

		else:
			playAnimation(StageScene.Yoga, "catcow", {pc="jacki", bodyState={underwear=hasUnderwear}})
			saynn("[say=jacki]I thought you would never ask, wruff~.[/say]")

			saynn("You take a comfortable seat, watching Jacki begin her yoga practice.")

			saynn("She starts with some basic yoga poses, moving gracefully through her routine, starting off with simple stretching and ending at something quite.. lewd.")

			saynn("Jacki stands on all fours and then bends her back low while sticking her butt provocatively, emphasizing the curves of her rear. Even her fluffy tail moves out of the way to let you see her pinched clothing hugging her crotch tightly.")

			saynn("After that she bends her back in the other direction, arching it instead, completing the cat-cow pose. Little moans occasionally escape from her as she moves from one pose to another.")

			saynn("[say=jacki]Always makes me feel like I'm in heat..[/say]")

			saynn("A bold statement. But a welcomed one.")

			saynn("[say=pc]You're doing great.[/say]")

			saynn("[say=jacki]Wruff~.[/say]")

		addButton("Enough", "That was cute", "endthescene")
		if (anger < -0.3):
			addButton("Yoga together", "Ask to do some exercises together", "kind_yoga_together")
		else:
			addDisabledButton("Yoga together", "Jacki needs to trust you more")
		if (anger < -0.5):
			addButton("Offer massage", "Offer Jacki a massage to relax her muscles", "kind_massage")
		else:
			addDisabledButton("Offer massage", "Jacki needs to trust you more")
	if(state == "kind_yoga_together"):
		playAnimation(StageScene.Solo, "allfours")
		saynn("A little cute idea comes into your mind.")

		saynn("[say=pc]Can we do something together?[/say]")

		if (lust > 0.7):
			saynn("[say=jacki]We can do many things together, wruff~.[/say]")

			saynn("The wolfie is quite horny, huh.")

			saynn("[say=pc]I mean.. yoga.[/say]")

			saynn("[say=jacki]Oh. Sure.[/say]")

		else:
			saynn("[say=jacki]Sure. I can show you a few poses.[/say]")

		saynn("Her eyes light up. Jacki invites you to the middle of the mat and shows you a few simple exercises that warm up your muscles.")

		saynn("[say=jacki]Let's do the cat-cow. Get on all fours.[/say]")

		saynn("A bit kinky to hear that from her. But you obey, planting your hands and knees onto the soft mat. Jacki helps you, positioning your neck and limbs to avoid any possible overstretching.")

		saynn("[say=jacki]Imagine a hissy cat. They stick their backs up.[/say]")

		saynn("You do just that. Jacki angles your head so you would be looking down.")

		saynn("[say=jacki]Great, wruff~. Now imagine a cow who wants to moo very loudly. Lower your belly as low as you can and have your chin high.[/say]")

		saynn("She is being very helpful. Makes you wonder how far she would go.")

		addButton("Try your best", "Do the pose as best as you can", "kind_yoga_togehter_try")
		addButton("Slack purposefully", "Do it badly so Jacki has to help you more", "kind_yoga_togehter_slack")
	if(state == "kind_yoga_togehter_try"):
		playAnimation(StageScene.Yoga, "catcow")
		saynn("You do your best to follow the instructions, slowly transitioning from one pose to another and back, making sure to arch your back and move your head when needed.")

		saynn("[say=jacki]Aw. Very good![/say]")

		saynn("And looks like you are doing it correctly. Jacki only occasionally fixes your posture.")

		saynn("It's exhausting.. but strangely liberating. You feel better now.")

		saynn("[say=pc]Thanks.[/say]")

		saynn("You're panting by the end of it. Jacki smiles kindly.")

		saynn("[say=jacki]You're welcome.[/say]")

		saynn("Nothing about this training session was lewd. But maybe it doesn't have to be?")

		addButton("Continue", "That was nice", "endthescene")
	if(state == "kind_yoga_togehter_slack"):
		playAnimation(StageScene.ButtStack, "idle", {pc="pc", npc="jacki"})
		saynn("You follow her instructions.. but not quite exactly. You don't bend and arch your back enough no matter how much Jacki points it out.")

		saynn("At some point the wolfie gets too tired of you failing it.")

		saynn("[say=jacki]Huff.. It's very easy. Let me show.[/say]")

		saynn("She suddenly stands on top of you, lowering herself onto your back while still being on all fours.")

		saynn("[say=jacki]Let's bend very low.[/say]")

		if (lust < 0.5 && corruption < 0.5):
			saynn("Jacki guides your movement, her form brushing against yours as she helps you get into the 'cow' pose. The friction of your bodies rubbing against each other creates a little intimate feeling.. A feeling that becomes evident to Jacki a bit too late.")

			saynn("[say=jacki]Oh. Um..[/say]")

			saynn("When she realizes how kinky it must look from the side, Jacki gets off you and clears her throat while blushing softly.")

			saynn("[say=jacki]You're doing good.. much better now.. yeah..[/say]")

			saynn("You can tell everything just by her voice.")

			saynn("[say=pc]You mounting me helped, thank you~.[/say]")

			saynn("That's when Jacki's face goes fully red.")

		else:
			saynn("Jacki guides your movement, her form brushing against yours as she helps you get into the 'cow' pose. The friction of your bodies rubbing against each other creates a little intimate feeling.. A feeling that both of you seem to welcome.")

			saynn("[say=jacki]Very good.. wruff..[/say]")

			saynn("Even though this is probably looking quite.. kinky.. from the side.. Jacki continues to guide you into the right pose with her own body.")

			saynn("[say=jacki]Sometimes a good mounting can fix everything..[/say]")

			saynn("She isn't even trying to hide it, is she. You can feel her subtly humping you, her crotch spreading the lewd scent coming from her constrained desperate flower to you.")

			saynn("[say=jacki]There we go..[/say]")

			saynn("Both of you pant softly while remaining intertwined in this.. weird kind of embrace.. for a while longer.")

			saynn("[say=pc]Thank you, wolfie.[/say]")

			saynn("She licks your ear and gets off you.")

		addButton("Continue", "That was lewd", "endthescene")
	if(state == "kind_massage"):
		playAnimation(StageScene.Massage, "back", {npc="jacki"})
		saynn("After that yoga practice session the wolfie is probably feeling tensed up. So you decide to offer some help.")

		saynn("[say=pc]Would you want a little massage, Jacki? To help you relax.[/say]")

		saynn("[say=jacki]Oh.. That actually sounds kinda nice.[/say]")

		saynn("There aren't really any spots for that.. so you just help her lie down on the mat. Then you kneel nearby and put your hands on her back.")

		saynn("You begin simple, kneading the tension away from her shoulders and then doing the same to her shoulder plates and the back muscles.")

		saynn("[say=jacki]You can be.. a little harder if you want.[/say]")

		saynn("She likes it a little rougher huh? You listen to her and put a little more pressure into your massage.")

		saynn("Jacki sighs in pleasure enjoying the sensations of your strong hands working their magic on her tense muscles. After dealing with the shoulders, your hands slide lower to her waist, your fingers lightly grazing her sides, your thumbs tracing the contours of her spine.")

		saynn("[say=jacki]That feels good..[/say]")

		saynn("Hm. Kneading her there has an opposite effect of growing the tension instead. The good kind of tension. It's like Jacki has a lot of.. sensual energy.. that is stored deep within her.")

		saynn("She arches her back slightly as a quiet moan escapes her lips.. an invitation for you to explore further.")

		saynn("Your hands continue to wander, gradually sliding lower and lower across her curves until you begin to knead and caress her firm rear. That wiggly tail moves out of the way, giving you full access to her butt.")

		saynn("[say=jacki]Wruff..[/say]")

		saynn("You can feel.. heat.. radiating from her crotch. But you don't dare to go there.. just caressing her thighs instead, sometimes rubbing their inner side too. More little moans can be heard as you are nearing the end of that sensual massage.")

		saynn("[say=pc]Did you like it, wolfie?[/say]")

		saynn("[say=jacki]Yeah.. that feels really good..[/say]")

		addButton("Continue", "That was lewd", "endthescene")
		addButtonWithChecks("Forced anal fuck", "Betray Jacki and have have rough sex with her right there", "kind_massage_forcedfuck", [], [ButtonChecks.HasReachablePenis])
		addButton("Forced fisting", "Betray Jacki and fist her ass right there", "kind_massage_forcedfisting")
	if(state == "kind_massage_forcedfuck"):
		playAnimation(StageScene.SexBehind, "fast", {npc="jacki", bodyState={naked=true, hard=true}, npcBodyState={exposedCrotch=true}})
		saynn("Since the wolfie is not suspecting anything.. Now is the perfect time to strike.")

		saynn("With a sudden, forceful movement, you pin Jacki against the mat, pushing one hand into her back while the second is already pulling her shorts down. She yelps and instinctively arches her back, trying to look behind her as you already expose her ass. She realizes your evil intentions way too late.")

		saynn("[say=jacki]What are you![/say]")

		saynn("[say=pc]Shut up, whore.[/say]")

		saynn("The bitch still has her cunt stitched up and hidden behind a rich red bush of pubic hair so you opt to go for her other hole.. her dirty asshole that seems to be {jackiButt}."+str(" Which gives you a good reason to stretch that ring more." if buttScore < 5 else " Which makes you wonder why is that buttslut even resisting.")+"")

		saynn("[say=jacki]Somebody! Help![/say]")

		saynn("You expose your {pc.penis} after pulling Jacki's shorts down and then use that free hand to force her muzzle into the floor, muffling her calls for help. All the while you give every wanna-be hero an evil glance.. which seems to calm them down. While other hungry eyes are watching you with great interest.")

		saynn("After that, you quickly align yourself with her ass.. before forcing yourself inside, your cock violating her ass and stretching her anal star painfully wide, forcing a moan of discomfort out of the wolfie.")

		if (buttScore < 5):
			saynn("[say=pc]Ngh. What a tight bitch.[/say]")

		else:
			saynn("[say=pc]How many horsecocks can fit in there? More than one it feels.[/say]")

		saynn("And so you start fucking her at a furious pace, your hips slapping against her fluffy buttchecks as you shove your dick in and out. This raw brutal act causes Jacki to squirm and resist out of desperation, her moans and gasps turning into pleas for mercy. The amount of roughness that you apply while pounding her ass makes her start sobbing.")

		saynn("[say=jacki]Stop.. please!..[/say]")

		saynn("It was so-o-o worth it to pretend to be her friend for some time. The slut is clenching so hard that you can't keep yourself from grunting. Betrayal? Pff. You're just turning Jacki into who she is supposed to be.. a cock-addicted slut.")

		saynn("[say=pc]Keep clenching whore, I'm close.[/say]")

		saynn("Her asshole isn't exactly lubed which leads to some wear and tear.. but who cares when you are having such a good time. If she doesn't like it.. why is her ass practically sucking your cock in?")

		addButton("Cum inside", "Give that slut what she deserves", "kind_massage_forcedfuck_cum")
	if(state == "kind_massage_forcedfuck_cum"):
		playAnimation(StageScene.SexBehind, "inside", {npc="jacki", bodyState={naked=true, hard=true}, npcBodyState={exposedCrotch=true}})
		saynn("After a few last rough thrusts, that clenching ass easily pushes you over the edge. Jacki's body quivers under you as you shove your throbbing {pc.penis} deep inside and start flooding her guts full of your sticky {pc.cum}.")

		saynn("When the orgasm is over, you pull out and stop pinning the wolfie. And she is just.. sobbing.. while her used {jackiButt} asshole is leaking your seed. All the accumulated trust.. shattered.. her body bruised.")

		saynn("[say=jacki]H-huff..[/say]")

		saynn("[say=pc]You're nothing but a buttslut.[/say]")

		saynn("But not all is bad. Maybe now she will understand her real place in this prison.")

		saynn("You give her some rest.")

		addButton("Continue", "See what happens next", "endthescene")
	if(state == "kind_massage_forcedfisting"):
		playAnimation(StageScene.SexFisting, "sex", {npc="jacki", bodyState={naked=true, hard=true}, npcBodyState={exposedCrotch=true}})
		saynn("Since the wolfie is not suspecting anything.. Now is the perfect time to strike.")

		saynn("With a sudden, forceful movement, you pin Jacki against the mat, pushing one hand into her back while the second is already pulling her shorts down. She yelps and instinctively arches her back, trying to look behind her as you already expose her ass. She realizes your evil intentions way too late.")

		saynn("[say=jacki]What are you![/say]")

		saynn("[say=pc]Shut up, whore.[/say]")

		saynn("The bitch still has her cunt stitched up and hidden behind a rich red bush of pubic hair so you opt to go for her other hole.. her dirty asshole that seems to be {jackiButt}."+str(" Which gives you a good reason to stretch that ring more." if buttScore < 5 else " Which makes you wonder why is that buttslut even resisting.")+"")

		saynn("[say=jacki]Somebody! Help![/say]")

		saynn("You didn't even do anything yet! What a whiny bitch. But it's about time. Inmates around are watching.. but one stern glance is enough to scare away any wanna-be heroes.")

		saynn("You start by prodding her asshole with a few digits. She is clenching tightly.. but you are stronger, violating her ass with three fingers at once, stretching her sorry hole somewhat wide. The wolfie surely doesn't like that, she is squirming like hell.")

		saynn("[say=jacki]Nghh!..[/say]")

		saynn("[say=pc]Quit resisting, bitch.[/say]")

		saynn("A few firm spanks makes the girl whine and sob.. but also not move as much. Which lets you start working her ass out and adding another digit.. and then another.. until your whole palm is now forcibly going into Jacki's ass.")

		saynn("[say=jacki]T-too much..[/say]")

		saynn("It was too much indeed, Jacki's asshole looks stretched comically wide. At the same time you also notice a little wet spot appearing on the mat underneath, creating from juices that drip from her stitched up cunt. Bitch might actually be enjoying it.")

		saynn("Which is why you start moving your hand in and out, fisting that wolfie's firm butt, leaving it pretty much empty before stuffing it full seconds later.")

		saynn("Jacki huffs and whines louder, her asshole struggling to keep up with your onslaught.")

		saynn("[say=pc]Too much? I think it's just right for a buttslut like you.[/say]")

		saynn("The most you pound her ass, the closer she gets to something.. her inner walls gripping your fist so well..")

		addButton("Forced orgasm", "See what happens next", "kind_massage_forcedfisting_cum")
	if(state == "kind_massage_forcedfisting_cum"):
		playAnimation(StageScene.SexFisting, "tease", {npc="jacki", bodyState={naked=true, hard=true}, npcBodyState={exposedCrotch=true}})
		saynn("Suddenly, Jacki starts arching her back and crying out loudly as her stretched asshole is pulsing around your hand. You're not sure if this is an orgasm.. or something caused by you overstimulating her.. but it's sure a welcomed addition.")

		saynn("When that is over, you pull your fist out and stop pinning the wolfie. While she is just.. sobbing.. her {jackiButt} asshole is struggling to close completely. All the accumulated trust.. shattered.. her body bruised.")

		saynn("[say=jacki]H-huff..[/say]")

		saynn("[say=pc]You're nothing but a buttslut.[/say]")

		saynn("But not all is bad. Maybe now she will understand her real place in this prison.")

		saynn("You give her some rest.")

		addButton("Continue", "See what happens next", "endthescene")
	if(state == "kind_jog"):
		playAnimation(StageScene.Duo, "stand", {npc="jacki"})
		saynn("Being in a prison does limit your range of available activities a lot. But luckily jogging is something that doesn't require much, just some empty space.")

		saynn("[say=pc]Wonder if you would like to jog together?[/say]")

		saynn("[say=jacki]Oh. Sure.[/say]")

		saynn("Jacki gets up from the mat and invites you to follow her to her usual route.")

		addButton("Jog", "Jog with Jacki", "jog_do")
	if(state == "jog_do"):
		aimCameraAndSetLocName("yard_eastCorridor")
		playAnimation(StageScene.Duo, "jog", {npc="jacki", npcAction="jog", flipNPC=true})
		saynn("And so you two begin jogging around the only green area of the prison. The air here is nice and fresh.")

		saynn("Jacki leads the way so you just jog behind her. You run past some rocks and even trees.")

		saynn("The more the wolfie jogs, the more you begin to notice something. She is panting way more than you would expect her to do. The fabric of her clothes rubbing against her sensitive spots might be the reason..")

		saynn("Since you're not jogging that fast, you can also try to chat.")

		addButton("This is nice", "Say this", "jog_chat_nice")
		addButton("Why is she here", "Ask how Jacki has ended up here", "jog_chat_whyprison")
		addButton("Chastity piercings", "Ask Jacki about her chastity piercings", "jog_chat_chastitypiercings")
	if(state == "jog_chat_nice"):
		saynn("[say=pc]This is nice, isn't it?[/say]")

		saynn("[say=jacki]Yeah, it is.. wruff.. I like that I get to do this.[/say]")

		saynn("You jog past some little artificial waterfall. The sound of running water helps calm you both down.")

		saynn("[say=jacki]This prison has been growing on me. As sad as that might sound.[/say]")

		saynn("[say=pc]What about the fact that you got put into stocks?[/say]")

		saynn("[say=jacki]Eh, it was kinda kinky.[/say]")

		saynn("Huh.")

		addButton("Continue", "See what happens next", "jog_afterchat")
	if(state == "jog_chat_whyprison"):
		saynn("[say=pc]How did you end up here, Jacki? What crime did you do?[/say]")

		saynn("[say=jacki]Me? I didn't do anything. I like to think that I'm a friendly person.[/say]")

		saynn("A kind friendly innocent wolfie huh.")

		saynn("[say=pc]So why did AlphaCorp decide to send you into the middle of nowhere?[/say]")

		saynn("She stops for a second to think. And then just shrugs and continues jogging.")

		saynn("[say=jacki]Dunno. One day I wake up and there were photos on my bed of me fucking with some old guy. He had a white uniform. I honestly never saw him even once in my life.[/say]")

		saynn("You think to yourself.. could be drugs.. could be image manipulation.. or maybe she actually did it.")

		saynn("[say=jacki]There also was a note. It told me to come to a certain place alone or these would be posted everywhere.[/say]")

		saynn("[say=pc]Sounds like someone was trying to blackmail you. Did you do it?[/say]")

		saynn("[say=jacki]Nah, I just went to the police. But when they saw the photos.. It made me wish that I did.[/say]")

		saynn("[say=pc]Why?[/say]")

		saynn("[say=jacki]I got charged with.. don't remember exactly.. I think it was.. unsolicited breeding.. or something like that. I obviously never did that.[/say]")

		saynn("Breeding is illegal now? Looks like somebody just wanted to earn an extra star. Makes sense why she is here then and not in a normal prison.")

		saynn("[say=pc]I see.[/say]")

		saynn("[say=jacki]I'm not even that special.[/say]")

		addButton("Continue", "See what happens next", "jog_afterchat")
	if(state == "jog_chat_chastitypiercings"):
		saynn("[say=pc]Couldn't help but to notice your unique piercings. Why do you have them?[/say]")

		saynn("[say=jacki]It's a long story..[/say]")

		saynn("You can try to ask to hear it. But obviously that story is not gonna be the prettiest..")

		addButton("Listen to story", "(Genital torture) Ask Jacki to tell you what happened", "jog_chat_asklistenfull")
		addButton("Short version", "You're fine with a story without much details", "jog_chat_asklistenshort")
	if(state == "jog_chat_asklistenfull"):
		saynn("[say=pc]I wanna hear it. The whole story.[/say]")

		if (anger > -0.8):
			saynn("[say=jacki]Sorry. It's also kinda intimate, you know?[/say]")

			saynn("Looks like Jacki doesn't trust you enough yet.")

			addButton("Continue", "See what happens next", "jog_afterchat")
		else:
			playAnimation(StageScene.Duo, "sit", {npc="jacki", npcAction="sit"})
			saynn("Jacki stops near the closest bench and sits down.")

			saynn("[say=jacki]Okay. I think I trust you enough to share it.[/say]")

			saynn("You approach her and sit near. All the while Jacki is gathering courage.")

			saynn("[say=jacki]It happened during my intake. There was a doctor..[/say]")

			saynn("You can't help but to get immersed in her story immediately..")

			addButton("See it", "See it with your own eyes", "jacki_piercing_story_start")
	if(state == "jog_chat_asklistenshort"):
		saynn("[say=pc]You don't have to tell me everything. Just a.. short version is fine.[/say]")

		if (anger > -0.8):
			saynn("[say=jacki]Sorry. It's also kinda intimate, you know?[/say]")

			saynn("Looks like Jacki doesn't trust you enough yet.")

			addButton("Continue", "See what happens next", "jog_afterchat")
		else:
			saynn("Jacki stops for a second and turns towards you.")

			saynn("[say=jacki]I think I can tell you.[/say]")

			saynn("She looks down at her body.")

			saynn("[say=jacki]Some doctor chose me for some program.. Something about.. obedience training? She was kinda mean. And so I returned the favor.[/say]")

			saynn("[say=pc]Did she choose you randomly?[/say]")

			saynn("[say=jacki]I don't know. She wanted to inject me with something. Said it against STDs? I wasn't planning on fucking here with anyone, you know? I made that very clear.[/say]")

			saynn("Jacki looks away for a second.")

			saynn("[say=jacki]She said that my plans are not gonna last long. And then she stitched my pussy with those piercings.. even added a fancy little bell on a chain.[/say]")

			saynn("[say=pc]I see.[/say]")

			if (lust > 0.5):
				saynn("[say=jacki]She was right.. You can't imagine how much I wanna be.. Anyway..[/say]")

			else:
				saynn("[say=jacki]So far it feels like she might be right.. Anyway..[/say]")

			saynn("Makes you wonder how chastity can make someone eager to be fucked?")

			saynn("After sharing that little story, she gets up and returns to jogging.")

			addButton("Continue", "See what happens next", "jog_afterchat")
	if(state == "jacki_piercing_story_start"):
		addCharacter("eliza")
		playAnimation(StageScene.Duo, "stand", {pc="jacki", npc="eliza"})
		aimCameraAndSetLocName("intro_medicalarea")
		saynn("Chained up Jacki follows the arrows on the floor that direct her towards the special little medical area. Closed drawers, lots of lights, sterile white wall and floor materials, a medical table.")

		saynn("Inside she also finds a doctor, a new face for her. The loud clang of chains made that doctor aware of the inmate long ago before the wolfie even stepped into the area.")

		saynn("[say=jacki]Um.. Hi?[/say]")

		saynn("[say=eliza]You can call me Doctor Quinn. Take a seat, patient.[/say]")

		addButton("Sit down", "Might as well obey", "jacki_piercing_story_sit")
	if(state == "jacki_piercing_story_sit"):
		playAnimation(StageScene.Duo, "sit", {pc="jacki", npc="eliza"})
		saynn("Jacki awkwardly climbs onto the special sturdy-looking table and sits on it.")

		saynn("[say=eliza]First, a quick visual check.[/say]")

		saynn("Doctor grabs a penlight and shines it into the wolfie's eyes, testing her reflexes. Then she checks the girl's fangs to make sure they're not too sharp. She quickly trims her claws too.")

		saynn("[say=eliza]Mhm. Now.. I have runned out of Spacecillin pills so an injection will have to do.[/say]")

		saynn("[say=jacki]Huh?[/say]")

		saynn("Doctor quickly puts on some white latex gloves and grabs a syringe full of some white drug. Jacki leans away when that sharp needle moves closer and closer to her.")

		saynn("[say=jacki]I don't like drugs. What is it?[/say]")

		saynn("The feline sighs, her free paw sneakily reaches for a shock remote already.")

		saynn("[say=eliza]Very strong antibiotics. Works against most current STDs.[/say]")

		saynn("That only confuses the wolfie more.. and makes her avoid the needle harder.")

		saynn("[say=jacki]STDs? Why would I need protection against STDs in a prison? Most of them are transferred through sexual acts.[/say]")

		saynn("Doctor tilts her head and looks at Jacki with very mean strict eyes.")

		saynn("[say=eliza]And you think you won't have any?[/say]")

		saynn("[say=jacki]Yes, obviously I don't plan to fuck with anyone here. Um.. What kind of prison is this?! Get that syringe away from me![/say]")

		saynn("Doctor's mean eyes don't go away.. But the little smile is added on top.")

		saynn("[say=eliza]Your plans will have to change.[/say]")

		saynn("The feline gets tired of arguing with the wolfie.. and suddenly presses a button that sends a powerful shock through Jacki's collar.")

		saynn("[say=jacki]ARGH!!..[/say]")

		saynn("Poor wolfie cries out from extreme pain before collapsing and losing consciousness..")

		addButton("Continue", "See what happens to the wolfie next", "jacki_piercing_story_table")
	if(state == "jacki_piercing_story_table"):
		playAnimation(StageScene.BDSMMachineFuck, "tease", {pc="jacki", bodyState={naked=true}, noDildos=true})
		saynn("As Jacki opens her eyes.. She realizes that she is now lying on the table, her arms and legs firmly held by some mechanical arms that also keep her whole body still.")

		saynn("All of the muscles hurt..")

		saynn("[say=jacki]What the..[/say]")

		saynn("Jacki also realizes that she is completely naked, her small tits, pussy and ass are all on display. Doctor Quinn is standing nearby.. with an empty used syringe. The feline disposes of it.")

		saynn("[say=eliza]Things go so much smoother when you use a little bit of force.[/say]")

		saynn("[say=jacki]You.. bitch..[/say]")

		saynn("[say=eliza]What? I don't make the rules. You will get fucked in here, trust me. Maybe you will even become someone's favorite slut. That's just how this place works. Don't blame me for that.[/say]")

		saynn("[say=jacki]I am not fucking with anyone here..[/say]")

		saynn("Doctor grabs her datapad and pulls up some records.")

		saynn("[say=eliza]Wait. Shouldn't you be a lilac? Your recorded crime is.. Unsolicited breeding with AlphaCorp's official. Wow. How many pups did you make already?[/say]")

		saynn("AlphaCorp?")

		saynn("[say=jacki]I never! I got blackmailed, okay? I am innocent![/say]")

		saynn("[say=eliza]I see. Obviously you are~. Hm.. I think I can help you.. let's try something interesting.. Yes-s..[/say]")

		saynn("Doctor Quinn goes ahead and searches through some drawers until she finds some.. tools.")

		saynn("[say=jacki]What are you gonna do?[/say]")

		saynn("The feline presents Jacki something that looks like a.. piercing gun.. and a bunch of little metal rings. Just looking at all that makes the wolfie shiver.")

		saynn("[say=eliza]I enrolled you into the obedience training research program. I usually do it for male bits.. but we can try female ones too, right~?[/say]")

		saynn("The tone of her voice.. It doesn't mean anything good for Jacki.")

		saynn("[say=jacki]What the hell are you talking about?[/say]")

		saynn("[say=eliza]I'm just helping you~.[/say]")

		saynn("She pressed some button on the table.. that caused the mechanical arms to forcibly spread Jacki's legs further, giving the doctor full access to her unshaved crotch..")

		saynn("The feline starts leaning in closer and closer, that piercing tool is being brought closer and closer to the exposed pussy..")

		saynn("[say=jacki]H-hey.. No.. wait![/say]")

		saynn("Doctor Quinn isn't a monster obviously.. She takes some time to disinfect the area with some alcohol wipes first.. before using her free paw to bring the girl's pussy lips together.. pressing the tool against the sensitive flesh.. and then pulling the trigger..")

		addButton("Continue", "Ow", "jacki_piercing_story_piercings")
	if(state == "jacki_piercing_story_piercings"):
		playAnimation(StageScene.BDSMMachineFuck, "wand", {pc="jacki", bodyState={naked=true}, noDildos=true})
		saynn("Jacki yelps loudly as the tool pierces both her labias and also inserts a little metal ring through the two new holes at the same time..")

		saynn("[say=jacki]Argh! What the fuck are you doing?![/say]")

		saynn("[say=eliza]What does it feel like~?[/say]")

		saynn("Doctor Quinn moves the tool a little higher.. and presses the trigger again, causing it to pierce through the two layers of sensitive flesh yet again before inserting another metal ring that connects them both.")

		saynn("[say=jacki]Gh-h.. Like you're ripping my cunt out!..[/say]")

		saynn("[say=eliza]Hah. Nah. You didn't want to be fucked right? I'm helping you~.[/say]")

		saynn("She repeats her action.. making another two new holes in Jacki's labias and forcing them closed with a little ring.")

		saynn("[say=jacki]Ugh.. Helping me how exactly?![/say]")

		saynn("[say=eliza]By stitching your little pussy up permanently~. Much better than those bulky chastity belts~. And sexier too.[/say]")

		saynn("Permanently!? The pain becomes worse and worse.. It feels like Jacki's pussy is burning.. And yet, Doctor Quinn keeps stitching it up with more of those rings.. until her pussy looks like an.. extremely virgin slit.. but with extra fancy piercings.")

		saynn("[say=jacki]Fuck me-e-e.. It hurts..[/say]")

		saynn("[say=eliza]It does? Good. You always could have just done what I wanted. You would have kept your cunt then. But this is more fun arguably.[/say]")

		saynn("Jacki pants heavily.. resisting those mechanical arms is impossible.. She is forced to endure it..")

		saynn("[say=eliza]See? Now you won't ever be fucked~. Well, vaginally. That pussy is now reserved exclusively for that AlphaCorp higher-up~.[/say]")

		saynn("[say=jacki]F-fuck.. y-you..[/say]")

		saynn("[say=eliza]Oh? You want more? I can do more~.[/say]")

		saynn("Jacki's eyes turn big.. The pain near her crotch region makes her whine constantly.. her pussy looking extremely irritated. And yet, the doctor goes ahead and presses the tool against the girl's sensitive clit.")

		saynn("Ow.. One second later.. And Jacki arches her back before letting out a gut-wrenching scream.. Her poor tortured pussy starts pulsing and even squirting juices onto the table.")

		saynn("[say=eliza]Ohh~. Are you orgasming from pain? Fascinating~.[/say]")

		saynn("And now, Jacki's clit has a ring going through it too. Doctor Quinn tugs on it, causing the exhausted wolfie to squirm more.")

		saynn("[say=jacki]W-Why..[/say]")

		saynn("[say=eliza]Why do we do anything? To become happy. Seeing this.. makes me happy~.[/say]")

		saynn("The feline goes ahead and attaches a little bell on a chain to her clit ring.. before also plugging the little urethra hole with a very small dildo-like object.. something that would normally make Jacki gasp.. but for now she doesn't even care.")

		saynn("[say=eliza]Aw. Don't look so sad. I'm sure you will be happy too. When you decide to start fucking~. Too bad you will have to use your other holes now.[/say]")

		saynn("Jacki is so exhausted.. her vision starts turning darker and darker.. until the world fades away..")

		addButton("End of story", "That was intense", "jacki_piercing_story_end")
	if(state == "jacki_piercing_story_end"):
		removeCharacter("eliza")
		playAnimation(StageScene.Duo, "sit", {npc="jacki", npcAction="sit"})
		aimCameraAndSetLocName("yard_eastCorridor")
		GM.pc.setLocation("yard_eastCorridor")
		saynn("[say=jacki]So yeah. That's about it. My first experiences here weren't exactly pleasant.[/say]")

		saynn("Getting your pussy stitched up like that? Obviously no one would like that.")

		saynn("[say=jacki]But I'm getting used to it, you know?[/say]")

		saynn("[say=pc]To the prison life?[/say]")

		saynn("[say=jacki]To that too. The worst thing is that I can't even rub it out.. I have to seek.. alternative ways to.. you know.. But I can't find any..[/say]")

		saynn("Seems you can try helping her with that.")

		saynn("[say=jacki]Talking about it made me kinda exhausted. I will go rest, okay?[/say]")

		saynn("[say=pc]Sure. Take care.[/say]")

		saynn("Jacki gets up and starts jogging away.. leaving a little wet trail behind.")

		addButton("Continue", "See what happens next", "endthescene")
	if(state == "jog_afterchat"):
		if (lust < 0.4):
			aimCameraAndSetLocName("yard_northCorridor")
			GM.pc.setLocation("yard_northCorridor")
			playAnimation(StageScene.Duo, "stand", {npc="jacki"})
			saynn("By the end of your jogging session, Jacki is panting softly. She leans against one of the big rocks and holds her other paw on her thigh, rubbing it.")

			saynn("[say=jacki]Ooh.. These can be quite exhausting, huh?[/say]")

			saynn("You panting slightly too but not that much.")

			saynn("[say=jacki]Fresh air is nice, isn't it? I like this place.[/say]")

			saynn("She pulls out a plastic bottle filled with fresh water and raises it high above her head, catching some into her mouth while the rest streams down her fur and cools down her body. The wet fabric starts gluing to her body, emphasizing her {jacki.breasts}.")

			saynn("[say=jacki]Ah.. So good.. Well. It was nice chatting with you. But I think I will return back now.[/say]")

		elif (lust < 0.7):
			saynn("WRITE ME")

		elif (lust < 0.9):
			saynn("WRITE ME")

		else:
			saynn("WRITE ME")

		addButton("Nod", "Enough is enough", "jog_afterchat_nod")
		addButton("Ask to jog more", "Ask to jog even more together", "jog_afterchat_askmore")
	if(state == "jog_afterchat_nod"):
		saynn("You nod.")

		saynn("[say=pc]Take care.[/say]")

		saynn("Jacki offers you a kind smile.")

		saynn("[say=jacki]You too![/say]")

		saynn("..before walking away.")

		addButton("Continue", "See what happens next", "endthescene")
	if(state == "jog_afterchat_askmore"):
		saynn("[say=pc]Can't we maybe jog a little more? I would really like to do it with you.[/say]")

		saynn("Jacki rubs her wet muzzle and looks puzzled by your offer.")

		saynn("[say=jacki]Ooh.. You planning to run a marathon or something?[/say]")

		saynn("[say=pc]Pretty please?[/say]")

		saynn("One eye contact is enough to make her melt.")

		saynn("[say=jacki]Alright.. Let's jog some more.[/say]")

		addButton("Jog", "Jog together with Jacki", "jog_afterchat_jogmore")
	if(state == "jog_afterchat_jogmore"):
		aimCameraAndSetLocName("yard_firstroom")
		GM.pc.setLocation("yard_firstroom")
		playAnimation(StageScene.Duo, "jog", {npc="jacki", npcAction="jog", flipNPC=true})
		saynn("And so you continue jogging with Jacki. There is not much to chat about anymore so you just enjoy the scenery.")

		saynn("But the wolfie is not sharing your love to the lush environment at the moment. She is busy panting and huffing as she jogs around the yard while also swaying her hips more widely.")

		saynn("[say=jacki]Huff.. uff..[/say]")

		saynn("[say=pc]All good Jacki?[/say]")

		saynn("[say=jacki]Y-yeah.. I'm okay.[/say]")

		saynn("She gives you a thumbs up and does her best to keep up with the pace.")

		saynn("This jog gives you some energy back.")

		addButton("Continue", "See what happens next", "jog_afterbigjog")
	if(state == "jog_afterbigjog"):
		playAnimation(StageScene.Duo, "stand", {npc="jacki"})
		saynn("At some point Jacki just has to stop. She grabs onto the nearest tree and starts panting heavily.")

		saynn("[say=pc]If you need something..[/say]")

		saynn("[say=jacki]I'm good.. trust me.. Just have to get my breath back.[/say]")

		saynn("The wolfie leans against that tree harder and looks at you with hungry eyes. But then she quickly snaps out of it and pulls out her plastic bottle.")

		saynn("She does the same motion, bringing it high above her muzzle and waiting for the refreshing fluid to hit her tongue and fur.. but nothing comes out..")

		saynn("[say=jacki]Aw.[/say]")

		saynn("She looks at you again.")

		saynn("[say=jacki]Hate to ask but. Maybe you have something to clench the thirst?[/say]")

		saynn("Looks like you can give her one of your plastic bottles if you have any filled ones.")

		addButton("Nah", "You won't give her anything", "jog_afterbigjog_nobottle")
		addPlasticBottleButtons()
		if (false):
			addButton("Nope", "You shouldn't see this", "jog_afterbigjog_givebottle")
	if(state == "jog_afterbigjog_nobottle"):
		saynn("[say=pc]Nah, sorry. I've got nothing.[/say]")

		saynn("She sighs and nods.")

		saynn("[say=jacki]Okay.. well.. I'm gonna go refill my bottle then. Take care.[/say]")

		saynn("And just like that, the exhausted wolfie walks away, her thirst unclenched.")

		addButton("Continue", "See what happens next", "endthescene")
	if(state == "jog_afterbigjog_givebottle"):
		playAnimation(StageScene.Duo, "stand", {npc="jacki"})
		saynn("You give Jacki the "+str(usedItemName)+" and she quickly tries to clench her thirst with it, raising it high above her muzzle and catching the contents onto her tongue and face, her eyes closed.")

		if (plasticBottleFluidID == "Milk"):
			saynn("Even though it's not water in that bottle but breast milk.. Jacki still empties it completely and gets some onto her fur too.")

			saynn("[say=jacki]Ah! So sweet and refreshing. Where did you get milk here? I love the taste.[/say]")

			saynn("You decide that it's best to not tell her the origin of that milk.")

			saynn("[say=jacki]Well, either way, thank you! That helped a lot! I'm gonna go now though.[/say]")

			saynn("You nod and let Jacki jog away.")

		elif (plasticBottleFluidID == "Piss"):
			if (waterLevel <= 2):
				saynn("You decided to be very naughty today and gave Jacki a bottle of piss..")

				saynn("As soon as she makes the first gulp, Jacki realizes that something is wrong and tries to spew everything out. But it's too late, she even gets some of the yellow smelly fluid onto her fur.")

				saynn("[say=jacki]Gross! The fuck is this? Piss?![/say]")

				saynn("You pretend that it was just a mistake.")

				saynn("[say=pc]Oops.. I think I gave you the wrong bottle. My bad.[/say]")

				saynn("[say=jacki]Urgh.. Why do you even have that..[/say]")

				saynn("She spills the rest of the contents onto the floor.. And walks away.")

				saynn("Maybe you can make her get used to the taste if you try hard enough..")

			elif (waterLevel <= 5):
				saynn("You decided to be very naughty today and gave Jacki a bottle of piss..")

				saynn("Jacki sighs when she makes the first gulp.. and then just keeps swallowing it.. probably just to spite you.")

				saynn("[say=jacki]Gross.. I can feel that it's piss from the second I start drinking it.[/say]")

				if (waterLevel  == 5):
					saynn("[say=pc]Then why do you keep drinking it?[/say]")

					saynn("The blush appears on Jacki's face.")

					saynn("[say=jacki]Because.. Just because.. I'm thirsty, okay?[/say]")

					saynn("Jacki covers her wet piss-marked face and walks away.")

				else:
					saynn("She growls at you.")

					saynn("[say=jacki]Gave me piss instead of water again, very funny..[/say]")

					saynn("Makes you wonder why she drinks it at all then. Is her thirst that strong?")

			else:
				saynn("Judging from the yellow color, It's obviously not water in that bottle.. But it's like doesn't care, she eagerly swallows the warm piss while also receiving a little golden shower in the process.")

				saynn("[say=jacki]Ah~.. Refreshing..[/say]")

				saynn("Surprising. Jacki notices your confused stare.")

				saynn("[say=jacki]What? It's better than nothing. Thank you.[/say]")

				saynn("Well, looks like you accidentally turned Jacki into a piss slut. Oh well.")

				saynn("She walks away, proudly wearing that gross scent.")

		elif (plasticBottleFluidID == "GirlCum"):
			saynn("It's not water in that bottle.. but its transparency fools Jacki enough for her to empty the whole thing. Her face is now covered in girlcum..")

			saynn("[say=jacki]A little salty.. but it's not bad. What was in it?[/say]")

			saynn("You decide that it's best if she doesn't know what was in that bottle..")

			saynn("[say=jacki]Well, either way, thank you! That helped a lot! I'm gonna go now though.[/say]")

			saynn("You nod and let Jacki jog away.")

		elif (plasticBottleFluidID == "Cum"):
			saynn("Thick sticky cum starts flowing down Jacki's tongue as she gulps it all up.. She understands what it is way too late..")

			saynn("[say=jacki]Salty.. Um.. Is that.. What I think it is?[/say]")

			saynn("She opens her eyes and sees that she is now covered in seed.")

			if (corruption > 0.7):
				saynn("[say=jacki]You know.. I actually kinda like it.. Lots of protein. Thank you. I'm gonna go now~.[/say]")

				saynn("She licks her lips and walks away proudly.")

			else:
				saynn("[say=jacki]Why did you.. Give me that.. Urgh..[/say]")

				saynn("She coughs and then dashes away! Probably wasn't the best idea. But oh well.")

		else:
			saynn("It's not water in that bottle.. It's some strange fluid. Jacki starts coughing after drinking it.")

			saynn("[say=jacki]That's a weird taste.. Can't even describe it.. Are you sure it's drinkable even?[/say]")

			saynn("You shrug.")

			saynn("[say=jacki]Oh well. Thanks I guess. I'm gonna go now though.[/say]")

			saynn("You nod and let Jacki jog away.")

		addButton("Continue", "See what happens next", "endthescene")
func addPlasticBottleButtons():
	var items = GM.pc.getInventory().getItemsWithTag(ItemTag.PlasticBottle)
	for item in items:
		if(item.getFluids().isEmpty()):
			addDisabledButton(item.getStackName(), item.getVisisbleDescription())
		else:
			addButton(item.getStackName(), item.getVisisbleDescription(), "jog_afterbigjog_givebottle", [item])


func _react(_action: String, _args):
	if(_action == "endthescene"):
		endScene()
		return

	if(_action == "do_perv"):
		getModule("JackiModule").addCorruption(4)
		processTime(15*60)

	if(_action == "kind_watch"):
		processTime(15*60)
		getModule("JackiModule").addAnger(-8)
		getModule("JackiModule").addLust(3)

	if(_action == "kind_jog"):
		processTime(2*60)

	if(_action == "perv_spank"):
		processTime(5*60)
		getModule("JackiModule").addAnger(20)
		getModule("JackiModule").addCorruption(5)

	if(_action == "perv_suckass"):
		processTime(15*60)
		getModule("JackiModule").addCorruption(5)

	if(_action == "perv_suckass_kiss"):
		processTime(5*60)
		getModule("JackiModule").addCorruption(3)
		getModule("JackiModule").addAnger(10)

	if(_action == "gift_apple"):
		GM.pc.getInventory().removeXOfOrDestroy("appleitem", 1)
		getModule("JackiModule").addAnger(-15)

	if(_action == "gift_energydrink"):
		GM.pc.getInventory().removeXOfOrDestroy("EnergyDrink", 1)
		getModule("JackiModule").addAnger(-10)

	if(_action == "gift_5credits"):
		if(corruption <= 0.5):
			getModule("JackiModule").addAnger(10)

	if(_action == "gift_heatpill"):
		if(corruption > 0.5):
			GM.pc.getInventory().removeXOfOrDestroy("HeatPill", 1)
			getModule("JackiModule").addLust(30)
			getCharacter("jacki").forceIntoHeat()
		else:
			getModule("JackiModule").addAnger(10)

	if(_action == "gift_horsecockdildo"):
		if(corruption > 0.5 || lust > 0.5):
			setFlag("JackiModule.jackiReceivedHorsecockDildo", true)
			GM.pc.getInventory().removeXOfOrDestroy("HorsecockDildo", 1)
			getModule("JackiModule").addCorruption(30)
		else:
			getModule("JackiModule").addAnger(10)

	if(_action == "gift_sportybra"):
		GM.pc.getInventory().removeXOfOrDestroy("sportyTop", 1)
		setFlag("JackiModule.jackiReceivedBra", true)
		getCharacter("jacki").updateBodyparts()
		getModule("JackiModule").addAnger(-20)

	if(_action == "gift_sportyshorts"):
		GM.pc.getInventory().removeXOfOrDestroy("sportyBriefs", 1)
		setFlag("JackiModule.jackiReceivedShorts", true)
		getCharacter("jacki").updateBodyparts()
		getModule("JackiModule").addAnger(-20)

	if(_action == "gift_credits_free"):
		GM.pc.addCredits(-5)
		getModule("JackiModule").addAnger(-20)
		getModule("JackiModule").addCorruption(10)

	if(_action == "gift_credits_hj_do"):
		processTime(15*60)
		

	if(_action == "gift_creds_hj_double"):
		processTime(10*60)
		getModule("JackiModule").addCorruption(10)
		GM.pc.addCredits(-10)
		getCharacter("jacki").cummedOnBy("pc")
		GM.pc.orgasmFrom("jacki")

	if(_action == "gift_creds_hj_cum"):
		processTime(10*60)
		getModule("JackiModule").addAnger(5)
		getModule("JackiModule").addCorruption(6)
		GM.pc.addCredits(-5)
		getCharacter("jacki").cummedOnBy("pc", FluidSource.Penis, 0.05)
		GM.pc.orgasmFrom("jacki")

	if(_action == "kind_yoga_together"):
		processTime(5*60)
		getModule("JackiModule").addLust(6)

	if(_action == "kind_massage"):
		processTime(20*60)
		getModule("JackiModule").addLust(7)
		getModule("JackiModule").addAnger(-5)

	if(_action == "kind_yoga_togehter_try"):
		processTime(10*60)
		GM.pc.addEffect(StatusEffect.Yoga)
		GM.pc.addStamina(-30)
		getModule("JackiModule").addAnger(-5)

	if(_action == "kind_yoga_togehter_slack"):
		processTime(10*60)
		getModule("JackiModule").addLust(5)

	if(_action == "kind_massage_forcedfuck"):
		processTime(10*60)
		getModule("JackiModule").doBetray()

	if(_action == "kind_massage_forcedfisting"):
		processTime(10*60)
		getModule("JackiModule").doBetray()

	if(_action == "kind_massage_forcedfuck_cum"):
		processTime(6*60)
		getModule("JackiModule").advanceSkill("jackiSkillButtslut")
		getModule("JackiModule").makeJackiBusy()
		getCharacter("jacki").cummedInAnusBy("pc")
		GM.pc.orgasmFrom("jacki")

	if(_action == "kind_massage_forcedfisting_cum"):
		processTime(6*60)
		getModule("JackiModule").advanceSkill("jackiSkillButtslut")
		getModule("JackiModule").makeJackiBusy()

	if(_action == "jog_do"):
		processTime(15*60)
		getModule("JackiModule").addAnger(-5)
		getModule("JackiModule").addLust(6)
		GM.pc.addStamina(-10)

	if(_action == "jog_afterchat"):
		processTime(10*60)

	if(_action == "jog_chat_asklistenshort"):
		if(anger <= -0.8):
			processTime(20*60)

	if(_action == "jacki_piercing_story_start"):
		getCharacter("jacki").resetEquipment()
		getCharacter("jacki").getInventory().removeItemFromSlot(InventorySlot.Vagina)
		getCharacter("jacki").getInventory().forceEquipStoreOtherUnlessRestraint(GlobalRegistry.createItem("inmatewristcuffs"))
		getCharacter("jacki").getInventory().forceEquipStoreOtherUnlessRestraint(GlobalRegistry.createItem("inmateanklecuffs"))

	if(_action == "jacki_piercing_story_table"):
		getCharacter("jacki").resetEquipment()
		getCharacter("jacki").getInventory().removeItemFromSlot(InventorySlot.Vagina)

	if(_action == "jacki_piercing_story_piercings"):
		getCharacter("jacki").resetEquipment()

	if(_action == "jacki_piercing_story_end"):
		processTime(30*60)
		getCharacter("jacki").updateBodyparts()
		getModule("JackiModule").addLust(5)

	if(_action == "jog_afterchat_jogmore"):
		processTime(10*60)
		GM.pc.addStamina(10)

	if(_action == "jog_afterbigjog"):
		processTime(10*60)
		getModule("JackiModule").addLust(2)

	if(_action == "jog_afterbigjog_nobottle"):
		getModule("JackiModule").addAnger(1)

	if(_action == "jog_afterbigjog_givebottle"):
		processTime(5*60)
		var item = _args[0]
		if(item != null):
			usedItemName = item.getVisibleName()
			plasticBottleFluidID = item.getFluids().getDominantFluidID()
			if(plasticBottleFluidID == null):
				plasticBottleFluidID = "Milk"
			item.getFluids().transferTo(getCharacter("jacki"), 0.6)
			item.getFluids().transferTo(getCharacter("jacki").getBodypart(BodypartSlot.Head), 1.0)
		
		if(plasticBottleFluidID == "Milk"):
			getModule("JackiModule").addAnger(-2)
		if(plasticBottleFluidID == "GirlCum"):
			getModule("JackiModule").addAnger(-1)
		if(plasticBottleFluidID == "Cum"):
			if(corruption > 0.7):
				getModule("JackiModule").addCorruption(5)
			else:
				getModule("JackiModule").addCorruption(5)
				getModule("JackiModule").addAnger(50)
		if(plasticBottleFluidID == "Piss"):
			waterLevel = getModule("JackiModule").getSkillScore("jackiSkillWatersports")
			getModule("JackiModule").advanceSkill("jackiSkillWatersports")
			if(waterLevel <= 2):
				getModule("JackiModule").addAnger(40)
				getModule("JackiModule").addCorruption(2)
			elif(waterLevel <= 5):
				getModule("JackiModule").addAnger(10)
				getModule("JackiModule").addCorruption(3)
			else:
				getModule("JackiModule").addAnger(-4)
				getModule("JackiModule").addCorruption(5)

	setState(_action)

func saveData():
	var data = .saveData()

	data["anger"] = anger
	data["corruption"] = corruption
	data["lust"] = lust
	data["hasUnderwear"] = hasUnderwear
	data["buttScore"] = buttScore
	data["usedItemName"] = usedItemName
	data["plasticBottleFluidID"] = plasticBottleFluidID
	data["waterLevel"] = waterLevel

	return data

func loadData(data):
	.loadData(data)

	anger = SAVE.loadVar(data, "anger", 0.0)
	corruption = SAVE.loadVar(data, "corruption", 0.0)
	lust = SAVE.loadVar(data, "lust", 0.0)
	hasUnderwear = SAVE.loadVar(data, "hasUnderwear", false)
	buttScore = SAVE.loadVar(data, "buttScore", 0)
	usedItemName = SAVE.loadVar(data, "usedItemName", "")
	plasticBottleFluidID = SAVE.loadVar(data, "plasticBottleFluidID", "")
	waterLevel = SAVE.loadVar(data, "waterLevel", 0)
