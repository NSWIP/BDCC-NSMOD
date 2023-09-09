extends Node

var myProjectSettings

var enabledContent = {}
const optionsFilepath = "user://options.json"
var fetchNewRelease = true
# Pregnancy options
var menstrualCycleLengthDays: int
var eggCellLifespanHours: int
var playerPregnancyTimeDays: int
var npcPregnancyTimeDays: int

var shouldScaleUI: bool = true
var uiScaleMultiplier = 1.0
var requireDoubleTapOnMobile = false
var uiButtonSize:int = 0

var showSpeakerName = true
var fontSize = "normal"
var showShortcuts = true
var showSceneCreator = true

var measurementUnits = "metric"

var debugPanel = false
var showMapArt = false
var developerCommentary = false

var showCharacterArt = true
var showSceneArt = true
var imagePackOrder = []

var rollbackEnabled = false
var rollbackSlots = 5
var rollbackSaveEvery = 1

var showModdedLauncher = false

var jigglePhysicsBreastsEnabled = true
var jigglePhysicsBellyEnabled = true
var jigglePhysicsButtEnabled = true
var jigglePhysicsGlobalModifier = 1.0

var advancedShadersEnabled = true

var autosaveEnabled = true

# Cum Production Modification
var cumProductionModEnabled = false
var capacityBallsRatio = 1.0
var capacityPenisRatio = 0.25
var capacityModifier = 1.0
var productionModifier = 2.0

# DynamicNPC Generator Modification
var dynamicNPCGeneratorModEnabled = false
var dynamicNPCGeneratorSettings = {
	NpcGender.Male: {
		"thickMin": 0.0,
		"thickMax": 100.0,
		"femMin": 0.0,
		"femMax": 100.0,
		"lenCMMin": 15.0,
		"lenCMMax": 20.0,
		"ballsScaleMin": 1.0,
		"ballsScaleMax": 2.0,
	},
	NpcGender.Female: {
		"thickMin": 0.0,
		"thickMax": 100.0,
		"femMin": 0.0,
		"femMax": 100.0,
		"breastsMin": 3,
		"breastsMax": 7,
	},
	NpcGender.Herm: {
		"thickMin": 0.0,
		"thickMax": 100.0,
		"femMin": 0.0,
		"femMax": 100.0,
		"lenCMMin": 15.0,
		"lenCMMax": 20.0,
		"ballsScaleMin": 1.0,
		"ballsScaleMax": 2.0,
		"breastsMin": 3,
		"breastsMax": 7,
	},
	NpcGender.Shemale: {
		"thickMin": 0.0,
		"thickMax": 100.0,
		"femMin": 0.0,
		"femMax": 100.0,
		"lenCMMin": 15.0,
		"lenCMMax": 20.0,
		"ballsScaleMin": 1.0,
		"ballsScaleMax": 2.0,
		"breastsMin": 3,
		"breastsMax": 7,
	},
	NpcGender.Peachboy: {
		"thickMin": 0.0,
		"thickMax": 100.0,
		"femMin": 0.0,
		"femMax": 100.0,
	},
}
var dynamicNPCGeneratorArchetypeSettings = {
	"minArchetypeAmount" : 2,
	"maxArchetypeAmount" : 4,
	"onlyCustom": false,
	"customSettings": {
		Fetish.AnalSexGiving: FetishInterest.Neutral,
		Fetish.AnalSexReceiving: FetishInterest.Neutral,
		Fetish.BeingBred: FetishInterest.Neutral,
		Fetish.Breeding: FetishInterest.Neutral,
		Fetish.Bodywritings: FetishInterest.Neutral,
		Fetish.Bondage: FetishInterest.Neutral,
		Fetish.Condoms: FetishInterest.Neutral,
		Fetish.DrugUse: FetishInterest.Neutral,
		Fetish.Exhibitionism: FetishInterest.Neutral,
		Fetish.FeetplayGiving: FetishInterest.Neutral,
		Fetish.FeetplayReceiving: FetishInterest.Neutral,
		Fetish.Masochism: FetishInterest.Neutral,
		Fetish.OralSexGiving: FetishInterest.Neutral,
		Fetish.OralSexReceiving: FetishInterest.Neutral,
		Fetish.Rigging: FetishInterest.Neutral,
		Fetish.RimmingGiving: FetishInterest.Neutral,
		Fetish.RimmingReceiving: FetishInterest.Neutral,
		Fetish.Sadism: FetishInterest.Neutral,
		Fetish.StraponSexAnal: FetishInterest.Neutral,
		Fetish.StraponSexVaginal: FetishInterest.Neutral,
		Fetish.Tribadism: FetishInterest.Neutral,
		Fetish.UnconsciousSex: FetishInterest.Neutral,
		Fetish.VaginalSexGiving: FetishInterest.Neutral,
		Fetish.VaginalSexReceiving: FetishInterest.Neutral,
	}
}

# Alien Infestation Modification
var alienInfestationModEnabled = false
var alienParasitesEnabled = false

