extends Memory

func execute_memory_effect() -> void:
	var upgrades = artifact_object.upgrades_amount * MemoryDefinitions.DefendSelf.amounts.defence_amount
	var script = [
		{
			"name": "assign_defence",
			"tags": ["Memory"],
			"subject": "dreamer",
			"amount": MemoryDefinitions.DefendSelf.amounts.damage_amount + upgrades,
		},
	]
	execute_script(script)