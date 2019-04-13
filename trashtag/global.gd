extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var tags = 0
var done = 0 
#3 is done
#2 is progress
#1 is available
var type = 0
var hide = false

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func addtag():
	tags += 1 
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
