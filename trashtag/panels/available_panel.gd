extends Panel

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	global.hide = false
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_close_pressed():
	self.hide()
	global.type = 0
	pass # replace with function body


func _on_accept_pressed():
	global.accepted = true
	global.type = 0
	global.done += 1 
	self.hide()
	pass # replace with function body
