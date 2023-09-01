extends SceneBase

func _init():
	sceneID = "Ch6TaviTalkScene"

func _run():
	var taviModule = getModule("TaviModule")
	if(state == ""):
		playAnimation(StageScene.Duo, "stand", {npc="tavi"})
		addCharacter("tavi")
		aimCameraAndSetLocName("cellblock_red_nearcell")
		
		saynn("Tavi stands still near her bed. Her desires for today seem to be satisfied.")
		
		if(taviModule.isVirgin()):
			saynn("Tavi still has her virginity.")
			
		sayn("Tavi's corruption is {taviCorruption}")
		saynn("Tavi's tiredness is "+str(getFlag("TaviModule.Ch6Tiredness", 0)))
		
		sayn("Tavi's skills:")
		for skillID in taviModule.getAllSkills():
			var skillInfo = taviModule.getSkillInfo(skillID)
			if(skillInfo == null):
				continue
			if(!taviModule.canTrainSkill(skillID)):
				continue
			
			sayn(skillInfo["name"]+": "+str(taviModule.getSkillScoreText(skillID)))
		sayn("")
		
		
		addDisabledButton("Final Attack", "(not implemented yet :( ) Use everything that you and Tavi learned to prepare the last attack.\n\nTavi's corruption needs to be either 0% or 200%")
		if(getFlag("TaviModule.Ch6Tiredness", 0) >= 3):
			addDisabledButton("Train", "Tavi is too tired")
			addDisabledButton("Activities", "Tavi is too tired")
		else:
			addButton("Train", "Train one of Tavi's skills", "train_menu")
			addButton("Activities", "See what you can do with Tavi", "activities_menu")
		
		
		addButton("Leave", "Enough talking", "endthescene")
		
	if(state == "activities_menu"):
		saynn("What do you wanna do with Tavi?")
		
		addButton("Shower", "Take a shower with Tavi", "do_activity", ["Ch6TaviShowerScene"])
		if(taviModule.getOverallCorruptStage() >= 1):
			addButton("Milking", "Try to milk Tavi's breasts", "do_activity", ["Ch6TaviMilkingScene"])
		else:
			addDisabledButton("Milking", "Tavi is not ready for this yet")
		addButton("Back", "Back to the previous menu", "")
		
	if(state == "train_menu"):
		saynn("Which skill do you wanna train?")
		
		sayn("Tavi's skills:")
		for skillID in taviModule.getAllSkills():
			var skillInfo = taviModule.getSkillInfo(skillID)
			if(skillInfo == null):
				continue
			if(!taviModule.canTrainSkill(skillID)):
				continue
			sayn(" - "+skillInfo["name"]+": "+str(taviModule.getSkillScoreText(skillID)))
			sayn(skillInfo["desc"])
		sayn("")
		
		for skillID in taviModule.getAllSkills():
			var skillInfo = taviModule.getSkillInfo(skillID)
			if(skillInfo == null):
				continue
			if(!taviModule.canTrainSkill(skillID)):
				continue
			addButton(skillInfo["name"], skillInfo["desc"], "do_skill", [skillInfo])
		
		addButton("Back", "Go back", "")
	
		
func _react(_action: String, _args):
	if(_action == "endthescene"):
		endScene()
		return

	if(_action == "do_skill"):
		setState("")
		increaseFlag("TaviModule.Ch6Tiredness", 1)
		runScene(_args[0]["scene"])
		return

	if(_action == "do_activity"):
		setState("")
		increaseFlag("TaviModule.Ch6Tiredness", 1)
		runScene(_args[0])
		return

	setState(_action)

func getDebugActions():
	return [
		{
			"id": "setCorruption",
			"name": "Set Corruption",
			"args": [
				{
					"id": "newcorruption",
					"name": "0-200%",
					"type": "number",
					"value": 100,
				},
			]
		},
	]

func doDebugAction(_id, _args = {}):
	if(_id == "setCorruption"):
		setFlag("TaviModule.Ch6Corruption", clamp(_args["newcorruption"] / 100.0, 0.0, 2.0))