func resetToDefaults():
	fetchNewRelease = true
	menstrualCycleLengthDays = 7
	eggCellLifespanHours = 48
	playerPregnancyTimeDays = 5
	npcPregnancyTimeDays = 5
	shouldScaleUI = true
	uiScaleMultiplier = 1.0
	showSpeakerName = true
	fontSize = "normal"
	showShortcuts = true
	measurementUnits = "metric"
	requireDoubleTapOnMobile = false
	uiButtonSize = 0
	debugPanel = false
	showMapArt = false
	#imagePackOrder = []
	showCharacterArt = true
	showSceneArt = true
	showSceneCreator = true
	rollbackEnabled = false
	rollbackSlots = 5
	rollbackSaveEvery = 1
	showModdedLauncher = false
	developerCommentary = false
	jigglePhysicsBreastsEnabled = true
	jigglePhysicsBellyEnabled = true
	jigglePhysicsButtEnabled = true
	jigglePhysicsGlobalModifier = 1.0
	advancedShadersEnabled = true
	autosaveEnabled = true
	cumProductionModEnabled = false
	capacityBallsRatio = 1.0
	capacityPenisRatio = 0.25
	capacityModifier = 1.0
	productionModifier = 2.0
	dynamicNPCGeneratorModEnabled = false
	dynamicNPCGeneratorSettings = {
		NpcGender.Male: {
			"thickMin": 0.0,
			"thickMax": 100.0,
			"femMin": 0.0,
			"femMax": 100.0,
			"lenCMMin": 15.0,
			"lenCMMax": 20.0,
			"ballsScaleMin": 1.0,
			"ballsScaleMax": 2.0,
		},
		NpcGender.Female: {
			"thickMin": 0.0,
			"thickMax": 100.0,
			"femMin": 0.0,
			"femMax": 100.0,
			"breastsMin": 3,
			"breastsMax": 7,
		},
		NpcGender.Herm: {
			"thickMin": 0.0,
			"thickMax": 100.0,
			"femMin": 0.0,
			"femMax": 100.0,
			"lenCMMin": 15.0,
			"lenCMMax": 20.0,
			"ballsScaleMin": 1.0,
			"ballsScaleMax": 2.0,
			"breastsMin": 3,
			"breastsMax": 7,
		},
		NpcGender.Shemale: {
			"thickMin": 0.0,
			"thickMax": 100.0,
			"femMin": 0.0,
			"femMax": 100.0,
			"lenCMMin": 15.0,
			"lenCMMax": 20.0,
			"ballsScaleMin": 1.0,
			"ballsScaleMax": 2.0,
			"breastsMin": 3,
			"breastsMax": 7,
		},
		NpcGender.Peachboy: {
			"thickMin": 0.0,
			"thickMax": 100.0,
			"femMin": 0.0,
			"femMax": 100.0,
		},
	}
	dynamicNPCGeneratorArchetypeSettings = {
		"minArchetypeAmount" : 4,
		"maxArchetypeAmount" : 4,
		"onlyCustom": false,
		"customSettings": {
			Fetish.AnalSexGiving: FetishInterest.Neutral,
			Fetish.AnalSexReceiving: FetishInterest.Neutral,
			Fetish.BeingBred: FetishInterest.Neutral,
			Fetish.Breeding: FetishInterest.Neutral,
			Fetish.Bodywritings: FetishInterest.Neutral,
			Fetish.Bondage: FetishInterest.Neutral,
			Fetish.Condoms: FetishInterest.Neutral,
			Fetish.DrugUse: FetishInterest.Neutral,
			Fetish.Exhibitionism: FetishInterest.Neutral,
			Fetish.FeetplayGiving: FetishInterest.Neutral,
			Fetish.FeetplayReceiving: FetishInterest.Neutral,
			Fetish.Masochism: FetishInterest.Neutral,
			Fetish.OralSexGiving: FetishInterest.Neutral,
			Fetish.OralSexReceiving: FetishInterest.Neutral,
			Fetish.Rigging: FetishInterest.Neutral,
			Fetish.RimmingGiving: FetishInterest.Neutral,
			Fetish.RimmingReceiving: FetishInterest.Neutral,
			Fetish.Sadism: FetishInterest.Neutral,
			Fetish.StraponSexAnal: FetishInterest.Neutral,
			Fetish.StraponSexVaginal: FetishInterest.Neutral,
			Fetish.Tribadism: FetishInterest.Neutral,
			Fetish.UnconsciousSex: FetishInterest.Neutral,
			Fetish.VaginalSexGiving: FetishInterest.Neutral,
			Fetish.VaginalSexReceiving: FetishInterest.Neutral,
		}
	}
	alienInfestationModEnabled = false
	alienParasitesEnabled = false
	
	enabledContent.clear()
	for contentType in ContentType.getAll():
		enabledContent[contentType] = !ContentType.isDisabledByDefault(contentType)
		
	call_deferred("applySettingsEffect")

func _init():
	myProjectSettings = load("res://Game/Options/MyProjectSettings.gd").new()
	myProjectSettings.save()

	resetToDefaults()
	
	loadFromFile()

func isContentEnabled(contentType):
	if(!enabledContent.has(contentType)):
		return !ContentType.isDisabledByDefault(contentType)
	
	return enabledContent[contentType]

func shouldFetchGithubRelease():
	return fetchNewRelease

func getMenstrualCycleLengthDays():
	return menstrualCycleLengthDays

func getEggCellLifespanHours():
	return eggCellLifespanHours
	
func getPlayerPregnancyTimeDays():
	return playerPregnancyTimeDays
	
func getNPCPregnancyTimeDays():
	return npcPregnancyTimeDays

func shouldShowSpeakerName():
	return showSpeakerName

func getFontSize():
	return fontSize

func shouldShowShortcuts():
	return showShortcuts

func getMeasurementUnits():
	return measurementUnits

func shouldRequireDoubleTapOnMobile():
	return requireDoubleTapOnMobile

func getUiButtonSize():
	return uiButtonSize

func isDebugPanelEnabled():
	return debugPanel

func shouldShowCharacterArt():
	return showCharacterArt

func shouldShowSceneArt():
	return showSceneArt

func shouldShowSceneCreator():
	return showSceneCreator

func shouldShowMapArt():
	return showMapArt

func isRollbackEnabled():
	return rollbackEnabled

func getRollbackSlotsAmount():
	return rollbackSlots

func getRollbackSaveEveryXChoices():
	return rollbackSaveEvery

func shouldShowModdedLauncher():
	return showModdedLauncher

func developerCommentaryEnabled():
	return developerCommentary

func isJigglePhysicsBreastsEnabled():
	return jigglePhysicsBreastsEnabled

func isJigglePhysicsBellyEnabled():
	return jigglePhysicsBellyEnabled
	
func isJigglePhysicsButtEnabled():
	return jigglePhysicsButtEnabled

func getJigglePhysicsGlobalModifier():
	return jigglePhysicsGlobalModifier

func shouldUseAdvancedShaders():
	return advancedShadersEnabled

func shouldAutosave():
	return autosaveEnabled

func getCumProductionModEnabled():
	return cumProductionModEnabled

func getCapacityBallsRatio():
	return capacityBallsRatio

func getCapacityPenisRatio():
	return capacityPenisRatio

func getCapacityModifier():
	return capacityModifier

func getProductionModifier():
	return productionModifier

func getDynamicNPCGeneratorModEnabled():
	return dynamicNPCGeneratorModEnabled

func getDynamicNPCGeneratorSettings():
	return dynamicNPCGeneratorSettings

func getDynamicNPCGeneratorArchetypeSettings():
	return dynamicNPCGeneratorArchetypeSettings

func getDynamicNPCGeneratorArchetypeSettingsDisplay(var row: String):
	var out = ""
	var intrest = {
		FetishInterest.Hates: [],
		FetishInterest.ReallyDislikes: [],
		FetishInterest.Dislikes: [],
		FetishInterest.SlightlyDislikes: [],
		FetishInterest.Neutral: [],
		FetishInterest.SlightlyLikes: [],
		FetishInterest.Likes: [],
		FetishInterest.ReallyLikes: [],
		FetishInterest.Loves: [],
	}
	for entry in getDynamicNPCGeneratorArchetypeSettings()["customSettings"].keys():
		intrest[getDynamicNPCGeneratorArchetypeSettings()["customSettings"].get(entry)].push_back(entry)

	for entry in intrest[row]:
		if(out == ""):
			out += str(entry)
		else:
			out += str(" " + entry)
	return out + " "

func getAlienInfestationModEnabled():
	return alienInfestationModEnabled

func getAlienParasitesEnabled():
	return alienParasitesEnabled

