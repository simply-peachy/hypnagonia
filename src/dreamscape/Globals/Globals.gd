extends Node


const PLAYER_COMBAT_ENTITY_SIZE = Vector2(120,120)

var player: Player
var encounters: SingleRun
var current_encounter: SingleEncounter
var journal: Journal
var music: Music
# I use this to keep track of which journal texts I haven't used yet in this run
# to avoid writing always the same thing
var unused_journal_texts := {}
#var utils := DeckbuilderUtils.new()
var card_back_texture_selection := 0
var run_unlocks := {}


# Test setup. This should happen at game start
func _ready() -> void:
	music = Music.new()
	player = Player.new()
	encounters = SingleRun.new()


func reset() -> void:
	player = Player.new()
	encounters = SingleRun.new()
	current_encounter = null
	journal = null


func quit_to_main() -> void:
# warning-ignore:return_value_discarded
	get_tree().change_scene(CFConst.PATH_CUSTOM + 'MainMenu/MainMenu.tscn')
	cfc.quit_game()
	reset()


func hide_all_previews() -> void:
	cfc.hide_all_previews()
	for artifact_preview_node in cfc.get_tree().get_nodes_in_group("artifact_preview"):
		artifact_preview_node.hide_preview_artifact()

func _exit_tree():
	print("Hypnagonia Exited Gracefully.")
