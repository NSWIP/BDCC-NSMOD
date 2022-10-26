extends Reference
class_name Rollbacker

var rollbackStates:Array = []
var currentChoice = 0

func pushRollbackState():
	if(OPTIONS.isRollbackEnabled()):
		currentChoice += 1
		if(currentChoice < OPTIONS.getRollbackSaveEveryXChoices()):
			return
		
		currentChoice = 0
		var newdata = SAVE.saveData().duplicate(true)
		if(newdata != null):
			rollbackStates.append(newdata)
		
		if(rollbackStates.size() > OPTIONS.getRollbackSlotsAmount()):
			rollbackStates.pop_front()
			
func canRollback():
	return rollbackStates.size() > 0

func clear():
	rollbackStates.clear()
	
func rollback():
	if(!canRollback()):
		return
	
	Log.print("ROLLBACK")
	SAVE.loadData(rollbackStates.back())
	rollbackStates.pop_back()
	Log.print("ROLLBACK FINISHED")