func getChangeableOptions():
	var settings = [
		{
			"name": "Modding",
			"id": "modding",
			"options": [
				{
					"name": "Enable Modded BDCC Launcher",
					"description": "Restart the game to see it. Allows you to manage your mods and download new ones",
					"id": "showModdedLauncher",
					"type": "checkbox",
					"value": showModdedLauncher,
				},
			],
		},
		{
			"name": "Pregnancy settings",
			"id": "pregnancy",
			"options": [
				{
					"name": "Menstrual cycle length (days)",
					"description": "How long is the female menstrual cycle. Females can only get pregnant after they ovulate once per cycle. Realistic value is 30. Default value is 7",
					"id": "menstrualCycleLengthDays",
					"type": "int",
					"value": menstrualCycleLengthDays,
				},
				{
					"name": "Egg cell lifespan (hours)",
					"description": "How long egg cells live after ovulation. Realistic value is 18. Default value is 48",
					"id": "eggCellLifespanHours",
					"type": "int",
					"value": eggCellLifespanHours,
				},
				{
					"name": "Player pregnancy length (days)",
					"description": "How many days must pass until the player is ready to give birth. Realistic value is 270 for humans. Realistic value for felines is 30. Default value is 5",
					"id": "playerPregnancyTimeDays",
					"type": "int",
					"value": playerPregnancyTimeDays,
				},
				{
					"name": "NPC pregnancy length (days)",
					"description": "How many days pass before non-playable characters give birth. Realistic value is 270 for humans. Realistic value for felines is 30. Default value is 5",
					"id": "npcPregnancyTimeDays",
					"type": "int",
					"value": npcPregnancyTimeDays,
				},
			]
		},
		{
			"name": "Render (Restart game after changing these)",
			"id": "render",
			"options": [
				{
					"name": "Renderer",
					"description": "GLES3 = Fancy, GLES2 = More support",
					"id": "renderer",
					"type": "list",
					"value": ProjectSettings.get_setting("rendering/quality/driver/driver_name"),
					"values": [
						["GLES3", "GLES3"],
						["GLES2", "GLES2"],
					]
				},
				{
					"name": "Force Software Skinning",
					"description": "Turn this on if the player doll is displayed incorrectly. Might lower performance.",
					"id": "softwareSkinning",
					"type": "checkbox",
					"value": ProjectSettings.get_setting("rendering/quality/skinning/force_software_skinning"),
				},
				{
					"name": "Skin shaders",
					"description": "Turn this off if your game is lagging/crashing. Will disable all skins.",
					"id": "advancedShadersEnabled",
					"type": "checkbox",
					"value": advancedShadersEnabled,
				}
			]
		},
		{
			"name": "Jiggle physics",
			"id": "jigglephysics",
			"options": [
				{
					"name": "Breasts jiggle physics",
					"description": "Should the boobs bounce?",
					"id": "jigglePhysicsBreastsEnabled",
					"type": "checkbox",
					"value": jigglePhysicsBreastsEnabled,
				},
				{
					"name": "Belly jiggle physics",
					"description": "Should the belly bounce?",
					"id": "jigglePhysicsBellyEnabled",
					"type": "checkbox",
					"value": jigglePhysicsBellyEnabled,
				},
				{
					"name": "Butt jiggle physics",
					"description": "Should the butt bounce?",
					"id": "jigglePhysicsButtEnabled",
					"type": "checkbox",
					"value": jigglePhysicsButtEnabled,
				},
				{
					"name": "Jiggle physics modifier",
					"description": "How bouncy should everything be",
					"id": "jigglePhysicsGlobalModifier",
					"type": "list",
					"value": jigglePhysicsGlobalModifier,
					"values": [
						[0.1, "10%"],
						[0.25, "25%"],
						[0.5, "50%"],
						[0.6, "60%"],
						[0.7, "70%"],
						[0.8, "80%"],
						[0.9, "90%"],
						[1.0, "100%"],
						[1.10, "110%"],
						[1.2, "120%"],
						[1.35, "135%"],
						[1.5, "150%"],
						[2.0, "200%"],
					],
				},
			]
		},
		{
			"name": "Saves",
			"id": "saves",
			"options": [
				{
					"name": "Autosave after sleep",
					"description": "Should the game save automatically when you sleep",
					"id": "autosaveEnabled",
					"type": "checkbox",
					"value": autosaveEnabled,
				}
			],
		},
		{
			"name": "Other",
			"id": "other",
			"options": [
				{
					"name": "Fetch latest release",
					"description": "Should the game load latest update info from github when starting the game",
					"id": "fetchLatestRelease",
					"type": "checkbox",
					"value": fetchNewRelease,
				},
				{
					"name": "UI scaling",
					"description": "Should the game scale the ui for different resolutions. Disable if text is blurry.",
					"id": "shouldScaleUI",
					"type": "checkbox",
					"value": shouldScaleUI,
				},
				{
					"name": "UI scale multiplier",
					"description": "Be careful when changing this value.",
					"id": "uiScaleMultiplier",
					"type": "list",
					"value": uiScaleMultiplier,
					"values": [
						[0.5, "50%"],
						[0.6, "60%"],
						[0.7, "70%"],
						[0.8, "80%"],
						[0.9, "90%"],
						[1.0, "100%"],
						[1.05, "105%"],
						[1.10, "110%"],
						[1.15, "115%"],
						[1.2, "120%"],
						[1.25, "125%"],
						[1.35, "135%"],
						[1.5, "150%"],
					],
				},
				{
					"name": "Show speaker name",
					"description": "Adds a name of the speaker before the speech",
					"id": "showSpeakerName",
					"type": "checkbox",
					"value": showSpeakerName,
				},
				{
					"name": "Output font size",
					"description": "Font size for the scene text output",
					"id": "fontSize",
					"type": "list",
					"value": fontSize,
					"values": [
						["small", "Small"],
						["normal", "Normal"],
						["big", "Big"],
					],
				},
				{
					"name": "Show shortcuts",
					"description": "Show the shortcut key on the button",
					"id": "showShortcuts",
					"type": "checkbox",
					"value": showShortcuts,
				},
				{
					"name": "Button size",
					"description": "Changes the size of the buttons inside the main game screen",
					"id": "uiButtonSize",
					"type": "list",
					"value": uiButtonSize,
					"values": [
						[0, "Default"],
						[1, "Slightly bigger"],
						[2, "Big"],
						[3, "Very big"],
					],
				},
				{
					"name": "Double-tap to pick option (mobile)",
					"description": "First tap shows the description, second tap picks the option. Works only with touchscreens",
					"id": "requireDoubleTapOnMobile",
					"type": "checkbox",
					"value": requireDoubleTapOnMobile,
				},
				{
					"name": "Measurement units",
					"description": "Choose how to display length values",
					"id": "measurementUnits",
					"type": "list",
					"value": measurementUnits,
					"values": [
						["metric", "Metric (cm)"],
						["imperial", "Imperial (in)"],
						["metricimperial", "Metric and Imperial"],
					],
				},
				{
					"name": "Show character art",
					"description": "Show panel with character art instead of small one",
					"id": "showCharacterArt",
					"type": "checkbox",
					"value": showCharacterArt,
				},
				{
					"name": "Show scene art",
					"description": "Display the art associated with the current scene (if available)",
					"id": "showSceneArt",
					"type": "checkbox",
					"value": showSceneArt,
				},
				{
					"name": "Image packs",
					"description": "Choose artist priority",
					"id": "imagePackOrder",
					"type": "prioritylist",
					"imagePacks": true,
					"value": "",
					"values": imagePackOrder,
				},
				{
					"name": "Show scene creator",
					"description": "Displays a 'scene by' text with the author's name under the minimap",
					"id": "showSceneCreator",
					"type": "checkbox",
					"value": showSceneCreator,
				},
				{
					"name": "Developer commentary",
					"description": "Enables developer commentary for scenes that support it",
					"id": "developerCommentary",
					"type": "checkbox",
					"value": developerCommentary,
				},
#				{
#					"name": "Show map art (WIP)",
#					"description": "(WORK IN PROGRESS) Shows props and walls on the minimap when supported",
#					"id": "showMapArt",
#					"type": "checkbox",
#					"value": showMapArt,
#				},
			],
		},
		{
			"name": "Rollback settings (Experimental)",
			"id": "rollback",
			"options": [
				{
					"name": "Rollback enabled",
					"description": "If checked you will be able to rollback the game's state, undoing any choices that the player made. Might use a lot of memory. Disable if the game is too laggy",
					"id": "rollbackEnabled",
					"type": "checkbox",
					"value": rollbackEnabled,
				},
				{
					"name": "Rollback history size",
					"description": "How many actions you wanna be able to undo",
					"id": "rollbackSlots",
					"type": "int",
					"value": rollbackSlots,
				},
				{
					"name": "Make snapshot every X choices",
					"description": "How often do you wanna save the rollback state. 1 = every choice",
					"id": "rollbackSaveEvery",
					"type": "int",
					"value": rollbackSaveEvery,
				},
			]
		},
		{
			"name": "Debug",
			"id": "debug",
			"options": [
				{
					"name": "Debug/Cheats panel",
					"description": "Adds a button that shows the debug panel",
					"id": "debugPanel",
					"type": "checkbox",
					"value": debugPanel,
				},
			]
		},
	]
	
	var contentSettings = []
	for contentType in ContentType.getAll():
		contentSettings.append({
			"name": ContentType.getVisibleName(contentType),
			"description": ContentType.getDescription(contentType),
			"id": contentType,
			"type": "checkbox",
			"value": isContentEnabled(contentType),
		})
	settings.append({
		"name": "Enabled Fetish Content",
		"id": "enabledContent",
		"options": contentSettings,
	})
	
	return settings
	
