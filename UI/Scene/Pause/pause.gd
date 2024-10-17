extends Control

@onready var resume: Button = $CenterContainer/PanelContainer/MarginContainer/VBoxContainer/Resume
@onready var pause: Control = $"."
var menu_path: String = "res://UI/Scene/Menu/menu.tscn"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	resume.grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("Pause"):
		pause.visible = true
		get_tree().paused = true


func _on_resume_pressed() -> void:
	pause.visible = false
	get_tree().paused = false


func _on_to_main_menu_pressed() -> void:
	Global.goto_scene(menu_path)
	pause.visible = false
	
	
func _on_quit_pressed() -> void:
	get_tree().quit()
	
