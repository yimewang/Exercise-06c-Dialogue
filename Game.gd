extends Spatial

func _ready():
	var new_dialog = Dialogic.start('Conversation')
	add_child(new_dialog)
