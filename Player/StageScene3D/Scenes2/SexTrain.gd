extends BaseStageScene3D

onready var animationTree = $AnimationTree
onready var animationTree2 = $AnimationTree2
onready var animationTree3 = $AnimationTree3
onready var doll = $Doll3D
onready var doll2 = $Doll3D2
onready var doll3 = $Doll3D3

func _init():
	id = StageScene.SexTrain

func _ready():
	animationTree.anim_player = animationTree.get_path_to(doll.getAnimPlayer2())
	animationTree.active = true
	animationTree2.anim_player = animationTree2.get_path_to(doll2.getAnimPlayer2())
	animationTree2.active = true
	animationTree3.anim_player = animationTree3.get_path_to(doll3.getAnimPlayer2())
	animationTree3.active = true
	
func updateSubAnims():
	if(true):
		return
	if(doll.getArmsCuffed()):
		animationTree["parameters/CuffsBlend/blend_amount"] = 1.0
	else:
		animationTree["parameters/CuffsBlend/blend_amount"] = 0.0
	
	if(doll2.getArmsCuffed()):
		animationTree2["parameters/CuffsBlend/blend_amount"] = 1.0
	else:
		animationTree2["parameters/CuffsBlend/blend_amount"] = 0.0

	if(doll3.getArmsCuffed()):
		animationTree3["parameters/CuffsBlend/blend_amount"] = 1.0
	else:
		animationTree3["parameters/CuffsBlend/blend_amount"] = 0.0

# StageScene.Duo, "kneel", {npc="nova", pc="pc"}
func playAnimation(animID, _args = {}):
	var firstDoll = "pc"
	if(_args.has("pc")):
		firstDoll = _args["pc"]
	doll.prepareCharacter(firstDoll)
	var secondDoll = "pc"
	if(_args.has("npc")):
		secondDoll = _args["npc"]
	doll2.prepareCharacter(secondDoll)
	var thirdDoll = "pc"
	if(_args.has("npc2")):
		thirdDoll = _args["npc2"]
	doll3.prepareCharacter(thirdDoll)
	
	if(_args.has("bodyState")):
		doll.applyBodyState(_args["bodyState"])
	else:
		doll.applyBodyState({})
	
	if(_args.has("npcBodyState")):
		doll2.applyBodyState(_args["npcBodyState"])
	else:
		doll2.applyBodyState({})
	
	if(_args.has("npc2BodyState")):
		doll3.applyBodyState(_args["npc2BodyState"])
	else:
		doll3.applyBodyState({})
	
	if(_args.has("cum") && _args["cum"] && !(animID in ["tease"])):
		#startCumInsideSolo(doll, getCumIntensity(doll2) + getCumIntensity(doll3))
		startCumInside(doll2, doll)
		startCumInside(doll, doll3)
	
	updateSubAnims()
	
	var state_machine = animationTree["parameters/StateMachine/playback"]
	var state_machine2 = animationTree2["parameters/StateMachine/playback"]
	var state_machine3 = animationTree3["parameters/StateMachine/playback"]

	if(animID == "tease"):
		state_machine.travel("SexTrainTease_1-loop")
		state_machine2.travel("SexTrainTease_2-loop")
		state_machine3.travel("SexTrainTease_3-loop")
	if(animID == "inside"):
		state_machine.travel("SexTrainInside_1-loop")
		state_machine2.travel("SexTrainInside_2-loop")
		state_machine3.travel("SexTrainInside_3-loop")
	if(animID == "sex"):
		state_machine.travel("SexTrain_1-loop")
		state_machine2.travel("SexTrain_2-loop")
		state_machine3.travel("SexTrain_3-loop")
	if(animID == "fast"):
		state_machine.travel("SexTrainFast_1-loop")
		state_machine2.travel("SexTrainFast_2-loop")
		state_machine3.travel("SexTrainFast_3-loop")



func canTransitionTo(_actionID, _args = []):
	var firstDoll = "pc"
	if(_args.has("pc")):
		firstDoll = _args["pc"]
	var secondDoll = "pc"
	if(_args.has("npc")):
		secondDoll = _args["npc"]
	var thirdDoll = "pc"
	if(_args.has("npc2")):
		thirdDoll = _args["npc2"]
		
	if(doll.getCharacterID() != firstDoll || doll2.getCharacterID() != secondDoll || doll3.getCharacterID() != thirdDoll):
		return false
	return true

func getSupportedStates():
	return ["tease", "inside", "sex", "fast"]