func getModChangeableOptions():
	var settings = [
		{
			"name": "Cum production settings",
			"id": "cumProductionSettings",
			"options": [
				{
					"name": "Enable",
					"description": "Enable this modification",
					"id": "cumProductionModEnabled",
					"type": "checkbox",
					"value": cumProductionModEnabled,
				},
				{
					"name": "Cum capacity balls ratio",
					"description": "Change how much \"Balls Scale\" contributes to the cum capacity",
					"id": "capacityBallsRatio",
					"type": "float",
					"value": capacityBallsRatio,
				},
				{
					"name": "Cum capacity penis ratio",
					"description": "Change how much \"Penis Length\" contributes to the cum capacity",
					"id": "capacityPenisRatio",
					"type": "float",
					"value": capacityPenisRatio,
				},
				{
					"name": "Cum capacity modifier",
					"description": "Change the cum capacity modifier",
					"id": "capacityModifier",
					"type": "float",
					"value": capacityModifier,
				},
				{
					"name": "Cum production modifier",
					"description": "Change the production speed modifier",
					"id": "productionModifier",
					"type": "float",
					"value": productionModifier,
				},
			]
		},
		{
			"name": "Dynamic NPC generator settings",
			"id": "dynamicNPCGeneratorSettings",
			"options": [
				{
					"name": "Enable",
					"description": "Enable this modification",
					"id": "dynamicNPCGeneratorModEnabled",
					"type": "checkbox",
					"value": dynamicNPCGeneratorModEnabled,
				},
				{
					"name": "Thickness",
					"description": "Change the thickness of dynamic npcs\nGenders: Male, Female, Herm, Shemale, Peachboy\nEach gender must have a specified range of numbers",
					"id": "dynamicNPCGeneratorSettingsThick",
					"type": "text",
					"value": (
						str(dynamicNPCGeneratorSettings[NpcGender.Male]["thickMin"]) + ":" + str(dynamicNPCGeneratorSettings[NpcGender.Male]["thickMax"]) + " " +
						str(dynamicNPCGeneratorSettings[NpcGender.Female]["thickMin"]) + ":" + str(dynamicNPCGeneratorSettings[NpcGender.Female]["thickMax"]) + " " +
						str(dynamicNPCGeneratorSettings[NpcGender.Herm]["thickMin"]) + ":" + str(dynamicNPCGeneratorSettings[NpcGender.Herm]["thickMax"]) + " " +
						str(dynamicNPCGeneratorSettings[NpcGender.Shemale]["thickMin"]) + ":" + str(dynamicNPCGeneratorSettings[NpcGender.Shemale]["thickMax"]) + " " +
						str(dynamicNPCGeneratorSettings[NpcGender.Peachboy]["thickMin"]) + ":" + str(dynamicNPCGeneratorSettings[NpcGender.Peachboy]["thickMax"]) + " "),
				},
				{
					"name": "Femininity",
					"description": "Change the femininity of dynamic npcs\nGenders: Male, Female, Herm, Shemale, Peachboy\nEach gender must have a specified range of numbers",
					"id": "dynamicNPCGeneratorSettingsFem",
					"type": "text",
					"value": (
						str(dynamicNPCGeneratorSettings[NpcGender.Male]["femMin"]) + ":" + str(dynamicNPCGeneratorSettings[NpcGender.Male]["femMax"]) + " " +
						str(dynamicNPCGeneratorSettings[NpcGender.Female]["femMin"]) + ":" + str(dynamicNPCGeneratorSettings[NpcGender.Female]["femMax"]) + " " +
						str(dynamicNPCGeneratorSettings[NpcGender.Herm]["femMin"]) + ":" + str(dynamicNPCGeneratorSettings[NpcGender.Herm]["femMax"]) + " " +
						str(dynamicNPCGeneratorSettings[NpcGender.Shemale]["femMin"]) + ":" + str(dynamicNPCGeneratorSettings[NpcGender.Shemale]["femMax"]) + " " +
						str(dynamicNPCGeneratorSettings[NpcGender.Peachboy]["femMin"]) + ":" + str(dynamicNPCGeneratorSettings[NpcGender.Peachboy]["femMax"]) + " "),
				},
				{
					"name": "Penis length",
					"description": "Change the penis length of dynamic npcs\nGenders: Male, Herm, Shemale\nEach gender must have a specified range of numbers",
					"id": "dynamicNPCGeneratorSettingsLenCM",
					"type": "text",
					"value": (
						str(dynamicNPCGeneratorSettings[NpcGender.Male]["lenCMMin"]) + ":" + str(dynamicNPCGeneratorSettings[NpcGender.Male]["lenCMMax"]) + " " +
						str(dynamicNPCGeneratorSettings[NpcGender.Herm]["lenCMMin"]) + ":" + str(dynamicNPCGeneratorSettings[NpcGender.Herm]["lenCMMax"]) + " " +
						str(dynamicNPCGeneratorSettings[NpcGender.Shemale]["lenCMMin"]) + ":" + str(dynamicNPCGeneratorSettings[NpcGender.Shemale]["lenCMMax"]) + " "),
				},
				{
					"name": "Balls scale",
					"description": "Change the balls scale of dynamic npcs\nGenders: Male, Herm, Shemale\nEach gender must have a specified range of numbers",
					"id": "dynamicNPCGeneratorSettingsBallsScale",
					"type": "text",
					"value": (
						str(dynamicNPCGeneratorSettings[NpcGender.Male]["ballsScaleMin"]) + ":" + str(dynamicNPCGeneratorSettings[NpcGender.Male]["ballsScaleMax"]) + " " +
						str(dynamicNPCGeneratorSettings[NpcGender.Herm]["ballsScaleMin"]) + ":" + str(dynamicNPCGeneratorSettings[NpcGender.Herm]["ballsScaleMax"]) + " " +
						str(dynamicNPCGeneratorSettings[NpcGender.Shemale]["ballsScaleMin"]) + ":" + str(dynamicNPCGeneratorSettings[NpcGender.Shemale]["ballsScaleMax"]) + " "),
				},
				{
					"name": "Breasts size",
					"description": "Change the balls scale of dynamic npcs\nGenders: Female, Herm, Shemale\nEach gender must have a specified range of numbers",
					"id": "dynamicNPCGeneratorSettingsBreasts",
					"type": "text",
					"value": (
						str(dynamicNPCGeneratorSettings[NpcGender.Female]["breastsMin"]) + ":" + str(dynamicNPCGeneratorSettings[NpcGender.Female]["breastsMax"]) + " " +
						str(dynamicNPCGeneratorSettings[NpcGender.Herm]["breastsMin"]) + ":" + str(dynamicNPCGeneratorSettings[NpcGender.Herm]["breastsMax"]) + " " +
						str(dynamicNPCGeneratorSettings[NpcGender.Shemale]["breastsMin"]) + ":" + str(dynamicNPCGeneratorSettings[NpcGender.Shemale]["breastsMax"]) + " "),
				},
				{
					"name": "Min archetype count",
					"description": "Change the lowest amount of archetypes a character can have",
					"id": "dynamicNPCGeneratorArchetypeSettingsMinArchetypeCount",
					"type": "int",
					"value": dynamicNPCGeneratorArchetypeSettings["minArchetypeAmount"],
				},
				{
					"name": "Max archetype count",
					"description": "Change the highest amount of archetypes a character can have",
					"id": "dynamicNPCGeneratorArchetypeSettingsMaxArchetypeCount",
					"type": "int",
					"value": dynamicNPCGeneratorArchetypeSettings["maxArchetypeAmount"],
				},
				{
					"name": "Only custom archetype",
					"description": "Any dynamic NPC will have only the custom archetype",
					"id": "dynamicNPCGeneratorArchetypeSettingsOnlyCustomArchetype",
					"type": "checkbox",
					"value": dynamicNPCGeneratorArchetypeSettings["onlyCustom"],
				},
				{
					"name": "Fetish hates",
					"description": "Change what fetishes will have this intrest value",
					"id": "dynamicNPCGeneratorArchetypeSettingsHates",
					"type": "text",
					"value": getDynamicNPCGeneratorArchetypeSettingsDisplay(FetishInterest.Hates),
				},
				{
					"name": "Fetish really dislikes",
					"description": "Change what fetishes will have this intrest value",
					"id": "dynamicNPCGeneratorArchetypeSettingsReallyDislikes",
					"type": "text",
					"value": getDynamicNPCGeneratorArchetypeSettingsDisplay(FetishInterest.ReallyDislikes),
				},
				{
					"name": "Fetish dislikes",
					"description": "Change what fetishes will have this intrest value",
					"id": "dynamicNPCGeneratorArchetypeSettingsDislikes",
					"type": "text",
					"value": getDynamicNPCGeneratorArchetypeSettingsDisplay(FetishInterest.Dislikes),
				},
				{
					"name": "Fetish slightly dislikes",
					"description": "Change what fetishes will have this intrest value",
					"id": "dynamicNPCGeneratorArchetypeSettingsSlightlyDislikes",
					"type": "text",
					"value": getDynamicNPCGeneratorArchetypeSettingsDisplay(FetishInterest.SlightlyDislikes),
				},
				{
					"name": "Fetish neutral",
					"description": "Change what fetishes will have this intrest value",
					"id": "dynamicNPCGeneratorArchetypeSettingsNeutral",
					"type": "text",
					"value": getDynamicNPCGeneratorArchetypeSettingsDisplay(FetishInterest.Neutral),
				},
				{
					"name": "Fetish slightly likes",
					"description": "Change what fetishes will have this intrest value",
					"id": "dynamicNPCGeneratorArchetypeSettingsSlightlyLikes",
					"type": "text",
					"value": getDynamicNPCGeneratorArchetypeSettingsDisplay(FetishInterest.SlightlyLikes),
				},
				{
					"name": "Fetish likes",
					"description": "Change what fetishes will have this intrest value",
					"id": "dynamicNPCGeneratorArchetypeSettingsLikes",
					"type": "text",
					"value": getDynamicNPCGeneratorArchetypeSettingsDisplay(FetishInterest.Likes),
				},
				{
					"name": "Fetish really likes",
					"description": "Change what fetishes will have this intrest value",
					"id": "dynamicNPCGeneratorArchetypeSettingsReallyLikes",
					"type": "text",
					"value": getDynamicNPCGeneratorArchetypeSettingsDisplay(FetishInterest.ReallyLikes),
				},
				{
					"name": "Fetish loves",
					"description": "Change what fetishes will have this intrest value",
					"id": "dynamicNPCGeneratorArchetypeSettingsLoves",
					"type": "text",
					"value": getDynamicNPCGeneratorArchetypeSettingsDisplay(FetishInterest.Loves),
				},
			]
		},
		{
			"name": "Alien infestation settings (W.I.P.)",
			"id": "alienInfestationSettings",
			"options": [
				{
					"name": "Enable",
					"description": "Enable this modification",
					"id": "alienInfestationModEnabled",
					"type": "checkbox",
					"value": alienInfestationModEnabled,
				},
				{
					"name": "Alien parasites",
					"description": "Enable alien parasites",
					"id": "alienParasitesEnabled",
					"type": "float",
					"value": alienParasitesEnabled,
				},
			]
		},
	]
	
	return settings

