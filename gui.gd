extends CanvasLayer

const CROC = preload("res://Croc.png")

@onready var label = $HBoxContainer/Label

var playerData := PlayerDataLoader.from_storage()

func _ready() -> void:
	_on_state_changed()
	playerData.changed.connect(_on_state_changed)

func _on_state_changed() -> void:
	label.text = "Crocs Collected: %d" % playerData.croc_count
