extends CombatEffect

func _ready() -> void:
	cfc.NMAP.deck.connect("shuffle_completed", self, "_on_deck_shuffled")
	
func _on_deck_shuffled() -> void:
	# We pause slighty, to allow the signals to propagate to the turn first
	yield(get_tree().create_timer(0.1), "timeout")
	if not cfc.NMAP.board.turn.turn_event_count.get("deck_shuffled",0) % 2:
		var eureka = [{
					"name": "apply_effect",
					"effect_name": Terms.ACTIVE_EFFECTS.buffer.name,
					"subject": "dreamer",
					"modification": 1,
				}]
		execute_script(eureka)