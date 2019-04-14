extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here nice
	pass

func _process(delta):
	$footer/counter.text = "Pins submitted: "+ String(global.tags)
	$footer/counter2.text = "Pins in progress: "+ String(global.done)
	if(global.type == 1 and not global.accepted):
		$panels/available.show()
	if(global.type == 2):
		$panels/progress.show()
	if(global.type == 3):
		$panels/done.show()
	if(global.type == 4 and not global.acceptednew):
		$panels/new.show()
	if(global.type == 1 && global.accepted):
		$panels/progress.show()
	if(global.type == 4 && global.acceptednew):
		$panels/progress.show()
	if(global.added):
		$bg/group/new.show()

func _on_profile_pressed():
	get_tree().change_scene("res://user.tscn")
	pass # replace with function body


func _on_adding_pressed():
	#$panels/add.show()
	get_tree().change_scene("res://newPin.tscn")
	pass # replace with function body
