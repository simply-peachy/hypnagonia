extends EnemyEntity

const BOSS_NAME := "Narcissist"
const HEALTH := 150
const TYPE := "Abuse"
const DAMAGE := 0
const SIZE := Vector2(160,160)
	
func setup_boss() -> void:
	canonical_name = BOSS_NAME
	name = BOSS_NAME
	health = HEALTH
	type = TYPE
	damage = DAMAGE
	entity_size = SIZE
