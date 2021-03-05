extends Control


onready var displayText: Label = $CenterContainer/Label

func _ready() -> void:
	get_tree().connect("files_dropped", self, "_get_dropped_files")

func _get_dropped_files(filepaths: PoolStringArray, screen: int) -> void:
	var filePath: String = filepaths[0]
	var loadedFile: File = File.new()
	loadedFile.open(filePath, File.READ)
	displayText.text = loadedFile.get_as_text()
