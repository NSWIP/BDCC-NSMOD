extends PerkBase

func _init():
	id = Perk.BDSMBetterStruggling
	skillGroup = Skill.BDSM

func getVisibleName():
	return "Damsel of Success"

func getVisibleDescription():
	return "You learned how to shake restraints off in the most efficient ways, if you complete the struggling minigame perfectly your struggling is twice as effective"

func getSkillTier():
	return 1

func getPicture():
	return "res://Images/Perks/andromeda-chain.png"

