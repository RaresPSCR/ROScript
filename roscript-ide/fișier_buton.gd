extends MenuButton

func _ready():
	var popup = get_popup()
	popup.add_item("Proiect nou")
	popup.add_item("Importă")
	popup.add_item("Salvează")
	popup.id_pressed.connect(_on_item_selected)
	

func _on_item_selected(id):
	var item_name = get_popup().get_item_text(id)
	match item_name:
		"Proiect nou":
			print("Proiect nou")
		"Importă":
			print("Importă")
		"Salvează":
			print("Salvează")