func applyOption(categoryID, optionID, value):
	if(categoryID == "jigglephysics"):
		if(optionID == "jigglePhysicsBreastsEnabled"):
			jigglePhysicsBreastsEnabled = value
		if(optionID == "jigglePhysicsBellyEnabled"):
			jigglePhysicsBellyEnabled = value
		if(optionID == "jigglePhysicsButtEnabled"):
			jigglePhysicsButtEnabled = value
		if(optionID == "jigglePhysicsGlobalModifier"):
			jigglePhysicsGlobalModifier = value

	if(categoryID == "saves"):
		if(optionID == "autosaveEnabled"):
			autosaveEnabled = value

	if(categoryID == "modding"):
		if(optionID == "showModdedLauncher"):
			showModdedLauncher = value
			if(showModdedLauncher):
				var _ok = OS.request_permissions()
	
	if(categoryID == "pregnancy"):
		if(optionID == "menstrualCycleLengthDays"):
			menstrualCycleLengthDays = value
		if(optionID == "eggCellLifespanHours"):
			eggCellLifespanHours = value
		if(optionID == "playerPregnancyTimeDays"):
			playerPregnancyTimeDays = value
		if(optionID == "npcPregnancyTimeDays"):
			npcPregnancyTimeDays = value
	
	if(categoryID == "other"):
		if(optionID == "fetchLatestRelease"):
			fetchNewRelease = value
		if(optionID == "shouldScaleUI"):
			shouldScaleUI = value
			
			applySettingsEffect()
		if(optionID == "uiScaleMultiplier"):
			uiScaleMultiplier = value
			
			applySettingsEffect()
		if(optionID == "showSpeakerName"):
			showSpeakerName = value
		if(optionID == "fontSize"):
			fontSize = value
		if(optionID == "showShortcuts"):
			showShortcuts = value
		if(optionID == "measurementUnits"):
			measurementUnits = value
		if(optionID == "requireDoubleTapOnMobile"):
			requireDoubleTapOnMobile = value
		if(optionID == "uiButtonSize"):
			uiButtonSize = value
		if(optionID == "showCharacterArt"):
			showCharacterArt = value
		if(optionID == "showSceneArt"):
			showSceneArt = value
		if(optionID == "showSceneCreator"):
			showSceneCreator = value
		if(optionID == "showMapArt"):
			showMapArt = value
		if(optionID == "developerCommentary"):
			developerCommentary = value
		
	if(categoryID == "render"):
		if(optionID == "renderer"):
			myProjectSettings.setDriverName(value)
			myProjectSettings.save()
		if(optionID == "softwareSkinning"):
			myProjectSettings.setForceSoftwareSkinning(value)
			myProjectSettings.save()
		if(optionID == "advancedShadersEnabled"):
			advancedShadersEnabled = value
			
	if(categoryID == "debug"):
		if(optionID == "debugPanel"):
			debugPanel = value
	
	if(categoryID == "rollback"):
		if(optionID == "rollbackEnabled"):
			rollbackEnabled = value
		if(optionID == "rollbackSlots"):
			rollbackSlots = Util.maxi(value, 1)
		if(optionID == "rollbackSaveEvery"):
			rollbackSaveEvery = Util.maxi(value, 1)
			
	if(categoryID == "enabledContent"):
		enabledContent[optionID] = value
	print("SETTING "+categoryID+":"+optionID+" TO "+str(value))

	if(categoryID == "cumProductionSettings"):
		if(optionID == "cumProductionModEnabled"):
			cumProductionModEnabled = value
		if(optionID == "capacityBallsRatio"):
			capacityBallsRatio = value
		if(optionID == "capacityPenisRatio"):
			capacityPenisRatio = value
		if(optionID == "capacityModifier"):
			capacityModifier = value
		if(optionID == "productionModifier"):
			productionModifier = value

	if(categoryID == "dynamicNPCGeneratorSettings"):
		if(optionID == "dynamicNPCGeneratorModEnabled"):
			dynamicNPCGeneratorModEnabled = value
			return
		
		var value_parsed = []
		if(optionID.begins_with("dynamicNPCGeneratorSettings")):
			var splits = value.split(" ", false, 0)
	
			for gender in splits:
				value_parsed.push_back(float(gender.split(":")[0]))
				value_parsed.push_back(float(gender.split(":")[1]))
		
		if(optionID == "dynamicNPCGeneratorSettingsThick"):
			dynamicNPCGeneratorSettings[NpcGender.Male]["thickMin"] = value_parsed[0]
			dynamicNPCGeneratorSettings[NpcGender.Male]["thickMax"] = value_parsed[1]
			dynamicNPCGeneratorSettings[NpcGender.Female]["thickMin"] = value_parsed[2]
			dynamicNPCGeneratorSettings[NpcGender.Female]["thickMax"] = value_parsed[3]
			dynamicNPCGeneratorSettings[NpcGender.Herm]["thickMin"] = value_parsed[4]
			dynamicNPCGeneratorSettings[NpcGender.Herm]["thickMax"] = value_parsed[5]
			dynamicNPCGeneratorSettings[NpcGender.Shemale]["thickMin"] = value_parsed[6]
			dynamicNPCGeneratorSettings[NpcGender.Shemale]["thickMax"] = value_parsed[7]
			dynamicNPCGeneratorSettings[NpcGender.Peachboy]["thickMin"] = value_parsed[8]
			dynamicNPCGeneratorSettings[NpcGender.Peachboy]["thickMax"] = value_parsed[9]

		if(optionID == "dynamicNPCGeneratorSettingsFem"):
			dynamicNPCGeneratorSettings[NpcGender.Male]["femMin"] = value_parsed[0]
			dynamicNPCGeneratorSettings[NpcGender.Male]["femMax"] = value_parsed[1]
			dynamicNPCGeneratorSettings[NpcGender.Female]["femMin"] = value_parsed[2]
			dynamicNPCGeneratorSettings[NpcGender.Female]["femMax"] = value_parsed[3]
			dynamicNPCGeneratorSettings[NpcGender.Herm]["femMin"] = value_parsed[4]
			dynamicNPCGeneratorSettings[NpcGender.Herm]["femMax"] = value_parsed[5]
			dynamicNPCGeneratorSettings[NpcGender.Shemale]["femMin"] = value_parsed[6]
			dynamicNPCGeneratorSettings[NpcGender.Shemale]["femMax"] = value_parsed[7]
			dynamicNPCGeneratorSettings[NpcGender.Peachboy]["femMin"] = value_parsed[8]
			dynamicNPCGeneratorSettings[NpcGender.Peachboy]["femMax"] = value_parsed[9]

		if(optionID == "dynamicNPCGeneratorSettingsLenCM"):
			dynamicNPCGeneratorSettings[NpcGender.Male]["lenCMMin"] = value_parsed[0]
			dynamicNPCGeneratorSettings[NpcGender.Male]["lenCMMax"] = value_parsed[1]
			dynamicNPCGeneratorSettings[NpcGender.Herm]["lenCMMin"] = value_parsed[2]
			dynamicNPCGeneratorSettings[NpcGender.Herm]["lenCMMax"] = value_parsed[3]
			dynamicNPCGeneratorSettings[NpcGender.Shemale]["lenCMMin"] = value_parsed[4]
			dynamicNPCGeneratorSettings[NpcGender.Shemale]["lenCMMax"] = value_parsed[5]

		if(optionID == "dynamicNPCGeneratorSettingsBallsScale"):
			dynamicNPCGeneratorSettings[NpcGender.Male]["ballsScaleMin"] = value_parsed[0]
			dynamicNPCGeneratorSettings[NpcGender.Male]["ballsScaleMax"] = value_parsed[1]
			dynamicNPCGeneratorSettings[NpcGender.Herm]["ballsScaleMin"] = value_parsed[2]
			dynamicNPCGeneratorSettings[NpcGender.Herm]["ballsScaleMax"] = value_parsed[3]
			dynamicNPCGeneratorSettings[NpcGender.Shemale]["ballsScaleMin"] = value_parsed[4]
			dynamicNPCGeneratorSettings[NpcGender.Shemale]["ballsScaleMax"] = value_parsed[5]

		if(optionID == "dynamicNPCGeneratorSettingsBreasts"):
			dynamicNPCGeneratorSettings[NpcGender.Female]["breastsMin"] = value_parsed[0]
			dynamicNPCGeneratorSettings[NpcGender.Female]["breastsMax"] = value_parsed[1]
			dynamicNPCGeneratorSettings[NpcGender.Herm]["breastsMin"] = value_parsed[2]
			dynamicNPCGeneratorSettings[NpcGender.Herm]["breastsMax"] = value_parsed[3]
			dynamicNPCGeneratorSettings[NpcGender.Shemale]["breastsMin"] = value_parsed[4]
			dynamicNPCGeneratorSettings[NpcGender.Shemale]["breastsMax"] = value_parsed[5]

		elif(optionID == "dynamicNPCGeneratorArchetypeSettingsMinArchetypeCount" || optionID == "dynamicNPCGeneratorArchetypeSettingsMaxArchetypeCount"):
			dynamicNPCGeneratorArchetypeSettings[optionID.replace("dynamicNPCGeneratorArchetypeSettings", "").replace("M", "m").replace("Count", "Amount")] = value
		elif(optionID == "dynamicNPCGeneratorArchetypeSettingsOnlyCustomArchetype"):
			dynamicNPCGeneratorArchetypeSettings["onlyCustom"] = value
		elif(optionID.begins_with("dynamicNPCGeneratorArchetypeSettings")):
			var intrest = optionID.replace("dynamicNPCGeneratorArchetypeSettings", "")
			for entry in value.split(" "):
				dynamicNPCGeneratorArchetypeSettings["customSettings"][entry] = intrest
			

	if(categoryID == "alienInfestationSettings"):
		if(optionID == "alienInfestationModEnabled"):
			alienInfestationModEnabled = value
		if(optionID == "alienParasitesEnabled"):
			alienParasitesEnabled = value

