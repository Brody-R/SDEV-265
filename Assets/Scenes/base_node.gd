extends Node

var menuScene = preload("res://Assets/Scenes/main_menu.tscn")
var gameScene = preload("res://Assets/Scenes/game.tscn")

var currentScene: Node = null



func _ready():
	DisplayServer.window_set_size(Vector2i(1280, 720))
	loadScene("MainMenu")

func loadScene(desiredSceneName):
	if currentScene:
		currentScene.queue_free()
		currentScene = null

	var packed: PackedScene
	
	if desiredSceneName == "MainMenu":
		packed = menuScene
	elif desiredSceneName == "Game":
		packed = gameScene
	else:
		push_error("Scene not found: " + desiredSceneName)
		return
	
	currentScene = packed.instantiate()
	add_child(currentScene)
	
