extends Control
@export var menuCards: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	$Card.animStartTime = float(0.4)
	$Card.mainMenu()
	$Card2.animStartTime = float(0.3)
	$Card2.mainMenu()
	$Card3.animStartTime = float(0.2)
	$Card3.mainMenu()
	$Card4.animStartTime = float(0.1)
	$Card4.mainMenu()
	$Card5.animStartTime = float(0.0)
	$Card5.mainMenu()	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