func applySettingsEffect():
	if(shouldScaleUI):
		get_tree().set_screen_stretch(SceneTree.STRETCH_MODE_2D,SceneTree.STRETCH_ASPECT_EXPAND,Vector2(1280,720), uiScaleMultiplier)
	else:
		get_tree().set_screen_stretch(SceneTree.STRETCH_MODE_DISABLED,SceneTree.STRETCH_ASPECT_EXPAND,Vector2(1280,720))

func saveData():
	var data = {
		"optionsVersion": 1,
		"enabledContent": enabledContent,
		"fetchNewRelease": fetchNewRelease,
		"menstrualCycleLengthDays": menstrualCycleLengthDays,
		"eggCellLifespanHours": eggCellLifespanHours,
		"playerPregnancyTimeDays": playerPregnancyTimeDays,
		"npcPregnancyTimeDays": npcPregnancyTimeDays,
		"shouldScaleUI": shouldScaleUI,
		"uiScaleMultiplier": uiScaleMultiplier,
		"uiButtonSize": uiButtonSize,
		"showSpeakerName": showSpeakerName,
		"fontSize": fontSize,
		"showShortcuts": showShortcuts,
		"measurementUnits": measurementUnits,
		"requireDoubleTapOnMobile": requireDoubleTapOnMobile,
		"debugPanel": debugPanel,
		"imagePackOrder": imagePackOrder,
		"showCharacterArt": showCharacterArt,
		"showSceneArt": showSceneArt,
		"showSceneCreator": showSceneCreator,
		"showMapArt": showMapArt,
		"rollbackEnabled": rollbackEnabled,
		"rollbackSlots": rollbackSlots,
		"rollbackSaveEvery": rollbackSaveEvery,
		"showModdedLauncher": showModdedLauncher,
		"developerCommentary": developerCommentary,
		"jigglePhysicsBreastsEnabled": jigglePhysicsBreastsEnabled,
		"jigglePhysicsBellyEnabled": jigglePhysicsBellyEnabled,
		"jigglePhysicsButtEnabled": jigglePhysicsButtEnabled,
		"jigglePhysicsGlobalModifier": jigglePhysicsGlobalModifier,
		"advancedShadersEnabled": advancedShadersEnabled,
		"autosaveEnabled": autosaveEnabled,
		"cumProductionModEnabled": cumProductionModEnabled,
		"capacityBallsRatio": capacityBallsRatio,
		"capacityPenisRatio": capacityPenisRatio,
		"capacityModifier": capacityModifier,
		"productionModifier": productionModifier,
		"dynamicNPCGeneratorModEnabled": dynamicNPCGeneratorModEnabled,
		"dynamicNPCGeneratorSettings": dynamicNPCGeneratorSettings,
		"dynamicNPCGeneratorArchetypeSettings": dynamicNPCGeneratorArchetypeSettings,
		"alienInfestationModEnabled": alienInfestationModEnabled,
		"alienParasitesEnabled": alienParasitesEnabled,
	}
	
	return data

