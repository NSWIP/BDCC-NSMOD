extends "res://Scenes/SceneBase.gd"

func _init():
	sceneID = "TakingAShowerScene"

func _run():
	if(state == ""):
		if(GM.pc.isFullyNaked()):
			saynn("You look around for an empty spot and go towards it")
			
			addButton("Continue", "Take a shower", "doShower")
		else:
			saynn("You take off your clothes and put them into one of the lockers. It has a lock so no one should be able to just steal them.")
			
			saynn("Now, completely naked, you proceed into the shower room and find an available spot")

			addButton("Continue", "Go take a shower", "doShower")
		
	if(state == "doShower"):
		if(GM.pc.location == "main_dressing1"):
			GM.world.aimCamera("main_shower1")
		if(GM.pc.location == "main_dressing2"):
			GM.world.aimCamera("main_shower2")
		
		saynn("You get under one of the shower heads and begin tinkering with the faucets.")
		
		saynn("But no matter what you do, all you get is cold water. It's not freezing but it's clear enough how the prison saves on costs")

		saynn("You begin washing yourself, starting with the hair and going down, cleaning your face, neck, shoulders, chest, arms and legs")
		
		if(GM.pc.hasVagina()):
			if(GM.pc.hasReachableVagina()):
				saynn("Your hands slip down between your legs and give your slit a little rub to make sure it's all clean there as well")
		
		if(GM.pc.hasPenis()):
			if(GM.pc.hasReachableVagina()):
				saynn("Your cock gets some attention too, you take your time to wash the shaft and the ballsack")
		
		saynn("Eventually, you finish cleaning yourself and just stand still under the running water for a bit, pondering")
		
		addButton("Done", "Finish showering", "finish")
		addDisabledButton("Clean inside", "Not done")
		addDisabledButton("Masturbate", "Not done")
			
	if(state == "finish"):
		GM.world.aimCamera(GM.pc.location)
		
		saynn("You turn off the water and go grab a towel to rub yourself dry")
		
		if(!GM.pc.isFullyNaked()):
			saynn("Then you open your locker and put your clothing back on, ready to leave")
		
		addButton("Continue", "Feeling fresh", "endthescene")

func _react(_action: String, _args):
	if(_action == "doShower"):
		GM.pc.afterTakingAShower()
		processTime(60 * 30)
		
		if(GM.ES.trigger(Trigger.TakingAShower)):
			endScene()
			return
		
		addMessage("You feel fresh and clean")


	if(_action == "endthescene"):
		endScene()
		return
	
	setState(_action)
