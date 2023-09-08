extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_Cancel_pressed():
	self.visible = false

func _on_Download_pressed():
	var _ok = OS.shell_open("https://github.com/NSWIP/BDCC-NSMOD/releases/latest")
	self.visible = false