func loadData(data):
	enabledContent = loadVar(data, "enabledContent", {})
	fetchNewRelease = loadVar(data, "fetchNewRelease", true)
	menstrualCycleLengthDays = loadVar(data, "menstrualCycleLengthDays", 7)
	eggCellLifespanHours = loadVar(data, "eggCellLifespanHours", 48)
	playerPregnancyTimeDays = loadVar(data, "playerPregnancyTimeDays", 5)
	npcPregnancyTimeDays = loadVar(data, "npcPregnancyTimeDays", 5)
	shouldScaleUI = loadVar(data, "shouldScaleUI", true)
	uiScaleMultiplier = loadVar(data, "uiScaleMultiplier", 1.0)
	uiButtonSize = loadVar(data, "uiButtonSize", 0)
	showSpeakerName = loadVar(data, "showSpeakerName", true)
	fontSize = loadVar(data, "fontSize", "normal")
	showShortcuts = loadVar(data, "showShortcuts", true)
	measurementUnits = loadVar(data, "measurementUnits", "metric")
	requireDoubleTapOnMobile = loadVar(data, "requireDoubleTapOnMobile", false)
	debugPanel = loadVar(data, "debugPanel", false)
	imagePackOrder = loadVar(data, "imagePackOrder", [])
	showCharacterArt = loadVar(data, "showCharacterArt", true)
	showSceneArt = loadVar(data, "showSceneArt", true)
	showSceneCreator = loadVar(data, "showSceneCreator", true)
	showMapArt = loadVar(data, "showMapArt", false)
	rollbackEnabled = loadVar(data, "rollbackEnabled", false)
	rollbackSlots = loadVar(data, "rollbackSlots", 5)
	rollbackSaveEvery = loadVar(data, "rollbackSaveEvery", 1)
	showModdedLauncher = loadVar(data, "showModdedLauncher", false)
	developerCommentary = loadVar(data, "developerCommentary", false)
	jigglePhysicsBreastsEnabled = loadVar(data, "jigglePhysicsBreastsEnabled", true)
	jigglePhysicsBellyEnabled = loadVar(data, "jigglePhysicsBellyEnabled", true)
	jigglePhysicsButtEnabled = loadVar(data, "jigglePhysicsButtEnabled", true)
	jigglePhysicsGlobalModifier = loadVar(data, "jigglePhysicsGlobalModifier", 1.0)
	advancedShadersEnabled = loadVar(data, "advancedShadersEnabled", true)
	autosaveEnabled = loadVar(data, "autosaveEnabled", true)
	cumProductionModEnabled = loadVar(data, "cumProductionModEnabled", false)
	capacityBallsRatio = loadVar(data, "capacityBallsRatio", 1.0)
	capacityPenisRatio = loadVar(data, "capacityPenisRatio", 0.25)
	capacityModifier = loadVar(data, "capacityModifier", 1.0)
	productionModifier = loadVar(data, "productionModifier", 2.0)
	dynamicNPCGeneratorModEnabled = loadVar(data, "dynamicNPCGeneratorModEnabled", false)
	dynamicNPCGeneratorSettings = loadVar(data, "dynamicNPCGeneratorSettings", {
		NpcGender.Male: {
			"thickMin": 0.0,
			"thickMax": 100.0,
			"femMin": 0.0,
			"femMax": 100.0,
			"lenCMMin": 15.0,
			"lenCMMax": 20.0,
			"ballsScaleMin": 1.0,
			"ballsScaleMax": 2.0,
		},
		NpcGender.Female: {
			"thickMin": 0.0,
			"thickMax": 100.0,
			"femMin": 0.0,
			"femMax": 100.0,
			"breastsMin": 3,
			"breastsMax": 7,
		},
		NpcGender.Herm: {
			"thickMin": 0.0,
			"thickMax": 100.0,
			"femMin": 0.0,
			"femMax": 100.0,
			"lenCMMin": 15.0,
			"lenCMMax": 20.0,
			"ballsScaleMin": 1.0,
			"ballsScaleMax": 2.0,
			"breastsMin": 3,
			"breastsMax": 7,
		},
		NpcGender.Shemale: {
			"thickMin": 0.0,
			"thickMax": 100.0,
			"femMin": 0.0,
			"femMax": 100.0,
			"lenCMMin": 15.0,
			"lenCMMax": 20.0,
			"ballsScaleMin": 1.0,
			"ballsScaleMax": 2.0,
			"breastsMin": 3,
			"breastsMax": 7,
		},
		NpcGender.Peachboy: {
			"thickMin": 0.0,
			"thickMax": 100.0,
			"femMin": 0.0,
			"femMax": 100.0,
		},
	})
	dynamicNPCGeneratorArchetypeSettings = loadVar(data, "dynamicNPCGeneratorArchetypeSettings", {
		"minArchetypeAmount" : 4,
		"maxArchetypeAmount" : 4,
		"onlyCustom": false,
		"customSettings": {
			Fetish.AnalSexGiving: FetishInterest.Neutral,
			Fetish.AnalSexReceiving: FetishInterest.Neutral,
			Fetish.BeingBred: FetishInterest.Neutral,
			Fetish.Breeding: FetishInterest.Neutral,
			Fetish.Bodywritings: FetishInterest.Neutral,
			Fetish.Bondage: FetishInterest.Neutral,
			Fetish.Condoms: FetishInterest.Neutral,
			Fetish.DrugUse: FetishInterest.Neutral,
			Fetish.Exhibitionism: FetishInterest.Neutral,
			Fetish.FeetplayGiving: FetishInterest.Neutral,
			Fetish.FeetplayReceiving: FetishInterest.Neutral,
			Fetish.Masochism: FetishInterest.Neutral,
			Fetish.OralSexGiving: FetishInterest.Neutral,
			Fetish.OralSexReceiving: FetishInterest.Neutral,
			Fetish.Rigging: FetishInterest.Neutral,
			Fetish.RimmingGiving: FetishInterest.Neutral,
			Fetish.RimmingReceiving: FetishInterest.Neutral,
			Fetish.Sadism: FetishInterest.Neutral,
			Fetish.StraponSexAnal: FetishInterest.Neutral,
			Fetish.StraponSexVaginal: FetishInterest.Neutral,
			Fetish.Tribadism: FetishInterest.Neutral,
			Fetish.UnconsciousSex: FetishInterest.Neutral,
			Fetish.VaginalSexGiving: FetishInterest.Neutral,
			Fetish.VaginalSexReceiving: FetishInterest.Neutral,
		}
	})
	alienInfestationModEnabled = loadVar(data, "alienInfestationModEnabled", false)
	alienParasitesEnabled = loadVar(data, "alienParasitesEnabled", false)

