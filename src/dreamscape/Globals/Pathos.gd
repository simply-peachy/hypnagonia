class_name Pathos
extends Reference

var repressed := {
	Terms.RUN_ACCUMULATION_NAMES.enemy: 20,
	Terms.RUN_ACCUMULATION_NAMES.rest: 0,
	Terms.RUN_ACCUMULATION_NAMES.nce: 5,
	Terms.RUN_ACCUMULATION_NAMES.shop: 0,
	Terms.RUN_ACCUMULATION_NAMES.elite: 0,
	Terms.RUN_ACCUMULATION_NAMES.artifact: 0,
	Terms.RUN_ACCUMULATION_NAMES.boss: 0,
}

var progressions := {
	Terms.RUN_ACCUMULATION_NAMES.enemy: range(11,20),
	Terms.RUN_ACCUMULATION_NAMES.rest: range(3,5),
	Terms.RUN_ACCUMULATION_NAMES.shop: range(2,4),
	Terms.RUN_ACCUMULATION_NAMES.artifact: range(2,3),
	Terms.RUN_ACCUMULATION_NAMES.elite: range(5,10),
	Terms.RUN_ACCUMULATION_NAMES.nce: range(7,11),
	Terms.RUN_ACCUMULATION_NAMES.boss: range(6,7),
}

var released := {}

func _init() -> void:
	for accumulation_name in Terms.RUN_ACCUMULATION_NAMES.values():
		released[accumulation_name] = 0
	var random_pathos =  grab_random_pathos()
	# Every run, starts the player with a bunch of released pathos on a random one.
	released[random_pathos] +=\
			round(get_progression_average(random_pathos)* CFUtils.randf_range(3,5))
#	released[grab_random_pathos()] +=\
#			round(get_progression_average(grab_random_pathos())* CFUtils.randf_range(3,5))
#	released[grab_random_pathos()] +=\
#			round(get_progression_average(grab_random_pathos())* CFUtils.randf_range(3,5))

func repress(pathos_to_ignore := []) -> void:
	for entry in repressed:
		if not entry in pathos_to_ignore:
			repressed[entry] += get_progression(entry)


# modifies the specified repressed pathos by a given amount
func repress_pathos(pathos: String, amount: int) -> void:
	repressed[pathos] += amount
	if repressed[pathos] < 0:
		repressed[pathos] = 0


func release(entry: String) -> int:
	var retcode : int = CFConst.ReturnCode.CHANGED
	if repressed[entry] == 0:
		retcode = CFConst.ReturnCode.OK
	released[entry] += repressed[entry]
	repressed[entry] = 0
	return(retcode)

# modifies the specified released pathos by a given amount
func release_pathos(pathos: String, amount: int) -> void:
	released[pathos] += amount
	if released[pathos] < 0:
		released[pathos] = 0

# Returns one random possible progression from the range
# Grabbing the number via a fuction, rather than directly from the var
# allows us to modify this via artifacts during runtime
func get_progression(entry) -> int:
	var rand_array : Array = progressions[entry].duplicate()
	CFUtils.shuffle_array(rand_array)
	return(rand_array[0])


# Returns the average value of the progression specified
func get_progression_average(entry) -> float:
	var total: int = 0
	for p in progressions[entry]:
		total += p
	return(total / progressions[entry].size())


func grab_random_pathos() -> String:
	var all_pathos = Terms.RUN_ACCUMULATION_NAMES.values()
	CFUtils.shuffle_array(all_pathos)
	return(all_pathos[0])

# Returns a dictionary with the highest pathos, the lowest pathos
# and the middle pathos. It excludes those which are at 0, unless there's not
# enough non-0 options to fill all these.
func get_pathos_org(type := "released") -> Dictionary:
	var results_dict := {
		"highest_pathos": {
			"found":[],
			"value": 0,
			"selected": ''
		},
		"lowest_pathos": {
			"found":[],
			"value": 10000,
			"selected": ''
		},
		"middle_pathos": {
			"value": 0,
			"selected": ''
		},
	}
	var zero_pathos:= []
	var pathos_dict : Dictionary = get(type)
	for pathos in pathos_dict:
		if pathos_dict[pathos] == 0:
			zero_pathos.append(pathos)
			continue
		# This sort of elif, ensure the same pathos cannot be at the same
		# time the highest and lowest
		if pathos_dict[pathos] == results_dict["lowest_pathos"]["value"]:
			results_dict["lowest_pathos"]["found"].append(pathos)
		if pathos_dict[pathos] == results_dict["highest_pathos"]["value"]:
			results_dict["highest_pathos"]["found"].append(pathos)
		if pathos_dict[pathos] > results_dict["highest_pathos"]["value"]:
			results_dict["highest_pathos"]["found"] = [pathos]
			results_dict["highest_pathos"]["value"] = pathos_dict[pathos]
		if pathos_dict[pathos] < results_dict["lowest_pathos"]["value"]:
			results_dict["lowest_pathos"]["found"] = [pathos]
			results_dict["lowest_pathos"]["value"] = pathos_dict[pathos]
#			print_debug(pathos, pathos_dict[pathos])
	if zero_pathos.size() > 1:
		CFUtils.shuffle_array(zero_pathos)
	for pathos_org_type in ["highest_pathos", "lowest_pathos"]:
		if results_dict[pathos_org_type]["found"].size() == 0:
			results_dict[pathos_org_type]["selected"] = zero_pathos.pop_back()
		else:
			if results_dict[pathos_org_type]["found"].size() > 1:
				CFUtils.shuffle_array(results_dict[pathos_org_type]["found"])
			results_dict[pathos_org_type]["selected"] = results_dict[pathos_org_type]["found"][0]
	if pathos_dict[results_dict["lowest_pathos"]["selected"]] == 0:
		results_dict["middle_pathos"]["selected"] = zero_pathos.pop_back()
	else:
		for pathos in pathos_dict:
			if pathos_dict[pathos] == 0\
					or pathos == results_dict["highest_pathos"]["selected"]\
					or pathos == results_dict["lowest_pathos"]["selected"]:
#				print_debug('aaa ', pathos, pathos_dict[pathos])
				continue
			results_dict["middle_pathos"]["selected"] = pathos
			break
	if results_dict["middle_pathos"]["selected"] == '':
		results_dict["middle_pathos"]["selected"] = results_dict["lowest_pathos"]["selected"]
		results_dict["lowest_pathos"]["selected"] = zero_pathos.pop_back()
	return(results_dict)