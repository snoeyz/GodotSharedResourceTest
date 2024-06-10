class_name PlayerData extends Resource

@export var croc_count := 0:
	set(value):
		croc_count = value
		changed.emit()