func saveToFile():
	var saveData = saveData()
	var save_game = File.new()
	save_game.open(optionsFilepath, File.WRITE)
	
	save_game.store_line(JSON.print(saveData, "\t", true))
	
	save_game.close()

func loadFromFile():
	var save_game = File.new()
	if not save_game.file_exists(optionsFilepath):
		print("GlobalOptions: No saved options found, default values will be used")
		return
	
	save_game.open(optionsFilepath, File.READ)
	#var saveData = parse_json(save_game.get_as_text())
	var jsonResult = JSON.parse(save_game.get_as_text())
	if(jsonResult.error != OK):
		Log.printerr("GlobalOptions: Error while loading the options file, the file is not a valid json")
		return
	
	var saveData = jsonResult.result
	loadData(saveData)
	save_game.close()

func loadVar(data: Dictionary, key, nullvalue = null):
	if(!data.has(key)):
		Log.printerr("Warning: Options file doesn't have key "+key+". Using "+str(nullvalue)+" as default value. File: "+Util.getStackFunction())
		return nullvalue
		
	if(nullvalue != null && typeof(data[key]) != typeof(nullvalue) && !(typeof(data[key]) == TYPE_REAL && typeof(nullvalue) == TYPE_INT)):
		Log.printerr("Warning: value mismatch when loading an options file. Key '"+key+"' has type "+Util.variantTypeToString(typeof(data[key]))+" and default value has type "+Util.variantTypeToString(typeof(nullvalue))+". Is that an error? "+Util.getStackFunction())
		
	if(data[key] == null && nullvalue != null):
		Log.printerr("Warning: loaded value is null while the default value isn't. Is that correct? "+Util.getStackFunction())
		
	return data[key]

func resetRenderSettings():
	myProjectSettings.resetToDefault()

func checkImagePackOrder(imagePacks):
	var newImagePackOrder = []
	
	for imagePackID in imagePackOrder:
		if (imagePacks.has(imagePackID)):
			newImagePackOrder.append(imagePackID)
	
	for imagePackID in imagePacks:
		if(!newImagePackOrder.has(imagePackID)):
			newImagePackOrder.push_front(imagePackID)
	
	imagePackOrder = newImagePackOrder
	print("checkImagePackOrder DONE ",imagePackOrder)

func getImagePackOrder():
	return imagePackOrder
