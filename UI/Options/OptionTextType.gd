extends HBoxContainer

signal value_changed(categoryID, id, newvalue)

var id
var categoryID
var description

func setOptionName(newname):
	$Label.text = newname

func getOptionName():
	return $Label.text

func setOptionValue(_newvalue):
	$TextEdit.text = _newvalue

func setDescription(newdesc):
	description = newdesc

func getDescription():
	return description


func _on_TextEdit_text_ok():
	var value = $TextEdit.text
	emit_signal("value_changed", categoryID, id, value)
