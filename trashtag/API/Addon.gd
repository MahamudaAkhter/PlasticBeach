extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	$FileDialog.mode = FileDialog.MODE_OPEN_FILE
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_img_pressed():
	$FileDialog.popup_centered()
	$info.disabled= false
	pass # replace with function body


func _on_FileDialog_file_selected(path):
	$path.text = path
	pass # replace with function body


func _on_info_pressed():
	$info2.show()
	pass # replace with function body


func _on_close_pressed():
	$info2.hide()
	pass # replace with function body


func _on_app_pressed():
	get_tree().change_scene("res://main.tscn")
	pass # replace with function body
