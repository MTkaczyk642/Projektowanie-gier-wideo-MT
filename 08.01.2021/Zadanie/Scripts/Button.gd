 extends Button

export var reference_path = ""


func _ready():
	
		
	connect("mouse_entered", self, "on_Button_mouse_enterd")
	connect("pressed", self, "_on_Button_Pressed")
	
func _on_Button_mouse_enterd():
	grab_focus()

func _on_Button_Pressed():
	if(reference_path != ""):
		get_tree().change_scene(reference_path)
	else:
		get_tree().quit()
