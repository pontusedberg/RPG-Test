extends Area2D
signal Mele_Attack(int)

func _on_character_char_attack(value: Variant) -> void:
	Do_Attack()


			
func Do_Attack():
	if visible == false:
		visible = true
		emit_signal("Mele_Attack",1)
		print("MeleAttackVisible")
	else:
		visible = false
		print("MeleAttackInvisible")
		
		
