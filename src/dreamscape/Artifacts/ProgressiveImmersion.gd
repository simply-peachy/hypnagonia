extends Artifact

func _on_player_turn_started(_turn: Turn = null) -> void:
	var script = [
		{
			"name": "mod_counter",
			"counter_name": "immersion",
			"modification": ArtifactDefinitions.ProgressiveImmersion.amounts.immersion_amount,
		},
	]
	execute_script(script)