class_name PlayerDataLoader extends Resource

const STORAGE_PATH := "res://player_data.tres"

static func from_storage() -> PlayerData:
	return ResourceLoader.load(STORAGE_PATH)
