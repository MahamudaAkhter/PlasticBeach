extends Panel

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	$type.add_item("Mixed", 5)
	$type.add_item("Bottles", 4)
	$type.add_item("Bags", 3)
	$type.add_item("Straws", 1)
	$type.add_item("Cannot say", 2)
	
	$amount.add_item("1 person",1)
	$amount.add_item("2 people",2)
	$amount.add_item("3 people",3)
	$amount.add_item("Medium group",4)
	$amount.add_item("Large group",5)
		
	$FileDialog.mode = FileDialog.MODE_OPEN_FILE
	pass
var imgpath = ""
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_upload_pressed():
	$FileDialog.popup()
	pass # replace with function body


func _on_Add_pressed():
	global.addtag()
	global.pinname = $name.text
	global.location = $location.text
	global.img = imgpath
	global.rating = $amount.selected
	global.added = true
	get_tree().change_scene("res://main.tscn")
	pass # replace with function body


func _on_FileDialog_file_selected(path):
	imgpath = path
	$link.text = path
	pass # replace with function body


func _on_Cancel_pressed():
	get_tree().change_scene("res://main.tscn")
	self.hide()
	pass # replace with function body
