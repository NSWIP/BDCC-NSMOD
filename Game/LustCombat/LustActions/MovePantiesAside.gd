extends LustAction

func _init():
	id = "MovePantiesAside"
	
func shouldShow(_lustState: LustCombatState, _args):
	if(_lustState.isInventorySlotBlocked(InventorySlot.UnderwearBottom)):
		return false
	
	return true

func canDo(_lustState: LustCombatState, _args):
	var itemState: PantiesState = _args["itemState"]
	#var pc:BaseCharacter = _lustState.getCharacter()
	if(itemState.arePantiesShiftedAside()):
		return [false, "Panties already shifted aside"]
	return .canDo(_lustState, _args)

func getVisibleName(_lustState: LustCombatState, _args):
	return "Shift panties aside"

func getVisibleDescription(_lustState: LustCombatState, _args):
	if(_args.has("itemName")):
		return "Shift your "+_args["itemName"]+" aside"
	return "Shift your panties aside"

func doAction(_lustState: LustCombatState, _args):
	var _item:ItemBase = getItem(_lustState, _args)
	
	var itemState: PantiesState = _args["itemState"]
	itemState.shiftPantiesAside()
	
	return {
		text = "{attacker.name} moved the panties aside"
	}

func getLustTopics():
	return {
		InterestTopic.ButtPlugs : 0.2,
		InterestTopic.VaginalPlugs : 0.2,
		InterestTopic.ExposedPussy : 1.0,
		InterestTopic.ExposedAnus : 1.0,
		InterestTopic.StuffedPussy : 0.5,
		InterestTopic.StuffedAss : 0.5,
	}
