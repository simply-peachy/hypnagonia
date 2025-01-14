extends CombatEffect


func _on_enemy_turn_ended(_turn: Turn) -> void:
	if entity_type == Terms.ENEMY:
		poison_courses()

func _on_player_turn_ended(_turn: Turn) -> void:
	if entity_type == Terms.PLAYER:
		poison_courses()

func poison_courses() -> void:
	var script = [{
		"name": "modify_damage",
		"subject": "self",
		"amount": stacks,
		"tags": ["Blockable", "Burn", "Combat Effect", "Debuff"],
	}]
	execute_script(script)
	set_stacks(stacks - 1, ["Turn Decrease"])
