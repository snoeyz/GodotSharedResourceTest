extends CanvasLayer

const CROC = preload("res://Croc.png")

@onready var label = $HBoxContainer/Label

# Alternative method to programatically load the resource
const STORAGE_PATH := "res://player_data.tres"
var playerData := ResourceLoader.load(STORAGE_PATH)

func _ready() -> void:
	_on_state_changed()
	playerData.changed.connect(_on_state_changed)

func _on_state_changed() -> void:
	label.text = "Crocs Collected: %d" % playerData.croc_count
