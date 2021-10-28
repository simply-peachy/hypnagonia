#class_name CoreDefinitions
extends Reference

const SET = "Core Set"
const CARDS := {
	"Confidence": {
		"Type": "Control",
		"Tags": [],
		"Abilities": "Gain {defence_amount} {confidence}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Basic",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 5
		},
		"_upgrade_threshold": 5,
		"_upgrades": [
			"+ Confidence +",
			"@ Confidence @",
			"- Confidence -",
		],
	},
	"+ Confidence +": {
		"Type": "Control",
		"Tags": [],
		"Abilities": "Gain {defence_amount} {confidence}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Basic",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 8
		},
		"_is_upgrade": true,
	},
	"@ Confidence @": {
		"Type": "Control",
		"Tags": [],
		"Abilities": "Gain {defence_amount} {confidence}",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Basic",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 4
		},
		"_is_upgrade": true,
	},
	"- Confidence -": {
		"Type": "Control",
		"Tags": [],
		"Abilities": "Gain {defence_amount} {confidence}. {release}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Basic",
		"_keywords": ["confidence","release"],
		"_avoid_normal_discard": true,
		"_amounts": {
			"defence_amount": 10
		},
		"_is_upgrade": true,
	},
	"Interpretation": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for {damage_amount}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Basic",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 6
		},
		"_upgrade_threshold": 5,
		"_upgrades": [
			"+ Interpretation +",
			"@ Interpretation @",
			"- Interpretation -",
		],
	},
	"@ Interpretation @": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for {damage_amount}",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Basic",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 5
		},
		"_is_upgrade": true,
	},
	"+ Interpretation +": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for {damage_amount}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Basic",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 9
		},
		"_is_upgrade": true,
	},
	"- Interpretation -": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for {damage_amount}. {release}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Basic",
		"_keywords": ["interpretation","release"],
		"_avoid_normal_discard": true,
		"_amounts": {
			"damage_amount": 12
		},
		"_is_upgrade": true,
	},
	"Out of Reach": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.impervious.name],
		"Abilities": "Gain {effect_stacks} {untouchable}",
		"Cost": 3,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Basic",
		"_amounts": {
			"effect_stacks": 3
		},
		"_upgrade_threshold": 6,
		"_upgrades": [
			"@ Out of Reach @",
			"* Out of Reach *",
		],
	},
	"@ Out of Reach @": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.impervious.name],
		"Abilities": "Gain {effect_stacks} {untouchable}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Basic",
		"_amounts": {
			"effect_stacks": 3
		},
		"_is_upgrade": true,
	},
	"* Out of Reach *": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.impervious.name],
		"Abilities": "Gain {effect_stacks} {untouchable}",
		"Cost": 4,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Basic",
		"_amounts": {
			"effect_stacks": 6
		},
		"_is_upgrade": true,
	},
	"Dive-in": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.risky.name],
		"Abilities": "Gain {effect_stacks} {shaken}\nYour next {damage} is doubled.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.vulnerable.name: Terms.PLAYER
		},
		"_keywords": ["interpretation"],
		"_amounts": {
			"effect_stacks": 2
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"Powerful Dive-in",
			"Enhanced Dive-in",
		],
	},
	"Enhanced Dive-in": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.risky.name],
		"Abilities": "Gain {effect_stacks} {shaken}\nYour next {damage} is doubled.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.vulnerable.name: Terms.PLAYER
		},
		"_keywords": ["interpretation"],
		"_amounts": {
			"effect_stacks": 1
		},
		"_is_upgrade": true,
	},
	"Powerful Dive-in": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.risky.name],
		"Abilities": "Gain {effect_stacks} {shaken}\nYour next {damage} is tripled.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.vulnerable.name: Terms.PLAYER
		},
		"_keywords": ["interpretation"],
		"_amounts": {
			"effect_stacks": 3
		},
		"_is_upgrade": true,
	},
	"Safety of Air": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.relax.name, Terms.GENERIC_TAGS.slumber.name],
		"Abilities": "{relax} for {healing_amount}. {forget}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["forget"],
		"_amounts": {
			"healing_amount": 4
		},
		"_upgrade_threshold": 8,
		"_upgrades": [
			"+ Safety of Air +",
			"Sustained Safety of Air",
			"@ Safety of Air @",
		],
	},
	"+ Safety of Air +": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.relax.name, Terms.GENERIC_TAGS.slumber.name],
		"Abilities": "{relax} for {healing_amount}. {forget}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["forget"],
		"_amounts": {
			"healing_amount": 7
		},
		"_is_upgrade": true,
	},
	"@ Safety of Air @": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.relax.name, Terms.GENERIC_TAGS.slumber.name],
		"Abilities": "{relax} for {healing_amount}. {forget}.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["forget"],
		"_amounts": {
			"healing_amount": 4
		},
		"_is_upgrade": true,
	},
	"Sustained Safety of Air": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.relax.name],
		"Abilities": "{relax} for {healing_amount}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": [],
		"_amounts": {
			"healing_amount": 4
		},
		"_is_upgrade": true,
	},
	"Nothing to Fear": {
		"Type": "Concentration",
		"Tags": [Terms.GENERIC_TAGS.risky.name, Terms.GENERIC_TAGS.purpose.name],
		"Abilities": "Gain 1 {immersion} at the start of each turn.\n"\
			+ " Increase all {stress} taken from Torment intents by 2.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["stress"],
		"_upgrade_threshold": 5,
		"_upgrades": [
			"@ Nothing to Fear @",
			"Absolutely Nothing to Fear",
		],
	},
	"@ Nothing to Fear @": {
		"Type": "Concentration",
		"Tags": [Terms.GENERIC_TAGS.risky.name, Terms.GENERIC_TAGS.purpose.name],
		"Abilities": "Gain 1 {immersion} at the start of each turn.\n"\
			+ " Increase all {stress} taken from Torment intents by 2.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["stress"],
		"_is_upgrade": true,
	},
	"Absolutely Nothing to Fear": {
		"Type": "Concentration",
		"Tags": [Terms.GENERIC_TAGS.risky.name, Terms.GENERIC_TAGS.purpose.name],
		"Abilities": "Gain 1 {immersion} at the start of each turn.\n"\
			+ " Increase all {stress} taken from Torment intents by 1.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["stress"],
		"_is_upgrade": true,
	},
	"Confounding Movements": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.disempower.name],
		"Abilities": "Gain {defence_amount} {confidence}\nApply {effect_stacks} {confusion} to target Torment.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Common",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 9,
			"effect_stacks": 1,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"+ Confounding Movements +",
			"* Confounding Movements *",
		],
	},
	"+ Confounding Movements +": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.disempower.name],
		"Abilities": "Gain {defence_amount} {confidence}\nApply {effect_stacks} {confusion} to target Torment.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Common",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 14,
			"effect_stacks": 1,
		},
		"_is_upgrade": true,
	},
	"* Confounding Movements *": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.disempower.name],
		"Abilities": "Gain {defence_amount} {confidence}\nApply {effect_stacks} {confusion} to target Torment.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Common",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 10,
			"effect_stacks": 2,
		},
		"_is_upgrade": true,
	},
	"Noisy Whip": {
		"Type": "Action",
		"Tags": [Terms.ACTIVE_EFFECTS.disempower.name],
		"Abilities": "{damage} for {damage_amount}.\nApply {confusion}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Basic",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 5,
			"effect_stacks": 1,
		},
		"_upgrade_threshold": 5,
		"_upgrades": [
			"+ Noisy Whip +",
			"@ Noisy Whip @",
			"* Noisy Whip *",
			"- Noisy Whip -",
		],
	},
	"@ Noisy Whip @": {
		"Type": "Action",
		"Tags": [Terms.ACTIVE_EFFECTS.disempower.name],
		"Abilities": "{damage} for {damage_amount}.\nApply {confusion}",
		"Cost": 0,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Basic",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 4,
			"effect_stacks": 1,
		},
		"_is_upgrade": true,
	},
	"+ Noisy Whip +": {
		"Type": "Action",
		"Tags": [Terms.ACTIVE_EFFECTS.disempower.name],
		"Abilities": "{damage} for {damage_amount}.\nApply {confusion}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Basic",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 8,
			"effect_stacks": 1,
		},
		"_is_upgrade": true,
	},
	"* Noisy Whip *": {
		"Type": "Action",
		"Tags": [Terms.ACTIVE_EFFECTS.disempower.name],
		"Abilities": "{damage} for {damage_amount}.\nApply {effect_stacks} {confusion}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Basic",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 5,
			"effect_stacks": 2,
		},
		"_is_upgrade": true,
	},
	"- Noisy Whip -": {
		"Type": "Action",
		"Tags": [Terms.ACTIVE_EFFECTS.disempower.name],
		"Abilities": "{damage} for {damage_amount}.\nApply {effect_stacks} {confusion}\n{release}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Basic",
		"_keywords": ["interpretation","release"],
		"_amounts": {
			"damage_amount": 10,
			"effect_stacks": 3,
		},
		"_is_upgrade": true,
	},
	"Inner Justice": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.purpose.name],
		"Abilities": "Gain {immersion_amount} {immersion}",
		"Cost": 3,
		"_illustration": "Nobody",
		"_rarity": "Basic",
		"_amounts": {
			"immersion_amount": 4,
		},
		"_upgrade_threshold": 6,
		"_upgrades": [
			"@ Inner Justice @",
			"+ Inner Justice +",
			"~ Inner Justice ~",
		],
	},
	"@ Inner Justice @": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.purpose.name],
		"Abilities": "Gain {immersion_amount} {immersion}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_rarity": "Basic",
		"_amounts": {
			"immersion_amount": 3,
		},
		"_is_upgrade": true,
	},
	"+ Inner Justice +": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.purpose.name],
		"Abilities": "Gain {immersion_amount} {immersion}",
		"Cost": 4,
		"_illustration": "Nobody",
		"_rarity": "Basic",
		"_amounts": {
			"immersion_amount": 7,
		},
		"_is_upgrade": true,
	},
	"~ Inner Justice ~": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.purpose.name, Terms.GENERIC_TAGS.slumber.name],
		"Abilities": "Gain {immersion_amount} {immersion}. {forget}.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Basic",
		"_amounts": {
			"immersion_amount": 2,
		},
		"_is_upgrade": true,
	},
	"Whirlwind": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name],
		"Abilities": "{damage} for {damage_amount}. Repeat {chain_amount} times",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 3,
			"chain_amount": 3,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"+ Whirlwind +",
			"Wild Whirlwind",
		],
	},
	"+ Whirlwind +": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name],
		"Abilities": "{damage} for {damage_amount}. Repeat {chain_amount} times",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 5,
			"chain_amount": 3,
		},
		"_is_upgrade": true,
	},
	"Wild Whirlwind": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name],
		"Abilities": "{damage} for {damage_amount}. Repeat {chain_amount} times",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 3,
			"chain_amount": 5,
		},
		"_is_upgrade": true,
	},
	"Overview": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "Remove all {defence} from target Torment.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["perplexity"],
		"_upgrade_threshold": 7,
		"_upgrades": [
			"@ Overview @",
			"Piercing Overview",
		],
	},
	"@ Overview @": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "Remove all {defence} from target Torment.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["perplexity"],
		"_is_upgrade": true,
	},
	"Piercing Overview": {
		"Type": "Action",
		"Tags": [Terms.ACTIVE_EFFECTS.vulnerable.name],
		"Abilities": "Remove all {defence} from target Torment and apply {effect_stacks} Shaken",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["perplexity"],
		"_amounts": {
			"effect_stacks": 3,
		},
		"_is_upgrade": true,
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.vulnerable.name: Terms.ENEMY
		},
	},
	"War Paint": { #TODO
		"Type": "Control",
		"Tags": [],
		"Abilities": "All {damage} is increased by 1 this turn.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["interpretation"],
	},
	"Rubber Eggs": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "At the start of your turn, {damage} a random Torment with {confusion} for {effect_damage}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"effect_damage": 6,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"@ Rubber Eggs @",
			"Bouncy Rubber Eggs",
			"Hard Rubber Eggs",
		],
	},
	"@ Rubber Eggs @": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "At the start of your turn, {damage} a random Torment with {confusion} for {effect_damage}.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_amounts": {
			"effect_damage": 6,
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_is_upgrade": true,
	},
	"Hard Rubber Eggs": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "At the start of your turn, {damage} a random Torment with {confusion} for {effect_damage}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_amounts": {
			"effect_damage": 9,
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_is_upgrade": true,
	},
	"Bouncy Rubber Eggs": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "At the start of your turn, {damage} all Torments with {confusion} for {effect_damage}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_amounts": {
			"effect_damage": 6,
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_is_upgrade": true,
	},
	"The Joke": {
		"Type": "Action",
		"Tags": [Terms.ACTIVE_EFFECTS.disempower.name],
		"Abilities": "Target a Torment. If it doesn't have {confusion} Apply {effect_stacks} {confusion}"\
			+ " If it has {confusion}, {damage} for {damage_amount}.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 15,
			"effect_stacks": 4,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"* The Joke *",
			"+ The Joke +",
			"= The Joke =",
		],
		
	},
	"* The Joke *": {
		"Type": "Action",
		"Tags": [Terms.ACTIVE_EFFECTS.disempower.name],
		"Abilities": "Target a Torment. If it doesn't have {confusion} Apply {effect_stacks} {confusion}"\
			+ " If it has {confusion}, {damage} for {damage_amount}.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 14,
			"effect_stacks": 7,
		},
		"_is_upgrade": true,
		"_reuse_script": "The Joke",
	},
	"+ The Joke +": {
		"Type": "Action",
		"Tags": [Terms.ACTIVE_EFFECTS.disempower.name],
		"Abilities": "Target a Torment. If it doesn't have {confusion} Apply {effect_stacks} {confusion}"\
			+ " If it has {confusion}, {damage} for {damage_amount}.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 22,
			"effect_stacks": 3,
		},
		"_is_upgrade": true,
		"_reuse_script": "The Joke",
	},
	"= The Joke =": {
		"Type": "Action",
		"Tags": [Terms.ACTIVE_EFFECTS.disempower.name],
		"Abilities": "Target a Torment. If it doesn't have {confusion} Apply {effect_stacks} {confusion}"\
			+ " If it has {confusion}, {damage} for {damage_amount}.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 18,
			"effect_stacks": 5,
		},
		"_is_upgrade": true,
		"_reuse_script": "The Joke",
	},
	"Nunclucks": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "Increase your {damage} by {effect_damage} for each stack of {confusion} on the Torment.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Rare",
		"_keywords": ["interpretation"],
		"_amounts": {
			"effect_damage": 1,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"@ Nunclucks @",
			"Massive Nunclucks",
		],
	},
	"@ Nunclucks @": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "Increase your {damage} by {effect_damage} for each stack of {confusion} on the Torment.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Rare",
		"_keywords": ["interpretation"],
		"_amounts": {
			"effect_damage": 1,
		},
		"_is_upgrade": true,
	},
	"Massive Nunclucks": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "Increase your {damage} by {effect_damage} for each stack of {confusion} on the Torment.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Rare",
		"_keywords": ["interpretation"],
		"_amounts": {
			"effect_damage": 2,
		},
		"_is_upgrade": true,
	},
	"Gummiraptor": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name],
		"Abilities": "{damage} for {damage_amount}.\n"\
			+ "Repeat this if Torments are not going to be inflicting any {stress} this turn.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["interpretation", "stress"],
		"_amounts": {
			"damage_amount": 14,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"@ Gummiraptor @",
			"+ Gummiraptor +",
			"Smart Gummiraptor",
		],
	},
	"@ Gummiraptor @": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name],
		"Abilities": "{damage} for {damage_amount}.\n"\
			+ "Repeat this if Torments are not going to be inflicting any {stress} this turn.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["interpretation", "stress"],
		"_amounts": {
			"damage_amount": 12,
		},
		"_is_upgrade": true,
	},
	"+ Gummiraptor +": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name],
		"Abilities": "{damage} for {damage_amount}.\n"\
			+ "Repeat this if Torments are not going to be inflicting any {stress} this turn.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["interpretation", "stress"],
		"_amounts": {
			"damage_amount": 19,
		},
		"_is_upgrade": true,
	},
	"Smart Gummiraptor": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name],
		"Abilities": "{damage} for {damage_amount}.\n"\
			+ "Repeat this if Torments are going to be inflicting 5 or less {stress} this turn.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["interpretation", "stress"],
		"_amounts": {
			"damage_amount": 15,
		},
		"_is_upgrade": true,
	},
	"Cocky Retort": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.swift.name],
		"Abilities": "Gain {defence_amount} {confidence}\n Draw {draw_amount} card.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 8,
			"draw_amount": 1,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"+ Cocky Retort +",
			"! Cocky Retort !",
		],
	},
	"+ Cocky Retort +": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.swift.name],
		"Abilities": "Gain {defence_amount} {confidence}\n Draw {draw_amount} card.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 12,
			"draw_amount": 1,
		},
		"_is_upgrade": true,
	},
	"! Cocky Retort !": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.swift.name],
		"Abilities": "Gain {defence_amount} {confidence}\n Draw {draw_amount} cards.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 8,
			"draw_amount": 2,
		},
		"_is_upgrade": true,
	},
	"Rapid Encirclement": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.vulnerable.name],
		"Abilities": "Apply {effect_stacks} {shaken} to all Torments.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.vulnerable.name: Terms.ENEMY
		},
		"_rarity": "Common",
		"_amounts": {
			"effect_stacks": 2,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"* Rapid Encirclement *",
			"~ Rapid Encirclement ~",
		],
	},
	"* Rapid Encirclement *": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.vulnerable.name],
		"Abilities": "Apply {effect_stacks} {shaken} to all Torments.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.vulnerable.name: Terms.ENEMY
		},
		"_rarity": "Common",
		"_amounts": {
			"effect_stacks": 4,
		},
		"_is_upgrade": true,
	},
	"~ Rapid Encirclement ~": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.vulnerable.name],
		"Abilities": "Apply {effect_stacks} {shaken} to all Torments. {forget}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.vulnerable.name: Terms.ENEMY
		},
		"_rarity": "Common",
		"_amounts": {
			"effect_stacks": 7,
		},
		"_is_upgrade": true,
	},
	"Barrel Through": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name],
		"Abilities": "{damage} for {damage_amount}.\nIf the Torment has {shaken}, {damage} all other Torments for {damage_amount2}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.vulnerable.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 8,
			"damage_amount2": 12,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"+ Barrel Through +",
			"= Barrel Through =",
		],
	},
	"+ Barrel Through +": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name],
		"Abilities": "{damage} for {damage_amount}.\nIf the Torment has {shaken}, {damage} all other Torments for {damage_amount2}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.vulnerable.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 12,
			"damage_amount2": 12,
		},
		"_is_upgrade": true,
	},
	"= Barrel Through =": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name],
		"Abilities": "{damage} for {damage_amount}.\nIf the Torment has {shaken}, {damage} all other Torments for {damage_amount2}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.vulnerable.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 15,
			"damage_amount2": 8,
		},
		"_is_upgrade": true,
	},
	"Intimidate": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.poison.name],
		"Abilities": "Apply {effect_stacks} {doubt} to all Torments",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_rarity": "Common",
		"_amounts": {
			"effect_stacks": 2,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"@ Intimidate @",
			"* Intimidate *",
		],
	},
	"@ Intimidate @": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.poison.name],
		"Abilities": "Apply {effect_stacks} {doubt} to all Torments",
		"Cost": 0,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_rarity": "Common",
		"_amounts": {
			"effect_stacks": 2,
		},
		"_is_upgrade": true,
	},
	"* Intimidate *": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.poison.name],
		"Abilities": "Apply {effect_stacks} {doubt} to all Torments",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_rarity": "Common",
		"_amounts": {
			"effect_stacks": 3,
		},
		"_is_upgrade": true,
	},
	"Cheeky Approach": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.poison.name],
		"Abilities": "Gain {defence_amount} {confidence}\nApply {effect_stacks} {doubt} to target Torment.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 11,
			"effect_stacks": 3,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"= Cheeky Approach =",
			"+ Cheeky Approach +",
			"* Cheeky Approach *",
		],
	},
	"= Cheeky Approach =": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.poison.name],
		"Abilities": "Gain {defence_amount} {confidence}\nApply {effect_stacks} {doubt} to target Torment.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 14,
			"effect_stacks": 4,
		},
		"_is_upgrade": true,
	},
	"+ Cheeky Approach +": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.poison.name],
		"Abilities": "Gain {defence_amount} {confidence}\nApply {effect_stacks} {doubt} to target Torment.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 18,
			"effect_stacks": 2,
		},
		"_is_upgrade": true,
	},
	"* Cheeky Approach *": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.poison.name],
		"Abilities": "Gain {defence_amount} {confidence}\nApply {effect_stacks} {doubt} to target Torment.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 8,
			"effect_stacks": 6,
		},
		"_is_upgrade": true,
	},
	"Laugh at Danger": {
		"Type": "Concentration",
		"Tags": [Terms.ACTIVE_EFFECTS.poison.name],
		"Abilities": "After a Torment performs {stress}, it gains {effect_stacks} {doubt}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_rarity": "Rare",
		"_keywords": ["stress"],
		"_amounts": {
			"effect_stacks": 1,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"@ Laugh at Danger @",
			"Roaring Laugh at Danger",
		],
	},
	"@ Laugh at Danger @": {
		"Type": "Concentration",
		"Tags": [Terms.ACTIVE_EFFECTS.poison.name],
		"Abilities": "After a Torment performs {stress}, it gains {effect_stacks} {doubt}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_rarity": "Rare",
		"_keywords": ["stress"],
		"_amounts": {
			"effect_stacks": 1,
		},
		"_is_upgrade": true,
	},
	"Roaring Laugh at Danger": {
		"Type": "Concentration",
		"Tags": [Terms.ACTIVE_EFFECTS.poison.name],
		"Abilities": "After a Torment performs {stress}, it gains {effect_stacks} {doubt}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_rarity": "Rare",
		"_keywords": ["stress"],
		"_amounts": {
			"effect_stacks": 2,
		},
		"_is_upgrade": true,
	},
	"Towering Presence": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} equal to your current {confidence}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["confidence", "interpretation"],
		"_upgrade_threshold": 7,
		"_upgrades": [
			"@ Towering Presence @",
			"Overwhelming Presence",
		],
	},
	"@ Towering Presence @": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} equal to your current {confidence}",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["confidence", "interpretation"],
		"_is_upgrade": true,
	},
	"Overwhelming Presence": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} equal to your current {confidence} + {damage_amount}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["confidence", "interpretation"],
		"_amounts": {
			"damage_amount": 6,
		},
		"_is_upgrade": true,
	},
	"Unassailable": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "Whenever you apply {doubt}, gain {effect_defence} {confidence}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_rarity": "Rare",
		"_keywords": ["confidence"],
		"_amounts": {
			"effect_defence": 1,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"@ Unassailable @",
			"Completely Unassailable",
		],
	},
	"@ Unassailable @": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "Whenever you apply {doubt}, gain {effect_defence} {confidence}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Rare",
		"_keywords": ["confidence"],
		"_amounts": {
			"effect_defence": 2,
		},
		"_is_upgrade": true,
	},
	"Completely Unassailable": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "Whenever you apply {doubt}, gain {effect_defence} {confidence}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_rarity": "Rare",
		"_keywords": ["confidence"],
		"_amounts": {
			"effect_defence": 3,
		},
		"_is_upgrade": true,
	},
	"Audacity": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.fortify.name],
		"Abilities": "Gain {defence_amount} {confidence}\nApply {effect_stacks} {courage}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.fortify.name: Terms.PLAYER
		},
		"_rarity": "Common",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 8,
			"effect_stacks": 1,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"+ Audacity +",
			"* Audacity *",
		],
	},
	"+ Audacity +": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.fortify.name],
		"Abilities": "Gain {defence_amount} {confidence}\nApply {effect_stacks} {courage}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.fortify.name: Terms.PLAYER
		},
		"_rarity": "Common",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 12,
			"effect_stacks": 1,
		},
		"_is_upgrade": true,
	},
	"* Audacity *": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.fortify.name],
		"Abilities": "Gain {defence_amount} {confidence}\nApply {effect_stacks} {courage}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.fortify.name: Terms.PLAYER
		},
		"_rarity": "Common",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 17,
			"effect_stacks": 2,
		},
		"_is_upgrade": true,
	},
	"Boast": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.slumber.name],
		"Abilities": "Double your {confidence}\nRemove all {courage}\n{forget}.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.fortify.name: Terms.PLAYER
		},
		"_rarity": "Rare",
		"_keywords": ["confidence", "forget"],
		"_upgrade_threshold": 8,
		"_upgrades": [
			"Massive Boast",
			"@ Boast @",
			"Sustained Boast",
		],
	},
	"@ Boast @": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.slumber.name],
		"Abilities": "Double your {confidence}\nRemove all {courage}\n{forget}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.fortify.name: Terms.PLAYER
		},
		"_rarity": "Rare",
		"_keywords": ["confidence", "forget"],
		"_is_upgrade": true,
	},
	"Massive Boast": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.slumber.name],
		"Abilities": "Gain 4 {confidence}\nDouble your {confidence}\nRemove all {courage}\n{forget}.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.fortify.name: Terms.PLAYER
		},
		"_rarity": "Rare",
		"_keywords": ["confidence", "forget"],
		"_amounts": {
			"defence_amount": 4,
		},
		"_is_upgrade": true,
	},
	"Sustained Boast": {
		"Type": "Control",
		"Tags": [],
		"Abilities": "Double your {confidence}\nRemove all {courage}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.fortify.name: Terms.PLAYER
		},
		"_rarity": "Rare",
		"_keywords": ["confidence"],
		"_is_upgrade": true,
	},
	"Solid Understanding": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "Gain {defence_amount} {confidence}\n{damage} for {damage_amount}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["confidence", "interpretation"],
		"_amounts": {
			"defence_amount": 5,
			"damage_amount": 5,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"+ Solid Understanding +",
			"= Solid Understanding =",
			"% Solid Understanding %",
		],
	},
	"+ Solid Understanding +": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "Gain {defence_amount} {confidence}\n{damage} for {damage_amount}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["confidence", "interpretation"],
		"_amounts": {
			"defence_amount": 5,
			"damage_amount": 9,
		},
		"_is_upgrade": true,
	},
	"% Solid Understanding %": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "Gain {defence_amount} {confidence}\n{damage} for {damage_amount}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["confidence", "interpretation"],
		"_amounts": {
			"defence_amount": 9,
			"damage_amount": 5,
		},
		"_is_upgrade": true,
	},
	"= Solid Understanding =": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "Gain {defence_amount} {confidence}\n{damage} for {damage_amount}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["confidence", "interpretation"],
		"_amounts": {
			"defence_amount": 7,
			"damage_amount": 7,
		},
		"_is_upgrade": true,
	},
	"No Second Thoughts": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.fortify.name],
		"Abilities": "Gain {effect_stacks} {courage}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.fortify.name: Terms.PLAYER
		},
		"_rarity": "Uncommon",
		"_amounts": {
			"effect_stacks": 2,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"* No Second Thoughts *",
			"~ No Second Thoughts ~",
		],
	},
	"* No Second Thoughts *": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.fortify.name],
		"Abilities": "Gain {effect_stacks} {courage}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.fortify.name: Terms.PLAYER
		},
		"_rarity": "Uncommon",
		"_amounts": {
			"effect_stacks": 3,
		},
		"_is_upgrade": true,
	},
	"~ No Second Thoughts ~": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.fortify.name],
		"Abilities": "Gain {effect_stacks} {courage}\n{forget}.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.fortify.name: Terms.PLAYER
		},
		"_rarity": "Uncommon",
		"_amounts": {
			"effect_stacks": 2,
		},
		"_is_upgrade": true,
	},
	"High Morale": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for {damage_amount}.\nDraw {draw_amount} {courage} card.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.fortify.name: Terms.PLAYER
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 6,
			"draw_amount": 1,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"+ High Morale +",
			"! High Morale !",
			"@ High Morale @",
		],
	},
	"+ High Morale +": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for {damage_amount}.\nDraw {draw_amount} {courage} card.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.fortify.name: Terms.PLAYER
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 10,
			"draw_amount": 1,
		},
		"_is_upgrade": true,
	},
	"! High Morale !": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for {damage_amount}.\nDraw {draw_amount} {courage} cards.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.fortify.name: Terms.PLAYER
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 6,
			"draw_amount": 2,
		},
		"_is_upgrade": true,
	},
	"@ High Morale @": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for {damage_amount}.\nDraw {draw_amount} {courage} card.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.fortify.name: Terms.PLAYER
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 4,
			"draw_amount": 1,
		},
		"_is_upgrade": true,
	},
	"Confident Slap": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "Apply {effect_stacks} {doubt} to target Torment.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_rarity": "Common",
		"_amounts": {
			"effect_stacks": 5,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"* Confident Slap *",
			"@ Confident Slap @",
		],
	},
	"* Confident Slap *": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "Apply {effect_stacks} {doubt} to target Torment.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_rarity": "Common",
		"_amounts": {
			"effect_stacks": 6,
		},
		"_is_upgrade": true,
	},
	"@ Confident Slap @": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "Apply {effect_stacks} {doubt} to target Torment.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_rarity": "Common",
		"_amounts": {
			"effect_stacks": 4,
		},
		"_is_upgrade": true,
	},
	"Swoop": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for {damage_amount}. If you have {untouchable}, {damage} for {damage_amount2} instead.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 8,
			"damage_amount2": 12,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"+ Swoop +",
			"% Swoop %",
		],
	},
	"+ Swoop +": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for {damage_amount}. If you have {untouchable}, {damage} for {damage_amount2} instead.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 12,
			"damage_amount2": 16,
		},
		"_is_upgrade": true,
	},
	"% Swoop %": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for {damage_amount}. If you have {untouchable}, {damage} for {damage_amount2} instead.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 8,
			"damage_amount2": 20,
		},
		"_is_upgrade": true,
	},
	"Drag and Drop": {
		"Type": "Action",
		"Tags": [Terms.ACTIVE_EFFECTS.impervious.name],
		"Abilities": "{damage} for {damage_amount}. If Torment is {overcome}, gain {effect_stacks} {untouchable}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Common",
		"_keywords": ["interpretation", "overcome"],
		"_amounts": {
			"damage_amount": 12,
			"effect_stacks": 2,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"+ Drag and Drop +",
			"@ Drag and Drop @",
		],
	},
	"+ Drag and Drop +": {
		"Type": "Action",
		"Tags": [Terms.ACTIVE_EFFECTS.impervious.name],
		"Abilities": "{damage} for {damage_amount}. If Torment is {overcome}, gain {effect_stacks} {untouchable}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Common",
		"_keywords": ["interpretation", "overcome"],
		"_amounts": {
			"damage_amount": 16,
			"effect_stacks": 2,
		},
		"_is_upgrade": true,
	},
	"@ Drag and Drop @": {
		"Type": "Action",
		"Tags": [Terms.ACTIVE_EFFECTS.impervious.name],
		"Abilities": "{damage} for {damage_amount}. If Torment is {overcome}, gain {effect_stacks} {untouchable}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Common",
		"_keywords": ["interpretation", "overcome"],
		"_amounts": {
			"damage_amount": 11,
			"effect_stacks": 2,
		},
		"_is_upgrade": true,
	},
	"Running Start": {
		"Type": "Control",
		"Tags": [],
		"Abilities": "{damage} for {damage_amount}.\nDraw {draw_amount} {untouchable} card.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 6,
			"draw_amount": 1,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"+ Running Start +",
			"! Running Start !",
			"@ Running Start @",
		],
	},
	"+ Running Start +": {
		"Type": "Control",
		"Tags": [],
		"Abilities": "{damage} for {damage_amount}.\nDraw {draw_amount} {untouchable} card.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 10,
			"draw_amount": 1,
		},
		"_is_upgrade": true,
	},
	"! Running Start !": {
		"Type": "Control",
		"Tags": [],
		"Abilities": "{damage} for {damage_amount}.\nDraw {draw_amount} {untouchable} cards.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 6,
			"draw_amount": 2,
		},
		"_is_upgrade": true,
	},
	"@ Running Start @": {
		"Type": "Control",
		"Tags": [],
		"Abilities": "{damage} for {damage_amount}.\nDraw {draw_amount} {untouchable} card.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 4,
			"draw_amount": 1,
		},
		"_is_upgrade": true,
	},
	"Master of Skies": {
		"Type": "Concentration",
		"Tags": [Terms.GENERIC_TAGS.purpose.name],
		"Abilities": "Whenever you gain {untouchable}, Gain {effect_amount} {immersion}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Rare",
		"_amounts": {
			"effect_amount": 1,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"Glorious Master of Skies",
			"@ Master of Skies @",
		],
	},
	"@ Master of Skies @": {
		"Type": "Concentration",
		"Tags": [Terms.GENERIC_TAGS.purpose.name],
		"Abilities": "Whenever you gain {untouchable}, Gain {effect_amount} {immersion}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Rare",
		"_amounts": {
			"effect_amount": 1,
		},
		"_is_upgrade": true,
	},
	"Glorious Master of Skies": {
		"Type": "Concentration",
		"Tags": [Terms.GENERIC_TAGS.purpose.name],
		"Abilities": "Whenever you gain {untouchable}, Gain {effect_amount} {immersion}",
		"Cost": 3,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Rare",
		"_amounts": {
			"effect_amount": 2,
		},
		"_is_upgrade": true,
	},
	"Zen of Flight": {
		"Type": "Concentration",
		"Tags": [Terms.GENERIC_TAGS.relax.name],
		"Abilities": "At the end of each turn, {relax} for {effect_amount}.\n"\
				+ "If you have {untouchable}, {relax} {effect_amount} extra.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Rare",
		"_amounts": {
			"effect_amount": 1,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"Masterful Zen of Flight",
			"@ Zen of Flight @",
		],
	},
	"@ Zen of Flight @": {
		"Type": "Concentration",
		"Tags": [Terms.GENERIC_TAGS.relax.name],
		"Abilities": "At the end of each turn, {relax} for {effect_amount}.\n"\
				+ "If you have {untouchable}, {relax} {effect_amount} extra.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Rare",
		"_amounts": {
			"effect_amount": 1,
		},
		"_is_upgrade": true,
	},
	"Masterful Zen of Flight": {
		"Type": "Concentration",
		"Tags": [Terms.GENERIC_TAGS.relax.name],
		"Abilities": "At the end of each turn, {relax} for {effect_amount}.\n"\
				+ "If you have {untouchable}, {relax} {effect_amount} extra.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Rare",
		"_amounts": {
			"effect_amount": 2,
		},
		"_is_upgrade": true,
	},
	"Loop de loop": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.buffer.name],
		"Abilities": "Gain {defence_amount} {confidence}\nGain {effect_stacks} {fascination}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.buffer.name: Terms.PLAYER
		},
		"_rarity": "Common",
		"_keywords": ["confidence"],
		"_amounts": {
			"effect_stacks": 1,
			"defence_amount": 7,
		},
		"_upgrade_threshold": 9,
		"_upgrades": [
			"+ Loop de loop +",
			"* Loop de loop *",
		],
	},
	"+ Loop de loop +": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.buffer.name],
		"Abilities": "Gain {defence_amount} {confidence}\nGain {effect_stacks} {fascination}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.buffer.name: Terms.PLAYER
		},
		"_rarity": "Common",
		"_keywords": ["confidence"],
		"_amounts": {
			"effect_stacks": 1,
			"defence_amount": 11,
		},
		"_is_upgrade": true,
	},
	"* Loop de loop *": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.buffer.name],
		"Abilities": "Gain {defence_amount} {confidence}\nGain {effect_stacks} {fascination}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.buffer.name: Terms.PLAYER
		},
		"_rarity": "Common",
		"_keywords": ["confidence"],
		"_amounts": {
			"effect_stacks": 2,
			"defence_amount": 7,
		},
		"_is_upgrade": true,
	},
	"Headless": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.buffer.name],
		"Abilities": "Gain {effect_stacks} {fascination}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.buffer.name: Terms.PLAYER
		},
		"_rarity": "Common",
		"_amounts": {
			"effect_stacks": 4,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"@ Headless @",
			"* Headless *",
			"% Headless %",
		],
	},
	"@ Headless @": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.buffer.name],
		"Abilities": "Gain {effect_stacks} {fascination}",
		"Cost": 0,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.buffer.name: Terms.PLAYER
		},
		"_rarity": "Common",
		"_amounts": {
			"effect_stacks": 2,
		},
		"_is_upgrade": true,
	},
	"* Headless *": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.buffer.name],
		"Abilities": "Gain {effect_stacks} {fascination}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.buffer.name: Terms.PLAYER
		},
		"_rarity": "Common",
		"_amounts": {
			"effect_stacks": 6,
		},
		"_is_upgrade": true,
	},
	"% Headless %": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.buffer.name],
		"Abilities": "Gain {effect_stacks} {fascination}",
		"Cost": 3,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.buffer.name: Terms.PLAYER
		},
		"_rarity": "Common",
		"_amounts": {
			"effect_stacks": 10,
		},
		"_is_upgrade": true,
	},
	"Utterly Ridiculous": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "Can only be played if there's a total of {filter_amount} or more {confusion} among Torments\n"\
				+ "{damage} all Torments for {damage_amount}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Rare",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 20,
			"filter_amount": 6,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"@ Utterly Ridiculous @",
			"+ Utterly Ridiculous +",
			"% Utterly Ridiculous %",
			"= Utterly Ridiculous =",
		],
	},
	"@ Utterly Ridiculous @": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "Can only be played if there's a total of {filter_amount} or more {confusion} among Torments\n"\
				+ "{damage} all Torments for {damage_amount}",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Rare",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 20,
			"filter_amount": 6,
		},
		"_is_upgrade": true,
	},
	"+ Utterly Ridiculous +": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "Can only be played if there's a total of {filter_amount} or more {confusion} among Torments\n"\
				+ "{damage} all Torments for {damage_amount}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Rare",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 26,
			"filter_amount": 6,
		},
		"_is_upgrade": true,
	},
	"% Utterly Ridiculous %": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "Can only be played if there's a total of {filter_amount} or more {confusion} among Torments\n"\
				+ "{damage} all Torments for {damage_amount}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Rare",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 20,
			"filter_amount": 4,
		},
		"_is_upgrade": true,
	},
	"= Utterly Ridiculous =": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "Can only be played if there's a total of {filter_amount} or more {confusion} among Torments\n"\
				+ "{damage} all Torments for {damage_amount}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Rare",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 40,
			"filter_amount": 10,
		},
		"_is_upgrade": true,
	},
	"Ventriloquism": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for {damage_amount}.\nDraw {draw_amount} {confusion} card.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 6,
			"draw_amount": 1,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"@ Ventriloquism @",
			"+ Ventriloquism +",
			"! Ventriloquism !",
		],
	},
	"@ Ventriloquism @": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for {damage_amount}.\nDraw {draw_amount} {confusion} card.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 4,
			"draw_amount": 1,
		},
		"_is_upgrade": true,
	},
	"+ Ventriloquism +": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for {damage_amount}.\nDraw {draw_amount} {confusion} card.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 10,
			"draw_amount": 1,
		},
		"_is_upgrade": true,
	},
	"! Ventriloquism !": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for {damage_amount}.\nDraw {draw_amount} {confusion} cards.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 6,
			"draw_amount": 2,
		},
		"_is_upgrade": true,
	},
	"unnamed_card_1": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.spark.name, Terms.GENERIC_TAGS.slumber.name],
		"Abilities": "{shuffle} your discard pile into your deck.\nPlay {draw_amount} Random card from your deck. {forget}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["forget"],
		"_amounts": {
			"draw_amount": 1
		},
		"_upgrade_threshold": 9,
		"_upgrades": [
			"@ unnamed_card_1 @",
			"! unnamed_card_1 !",
			"Sustained unnamed_card_1",
		],
	},
	"@ unnamed_card_1 @": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.spark.name, Terms.GENERIC_TAGS.slumber.name],
		"Abilities": "{shuffle} your discard pile into your deck.\nPlay {draw_amount} Random card from your deck. {forget}.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["forget"],
		"_amounts": {
			"draw_amount": 1
		},
		"_is_upgrade": true,
	},
	"! unnamed_card_1 !": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.spark.name, Terms.GENERIC_TAGS.slumber.name],
		"Abilities": "{shuffle} your discard pile into your deck.\nPlay {draw_amount} Random card from your deck. {forget}.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["forget"],
		"_amounts": {
			"draw_amount": 2
		},
		"_is_upgrade": true,
	},
	"Sustained unnamed_card_1": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.spark.name],
		"Abilities": "{shuffle} your discard pile into your deck.\nPlay {draw_amount} Random card from your deck.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": [],
		"_amounts": {
			"draw_amount": 1
		},
		"_is_upgrade": true,
	},
	"unnamed_card_2": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.poison.name],
		"Abilities": "Each Torment is applied {doubt} equals to its {confusion} x{multiplier_amount}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY,
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_amounts": {
			"multiplier_amount": 2
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"@ unnamed_card_2 @",
			"* unnamed_card_2 *",
			"% unnamed_card_2 %",
		],
	},
	"@ unnamed_card_2 @": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.poison.name],
		"Abilities": "Each Torment is applied {doubt} equals to its {confusion}x{multiplier_amount}",
		"Cost": 0,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY,
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_amounts": {
			"multiplier_amount": 2
		},
		"_is_upgrade": true,
	},
	"* unnamed_card_2 *": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.poison.name],
		"Abilities": "Each Torment is applied {doubt} equals to its {confusion}x{multiplier_amount}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY,
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_amounts": {
			"multiplier_amount": 3
		},
		"_is_upgrade": true,
	},
	"% unnamed_card_2 %": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.poison.name],
		"Abilities": "Each Torment is applied {doubt} equals to its ({confusion}+1)x{multiplier_amount}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY,
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_amounts": {
			"multiplier_amount": 2
		},
		"_is_upgrade": true,
	},
	"unnamed_card_3": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} all Torments for {damage_amount}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 8
		},
		"_upgrade_threshold": 8,
		"_upgrades": [
			"+ unnamed_card_3 +",
			"~ unnamed_card_3 ~",
		],
	},
	"+ unnamed_card_3 +": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} all Torments for {damage_amount}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 11
		},
		"_is_upgrade": true,
	},
	"~ unnamed_card_3 ~": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.slumber.name],
		"Abilities": "{damage} all Torments for {damage_amount}.\n{forget}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["interpretation", "forget"],
		"_amounts": {
			"damage_amount": 18
		},
		"_is_upgrade": true,
	},
	"Absurdity Unleashed": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "Whenever you apply {confusion} to a Torment, {damage} it for {damage_amount}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 4
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"@ Absurdity Unleashed @",
			"Total Absurdity Unleashed",
		],
	},
	"@ Absurdity Unleashed @": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "Whenever you apply {confusion} to a Torment, {damage} it for {damage_amount}",
		"Cost": 0,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 4
		},
		"_is_upgrade": true,
	},
	"Total Absurdity Unleashed": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "Whenever you apply {confusion} to a Torment, {damage} it for {damage_amount}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 6
		},
		"_is_upgrade": true,
	},
	"unnamed_card_4": {
		"Type": "Control",
		"Tags": [
			Terms.GENERIC_TAGS.fading.name, 
			Terms.GENERIC_TAGS.slumber.name, 
		],
		"Abilities": "Gain {defence_amount} {confidence}\n{forget}.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_avoid_normal_discard": true,
		"_rarity": "Common",
		"_keywords": ["confidence", "forget"],
		"_amounts": {
			"defence_amount": 11
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"+ unnamed_card_4 +",
			"^ unnamed_card_4 ^",
		],
	},
	"+ unnamed_card_4 +": {
		"Type": "Control",
		"Tags": [
			Terms.GENERIC_TAGS.fading.name, 
			Terms.GENERIC_TAGS.slumber.name, 
		],
		"Abilities": "Gain {defence_amount} {confidence}\n{forget}.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_avoid_normal_discard": true,
		"_rarity": "Common",
		"_keywords": ["confidence", "forget"],
		"_amounts": {
			"defence_amount": 15
		},
		"_is_upgrade": true,
	},
	"^ unnamed_card_4 ^": {
		"Type": "Control",
		"Tags": [
			Terms.GENERIC_TAGS.fading.name, 
			Terms.GENERIC_TAGS.alpha.name,
		],
		"Abilities": "Gain {defence_amount} {confidence}\n{forget}.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_avoid_normal_discard": true,
		"_rarity": "Common",
		"_keywords": ["confidence", "forget"],
		"_amounts": {
			"defence_amount": 11
		},
		"_is_upgrade": true,
	},
	"Change of Mind": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.spark.name],
		"Abilities": "{damage} for {damage_amount}. {shuffle} this card into your deck.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_avoid_normal_discard": true,
		"_rarity": "Basic",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 7,
		},
		"_upgrade_threshold": 5,
		"_upgrades": [
			"+ Change of Mind +",
			"@ Change of Mind @",
		],
	},
	"+ Change of Mind +": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.spark.name],
		"Abilities": "{damage} for {damage_amount}. {shuffle} this card into your deck.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_avoid_normal_discard": true,
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 11,
		},
		"_is_upgrade": true,
	},
	"@ Change of Mind @": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.spark.name],
		"Abilities": "{damage} for {damage_amount}. {shuffle} this card into your deck.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_avoid_normal_discard": true,
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 6,
		},
		"_is_upgrade": true,
	},
	"Brilliance": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "Whenever you {shuffle} your deck, gain {effect_amount} {confidence}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["confidence"],
		"_amounts": {
			"effect_amount": 4,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"Blinding Brilliance",
			"@ Brilliance @",
			"^ Brilliance ^",
		],
	},
	"@ Brilliance @": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "Whenever you {shuffle} your deck, gain {effect_amount} {confidence}.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["confidence"],
		"_amounts": {
			"effect_amount": 4,
		},
		"_is_upgrade": true,
	},
	"^ Brilliance ^": {
		"Type": "Concentration",
		"Tags": [Terms.GENERIC_TAGS.alpha.name],
		"Abilities": "Whenever you {shuffle} your deck, gain {effect_amount} {confidence}.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["confidence"],
		"_amounts": {
			"effect_amount": 4,
		},
		"_is_upgrade": true,
	},
	"Blinding Brilliance": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "Whenever you {shuffle} your deck, gain {effect_amount} {confidence}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["confidence"],
		"_amounts": {
			"effect_amount": 6,
		},
		"_is_upgrade": true,
	},
	"Rapid Theorizing": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.swift.name, Terms.GENERIC_TAGS.chain.name],
		"Abilities": "Gain {defence_amount} {confidence}.\n"\
				+ "If you've {shuffle}d your deck this turn, "\
				+ "gain {defence_amount2} {confidence} and draw {draw_amount} card.",
		"Cost": 1,
		"_illustration": "Maria Thoukydidou",
		"_rarity": "Uncommon",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 8,
			"defence_amount2": 3,
			"draw_amount": 1,
		},
		"_upgrade_threshold": 8,
		"_upgrades": [
			"+ Rapid Theorizing +",
			"! Rapid Theorizing !",
			"% Rapid Theorizing %",
		],
	},
	"+ Rapid Theorizing +": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.swift.name],
		"Abilities": "Gain {defence_amount} {confidence}.\n"\
				+ "If you've {shuffle}d your deck this turn, "\
				+ "gain {defence_amount2} {confidence} and draw {draw_amount} card.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 12,
			"defence_amount2": 3,
			"draw_amount": 1,
		},
		"_is_upgrade": true,
	},
	"! Rapid Theorizing !": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.swift.name],
		"Abilities": "Gain {defence_amount} {confidence}.\n"\
				+ "If you've {shuffle}d your deck this turn, "\
				+ "gain {defence_amount2} {confidence} and draw {draw_amount} card.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 9,
			"defence_amount2": 3,
			"draw_amount": 2,
		},
		"_is_upgrade": true,
	},
	"% Rapid Theorizing %": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.swift.name],
		"Abilities": "Gain {defence_amount} {confidence}.\n"\
				+ "If you've {shuffle}d your deck this turn, "\
				+ "gain {defence_amount2} {confidence} and draw {draw_amount} card.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 6,
			"defence_amount2": 11,
			"draw_amount": 1,
		},
		"_is_upgrade": true,
	},
	"Wild Inspiration": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.slumber.name, Terms.GENERIC_TAGS.purpose.name],
		"Abilities": "{forget} the top {forget_amount} card of the deck: Gain {immersion_amount} {immersion}. Draw {draw_amount} cards.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["forget"],
		"_amounts": {
			"immersion_amount": 1,
			"draw_amount": 2,
			"forget_amount": 1,
		},
		"_upgrade_threshold": 8,
		"_upgrades": [
			"+ Wild Inspiration +",
			"! Wild Inspiration !",
		],
	},
	"+ Wild Inspiration +": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.slumber.name, Terms.GENERIC_TAGS.purpose.name],
		"Abilities": "{forget} the top {forget_amount} card of the deck: Gain {immersion_amount} {immersion}. Draw {draw_amount} cards.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["forget"],
		"_amounts": {
			"immersion_amount": 2,
			"draw_amount": 3,
			"forget_amount": 2,
		},
		"_is_upgrade": true,
	},
	"! Wild Inspiration !": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.slumber.name, Terms.GENERIC_TAGS.purpose.name],
		"Abilities": "{forget} the top {forget_amount} card of the deck: Gain {immersion_amount} {immersion}. Draw {draw_amount} cards.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["forget"],
		"_amounts": {
			"immersion_amount": 1,
			"draw_amount": 3,
			"forget_amount": 1,
		},
		"_is_upgrade": true,
	},
	"Recall": {
		"Type": "Concentration",
		"Tags": [Terms.GENERIC_TAGS.spark.name],
		"Abilities": "At the end of your turn, {shuffle} the top {effect_amount} card "\
				+ "from the discard pile into the deck.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_amounts": {
			"effect_amount": 1,
		},
		"_upgrade_threshold": 6,
		"_upgrades": [
			"Total Recall",
			"^ Recall ^",
			"@ Recall @",
		],
	},
	"^ Recall ^": {
		"Type": "Concentration",
		"Tags": [Terms.GENERIC_TAGS.spark.name, Terms.GENERIC_TAGS.alpha.name],
		"Abilities": "At the end of your turn, {shuffle} the top {effect_amount} card "\
				+ "from the discard pile into the deck.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_amounts": {
			"effect_amount": 1,
		},
		"_is_upgrade": true,
	},
	"@ Recall @": {
		"Type": "Concentration",
		"Tags": [Terms.GENERIC_TAGS.spark.name],
		"Abilities": "At the end of your turn, {shuffle} the top {effect_amount} card "\
				+ "from the discard pile into the deck.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_amounts": {
			"effect_amount": 1,
		},
		"_is_upgrade": true,
	},
	"Total Recall": {
		"Type": "Concentration",
		"Tags": [Terms.GENERIC_TAGS.spark.name],
		"Abilities": "At the end of your turn, {shuffle} the top {effect_amount} cards "\
				+ "from the discard pile into the deck.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_amounts": {
			"effect_amount": 2,
		},
		"_is_upgrade": true,
	},
	"Vexing Concept": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.spark.name, Terms.GENERIC_TAGS.insomnia.name],
		"Abilities": "{damage} for {damage_amount}. You may {discard} {discard_amount} cards from your hand "\
				+ "to {shuffle} this card into your deck.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_amounts": {
			"damage_amount": 10,
			"discard_amount": 2,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"+ Vexing Concept +",
			"! Vexing Concept !",
		],
	},
	"+ Vexing Concept +": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.spark.name, Terms.GENERIC_TAGS.insomnia.name],
		"Abilities": "{damage} for {damage_amount}. You may {discard} {discard_amount} cards from your hand "\
				+ "to {shuffle} this card into your deck.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_amounts": {
			"damage_amount": 14,
			"discard_amount": 2,
		},
		"_is_upgrade": true,
	},
	"! Vexing Concept !": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.spark.name, Terms.GENERIC_TAGS.insomnia.name],
		"Abilities": "{damage} for {damage_amount}. You may {discard} {discard_amount} card from your hand "\
				+ "to {shuffle} this card into your deck.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_amounts": {
			"damage_amount": 11,
			"discard_amount": 1,
		},
		"_is_upgrade": true,
	},
	"It's alive!": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for {damage_amount}.\n"\
				+ "{damage} for {damage_amount2} for each time your deck was shuffled.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_rarity": "Rare",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 12,
			"damage_amount2": 2,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"+ It's alive! +",
			"= It's alive! =",
		],
	},
	"+ It's alive! +": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for {damage_amount}.\n"\
				+ "{damage} for {damage_amount2} for each time your deck was shuffled.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_rarity": "Rare",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 16,
			"damage_amount2": 2,
		},
		"_is_upgrade": true,
	},
	"= It's alive! =": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for {damage_amount}.\n"\
				+ "{damage} for {damage_amount2} for each time your deck was shuffled.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_rarity": "Rare",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 14,
			"damage_amount2": 3,
		},
		"_is_upgrade": true,
	},
	"Detect Weaknesses": {
		"Type": "Action",
		"Tags": [Terms.ACTIVE_EFFECTS.vulnerable.name],
		"Abilities": "{damage} for {damage_amount}.\n"\
				+ "If you've shuffled your deck this turn, apply {effect_stacks} {vulnerable}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 9,
			"effect_stacks": 2,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"+ Detect Weaknesses +",
			"* Detect Weaknesses *",
		],
	},
	"+ Detect Weaknesses +": {
		"Type": "Action",
		"Tags": [Terms.ACTIVE_EFFECTS.vulnerable.name],
		"Abilities": "{damage} for {damage_amount}.\n"\
				+ "If you've shuffled your deck this turn, apply {effect_stacks} {vulnerable}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 13,
			"effect_stacks": 2,
		},
		"_is_upgrade": true,
	},
	"* Detect Weaknesses *": {
		"Type": "Action",
		"Tags": [Terms.ACTIVE_EFFECTS.vulnerable.name],
		"Abilities": "{damage} for {damage_amount}.\n"\
				+ "If you've shuffled your deck this turn, apply {effect_stacks} {vulnerable}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 10,
			"effect_stacks": 3,
		},
		"_is_upgrade": true,
	},
	"Eureka!": {
		"Type": "Concentration",
		"Tags": [Terms.ACTIVE_EFFECTS.buffer.name],
		"Abilities": "Gain {effect_amount} {buffer} every other time you shuffle your deck.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_rarity": "Rare",
		"_amounts": {
			"effect_amount": 1,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"@ Eureka! @",
			"Inspired Eureka!",
			"^ Eureka! ^",
		],
	},
	"@ Eureka! @": {
		"Type": "Concentration",
		"Tags": [Terms.ACTIVE_EFFECTS.buffer.name],
		"Abilities": "Gain {effect_amount} {buffer} every other time you shuffle your deck.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Rare",
		"_amounts": {
			"effect_amount": 1,
		},
		"_is_upgrade": true,
	},
	"^ Eureka! ^": {
		"Type": "Concentration",
		"Tags": [Terms.ACTIVE_EFFECTS.buffer.name, Terms.GENERIC_TAGS.alpha.name],
		"Abilities": "Gain {effect_amount} {buffer} every other time you shuffle your deck.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_rarity": "Rare",
		"_amounts": {
			"effect_amount": 1,
		},
		"_is_upgrade": true,
	},
	"Inspired Eureka!": {
		"Type": "Concentration",
		"Tags": [Terms.ACTIVE_EFFECTS.buffer.name],
		"Abilities": "Gain {effect_amount} {buffer} every other time you shuffle your deck.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_rarity": "Rare",
		"_amounts": {
			"effect_amount": 2,
		},
		"_is_upgrade": true,
	},
	"unnamed_card_6": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.swift.name, Terms.GENERIC_TAGS.slumber.name],
		"Abilities": "Draw {draw_amount} card. It costs 0 {immersion} until played. {forget}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["forget"],
		"_amounts": {
			"draw_amount": 1,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"! unnamed_card_6 !",
			"Sustained unnamed_card_6",
		],
	},
	"! unnamed_card_6 !": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.swift.name, Terms.GENERIC_TAGS.slumber.name],
		"Abilities": "Draw {draw_amount} card. It costs 0 {immersion} until played. {forget}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["forget"],
		"_amounts": {
			"draw_amount": 2,
		},
		"_is_upgrade": true,
	},
	"Sustained unnamed_card_6": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.swift.name],
		"Abilities": "Draw {draw_amount} card. It costs 0 {immersion} until played.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_amounts": {
			"draw_amount": 1,
		},
		"_is_upgrade": true,
	},
	"unnamed_card_7": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.purpose.name, Terms.GENERIC_TAGS.slumber.name],
		"Abilities": "Gain {immersion_amount} {immersion}\nGain {effect_stacks} {drain}\n{forget}",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["forget"],
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.drain.name: Terms.PLAYER
		},
		"_amounts": {
			"immersion_amount": 2,
			"effect_stacks": 1,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"Improved unnamed_card_7",
			"+ unnamed_card_7 +",
		],
	},
	"Improved unnamed_card_7": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.swift.name, Terms.GENERIC_TAGS.purpose.name],
		"Abilities": "Gain {immersion_amount} {immersion}\nDraw {draw_amount} card\nGain {effect_stacks} {drain}\n{forget}",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["forget"],
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.drain.name: Terms.PLAYER
		},
		"_amounts": {
			"immersion_amount": 2,
			"effect_stacks": 1,
			"draw_amount": 1,
		},
		"_is_upgrade": true,
	},
	"+ unnamed_card_7 +": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.purpose.name, Terms.GENERIC_TAGS.slumber.name],
		"Abilities": "Gain {immersion_amount} {immersion}\nGain {effect_stacks} {drain}\n{forget}",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["forget"],
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.drain.name: Terms.PLAYER
		},
		"_amounts": {
			"immersion_amount": 3,
			"effect_stacks": 1,
		},
		"_is_upgrade": true,
	},
	#TODO
	"unnamed_card_8": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name],
		"Abilities": "{damage} for {damage_amount}.\n"\
				+ "If you have gained extra {immersion} this turn, {damage} for {damage_amount2} extra.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 7,
			"damage_amount2": 5,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"% unnamed_card_8 %",
			"+ unnamed_card_8 +",
		],
	},
	"+ unnamed_card_8 +": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name],
		"Abilities": "{damage} for {damage_amount}.\n"\
				+ "If you have gained extra {immersion} this turn, {damage} for {damage_amount2} extra.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 8,
			"damage_amount2": 7,
		},
		"_is_upgrade": true,
	},
	"% unnamed_card_8 %": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name],
		"Abilities": "If you have gained extra {immersion} this turn, {damage} for {damage_amount2}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 0,
			"damage_amount2": 20,
		},
		"_is_upgrade": true,
	},
	"unnamed_card_9": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for X * {damage_amount}.",
		"Cost": 'X',
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 8,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"@ unnamed_card_9 @",
			"+ unnamed_card_9 +",
		],
	},
	"@ unnamed_card_9 @": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for (X + 1) * {damage_amount}.",
		"Cost": 'X',
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 6,
			"x_modifer": "+1"
		},
		"_upgrade_threshold": 7,
		"_is_upgrade": true,
	},
	"+ unnamed_card_9 +": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for X * {damage_amount}.",
		"Cost": 'X',
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 9,
		},
		"_upgrade_threshold": 7,
		"_is_upgrade": true,
	},
	"Dodge": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.impervious.name],
		"Abilities": "Requires at least {requirements_amount} {confidence} to play.\nGain {effect_stacks} {untouchable}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Common",
		"_amounts": {
			"effect_stacks": 1,
			"requirements_amount": 3
		},
		"_upgrade_threshold": 6,
		"_upgrades": [
			"@ Dodge @",
			"* Dodge *",
		],
	},
	"@ Dodge @": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.impervious.name],
		"Abilities": "Requires at least {requirements_amount} {confidence} to play.\nGain {effect_stacks} {untouchable}",
		"Cost": 0,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Common",
		"_amounts": {
			"effect_stacks": 1,
			"requirements_amount": 3
		},
		"_is_upgrade": true,
	},
	"* Dodge *": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.impervious.name],
		"Abilities": "Requires at least {requirements_amount} {confidence} to play.\nGain {effect_stacks} {untouchable}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Common",
		"_amounts": {
			"effect_stacks": 2,
			"requirements_amount": 3
		},
		"_is_upgrade": true,
	},
	"Introspection": {
		"Type": "Concentration",
		"Tags": [Terms.GENERIC_TAGS.relax.name],
		"Abilities": "At the end of each turn, {relax} for {effect_amount} if you have not played any {attack_card} cards this turn.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_keywords": ["interpretation"],
		"_rarity": "Rare",
		"_amounts": {
			"effect_amount": 2,
		},
		"_upgrade_threshold": 8,
		"_upgrades": [
			"Deep Introspection",
			"Light Introspection",
		],
	},
	"Deep Introspection": {
		"Type": "Concentration",
		"Tags": [Terms.GENERIC_TAGS.relax.name],
		"Abilities": "At the end of each turn, {relax} for {effect_amount} if you have not played any {attack_card} cards this turn.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Rare",
		"_amounts": {
			"effect_amount": 3,
		},
		"_is_upgrade": true,
	},
	"Light Introspection": {
		"Type": "Concentration",
		"Tags": [Terms.GENERIC_TAGS.relax.name],
		"Abilities": "At the end of each turn, {relax} for {effect_amount} if you have not played more than 1 {attack_card} card this turn.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Rare",
		"_amounts": {
			"effect_amount": 2,
		},
		"_is_upgrade": true,
	},
	"Dismissal": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.exert.name],
		"Abilities": "Take {exert_amount} {anxiety}\nGain {defence_amount} {defence}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["confidence"],
		"_amounts": {
			"exert_amount": 2,
			"defence_amount": 12
		},
		"_upgrade_threshold": 6,
		"_upgrades": [
			"+ Dismissal +",
			"% Dismissal %",
		],
	},
	"+ Dismissal +": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.exert.name],
		"Abilities": "Take {exert_amount} {anxiety}\nGain {defence_amount} {defence}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["confidence"],
		"_amounts": {
			"exert_amount": 2,
			"defence_amount": 15
		},
		"_is_upgrade": true,
	},
	"% Dismissal %": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.exert.name],
		"Abilities": "Take {exert_amount} {anxiety}\nGain {defence_amount} {defence}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["confidence"],
		"_amounts": {
			"exert_amount": 1,
			"defence_amount": 13
		},
		"_is_upgrade": true,
	},
	"Could Be Worse": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.exert.name],
		"Abilities": "Take {exert_amount} {anxiety}\n{damage} for {damage_amount}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_amounts": {
			"exert_amount": 3,
			"damage_amount": 12,
		},
		"_upgrade_threshold": 6,
		"_upgrades": [
			"+ Could Be Worse +",
			"% Could Be Worse %",
		],
	},
	"+ Could Be Worse +": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.exert.name],
		"Abilities": "Take {exert_amount} {anxiety}\n{damage} for {damage_amount}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_amounts": {
			"exert_amount": 3,
			"damage_amount": 16,
		},
		"_is_upgrade": true,
	},
	"% Could Be Worse %": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.exert.name],
		"Abilities": "Take {exert_amount} {anxiety}\n{damage} for {damage_amount}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_amounts": {
			"exert_amount": 2,
			"damage_amount": 14,
		},
		"_is_upgrade": true,
	},
	"The Happy Place": {
		"Type": "Concentration",
		"Tags": [Terms.ACTIVE_EFFECTS.armor.name],
		"Abilities": "Whenever you take {anxiety} during your turn, gain {effect_amount} {armor}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_keywords": ["interpretation"],
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.armor.name: Terms.PLAYER
		},
		"_rarity": "Rare",
		"_amounts": {
			"effect_amount": 1,
		},
		"_upgrade_threshold": 8,
		"_upgrades": [
			"@ The Happy Place @",
			"^ The Happy Place ^",
		],
	},
	"@ The Happy Place @": {
		"Type": "Concentration",
		"Tags": [Terms.ACTIVE_EFFECTS.armor.name],
		"Abilities": "Whenever you take {anxiety} during your turn, gain {effect_amount} {armor}",
		"Cost": 0,
		"_illustration": "Nobody",
		"_keywords": ["interpretation"],
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.armor.name: Terms.PLAYER
		},
		"_rarity": "Rare",
		"_amounts": {
			"effect_amount": 1,
		},
		"_is_upgrade": true,
	},
	"^ The Happy Place ^": {
		"Type": "Concentration",
		"Tags": [Terms.ACTIVE_EFFECTS.armor.name,Terms.GENERIC_TAGS.alpha.name],
		"Abilities": "Whenever you take {anxiety} during your turn, gain {effect_amount} {armor}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_keywords": ["interpretation"],
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.armor.name: Terms.PLAYER
		},
		"_rarity": "Rare",
		"_amounts": {
			"effect_amount": 1,
		},
		"_is_upgrade": true,
	},
	"Self-Deception": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.exert.name, Terms.GENERIC_TAGS.swift.name],
		"Abilities": "Take {exert_amount} {anxiety}\nDraw {draw_amount} {exert} card.\n"\
				+ "Draw {draw_amount2} card.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": [],
		"_amounts": {
			"exert_amount": 2,
			"draw_amount": 1,
			"draw_amount2": 1,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"! Self-Deception !",
			"% Self-Deception %",
		],
	},
	"! Self-Deception !": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.exert.name, Terms.GENERIC_TAGS.swift.name],
		"Abilities": "Take {exert_amount} {anxiety}\nDraw {draw_amount} {exert} card.\n"\
				+ "Draw {draw_amount2} cards.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": [],
		"_amounts": {
			"exert_amount": 2,
			"draw_amount": 1,
			"draw_amount2": 2,
		},
		"_is_upgrade": true,
	},
	"% Self-Deception %": {
		"Type": "Control",
		"Tags": [],
		"Abilities": "Draw {draw_amount} {exert} cards.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": [],
		"_amounts": {
			"exert_amount": 0,
			"draw_amount": 2,
			"draw_amount2": 0,
		},
		"_is_upgrade": true,
	},
	"unnamed_card_12": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.purpose.name, Terms.GENERIC_TAGS.exert.name],
		"Abilities": "Take {exert_amount} {anxiety}\nGain {immersion_amount} {immersion}.\n{forget}.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_amounts": {
			"exert_amount": 4,
			"immersion_amount": 3,
		},
		"_upgrade_threshold": 8,
		"_upgrades": [
			"% unnamed_card_12 %",
			"+ unnamed_card_12 +",
			"Swift unnamed_card_12",
		],
	},
	"% unnamed_card_12 %": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.purpose.name, Terms.GENERIC_TAGS.exert.name],
		"Abilities": "Take {exert_amount} {anxiety}\nGain {immersion_amount} {immersion}.\n{forget}.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_amounts": {
			"exert_amount": 1,
			"immersion_amount": 3,
		},
		"_is_upgrade": true,
	},
	"+ unnamed_card_12 +": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.purpose.name, Terms.GENERIC_TAGS.exert.name],
		"Abilities": "Take {exert_amount} {anxiety}\nGain {immersion_amount} {immersion}.\n{forget}.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_amounts": {
			"exert_amount": 4,
			"immersion_amount": 4,
		},
		"_is_upgrade": true,
	},
	"Swift unnamed_card_12": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.purpose.name, Terms.GENERIC_TAGS.exert.name],
		"Abilities": "Take {exert_amount} {anxiety}\nGain {immersion_amount} {immersion}.\nDraw {draw_amount} card. {forget}.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_amounts": {
			"exert_amount": 4,
			"immersion_amount": 3,
			"draw_amount": 1,
		},
		"_is_upgrade": true,
	},
	"Rancor": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name],
		"Abilities": "{damage} for {damage_amount}.\n"\
				+ "{damage} all Torments by the amount of damage you've taken during your turn.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 6,
		},
		"_upgrade_threshold": 6,
		"_upgrades": [
			"+ Rancor +",
			"Justified Rancor",
		],
	},
	"+ Rancor +": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name],
		"Abilities": "{damage} for {damage_amount}.\n"\
				+ "{damage} all Torments by the amount of damage you've taken during your turn.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 9,
		},
		"_is_upgrade": true,
	},
	"Justified Rancor": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name],
		"Abilities": "{damage} all Torments by triple the amount of damage you've taken during your turn.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_is_upgrade": true,
	},
	"Lash-out": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "After you take {anxiety} during your turn, {damage} a random Torment for the same amount.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_keywords": ["interpretation"],
		"_rarity": "Uncommon",
		"_upgrade_threshold": 8,
		"_upgrades": [
			"@ Lash-out @",
			"^ Lash-out ^",
			"Frustrated Lash-out",
		],
	},
	"@ Lash-out @": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "After you take {anxiety} during your turn, {damage} a random Torment for the same amount.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_keywords": ["interpretation"],
		"_rarity": "Uncommon",
		"_is_upgrade": true,
	},
	"^ Lash-out ^": {
		"Type": "Concentration",
		"Tags": [Terms.GENERIC_TAGS.alpha.name],
		"Abilities": "After you take {anxiety} during your turn, {damage} a random Torment for the same amount.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_keywords": ["interpretation"],
		"_rarity": "Uncommon",
		"_is_upgrade": true,
	},
	"Frustrated Lash-out": {
		"Type": "Concentration",
		"Tags": [Terms.GENERIC_TAGS.alpha.name],
		"Abilities": "After you take {anxiety} during your turn, {damage} a random Torment for double that amount.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_keywords": ["interpretation"],
		"_rarity": "Uncommon",
		"_is_upgrade": true,
	},
	"unnamed_card_13": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name, Terms.GENERIC_TAGS.exert.name],
		"Abilities": "{damage} for {damage_amount}.\n"\
				+ "You may take {exert_amount} {anxiety} to {damage} all other Torments for {damage_amount}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 8,
			"exert_amount": 3,
		},
		"_upgrade_threshold": 6,
		"_upgrades": [
			"+ unnamed_card_13 +",
			"% unnamed_card_13 %",
		],
	},
	"+ unnamed_card_13 +": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name, Terms.GENERIC_TAGS.exert.name],
		"Abilities": "{damage} for {damage_amount}.\n"\
				+ "You may take {exert_amount} {anxiety} to {damage} all other Torments for {damage_amount}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 11,
			"exert_amount": 3,
		},
		"_is_upgrade": true,
	},
	"% unnamed_card_13 %": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name, Terms.GENERIC_TAGS.exert.name],
		"Abilities": "{damage} for {damage_amount}.\n"\
				+ "You may take {exert_amount} {anxiety} to {damage} all other Torments for {damage_amount}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 9,
			"exert_amount": 1,
		},
		"_is_upgrade": true,
	},
	"Is it my fault?": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.exert.name],
		"Abilities": "{damage} for {damage_amount}.\n"\
				+ "You may take {exert_amount} {anxiety} to bypass {defence}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 9,
			"exert_amount": 3,
		},
		"_upgrade_threshold": 6,
		"_upgrades": [
			"+ Is it my fault? +",
			"% Is it my fault? %",
		],
	},
	"+ Is it my fault? +": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.exert.name],
		"Abilities": "{damage} for {damage_amount}.\n"\
				+ "You may take {exert_amount} {anxiety} to bypass {defence}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 12,
			"exert_amount": 3,
		},
		"_is_upgrade": true,
	},
	"% Is it my fault? %": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.exert.name],
		"Abilities": "{damage} for {damage_amount}.\n"\
				+ "You may take {exert_amount} {anxiety} to bypass {defence}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 10,
			"exert_amount": 1,
		},
		"_is_upgrade": true,
	},
	"unnamed_card_15": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.exert.name, Terms.ACTIVE_EFFECTS.poison.name],
		"Abilities": "{damage} for {damage_amount}.\n"\
				+ "You may take {exert_amount} {anxiety} to inflict {effect_stacks} {poison}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_amounts": {
			"damage_amount": 9,
			"exert_amount": 2,
			"effect_stacks": 2,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"+ unnamed_card_15 +",
			"* unnamed_card_15 *",
		],
	},
	"+ unnamed_card_15 +": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.exert.name, Terms.ACTIVE_EFFECTS.poison.name],
		"Abilities": "{damage} for {damage_amount}.\n"\
				+ "You may take {exert_amount} {anxiety} to inflict {effect_stacks} {poison}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_amounts": {
			"damage_amount": 12,
			"exert_amount": 2,
			"effect_stacks": 2,
		},
		"_is_upgrade": true,
	},
	"* unnamed_card_15 *": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.exert.name, Terms.ACTIVE_EFFECTS.poison.name],
		"Abilities": "{damage} for {damage_amount}.\n"\
				+ "You may take {exert_amount} {anxiety} to inflict {effect_stacks} {poison}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_amounts": {
			"damage_amount": 10,
			"exert_amount": 4,
			"effect_stacks": 5,
		},
		"_is_upgrade": true,
	},
	"unnamed_card_16": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.exert.name, Terms.ACTIVE_EFFECTS.fortify.name],
		"Abilities": "Gain {defence_amount} {defence}\n"\
				+ "You may take {exert_amount} {anxiety} to gain {effect_stacks} {fortify}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["confidence"],
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.fortify.name: Terms.PLAYER
		},
		"_amounts": {
			"exert_amount": 4,
			"defence_amount": 8,
			"effect_stacks": 1,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"+ unnamed_card_16 +",
			"% unnamed_card_16 %",
		],
	},
	"+ unnamed_card_16 +": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.exert.name, Terms.ACTIVE_EFFECTS.fortify.name],
		"Abilities": "Gain {defence_amount} {defence}\n"\
				+ "You may take {exert_amount} {anxiety} to gain {effect_stacks} {fortify}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["confidence"],
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.fortify.name: Terms.PLAYER
		},
		"_amounts": {
			"exert_amount": 4,
			"defence_amount": 11,
			"effect_stacks": 1,
		},
		"_is_upgrade": true,
	},
	"% unnamed_card_16 %": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.exert.name, Terms.ACTIVE_EFFECTS.fortify.name],
		"Abilities": "Gain {defence_amount} {defence}\n"\
				+ "You may take {exert_amount} {anxiety} to gain {effect_stacks} {fortify}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["confidence"],
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.fortify.name: Terms.PLAYER
		},
		"_amounts": {
			"exert_amount": 7,
			"defence_amount": 12,
			"effect_stacks": 2,
		},
		"_is_upgrade": true,
	},
	"Excuses": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "The first {effect_amount} time you take {anxiety} during your turn reduce it to 1.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": [],
		"_amounts": {
			"effect_amount": 1,
		},
		"_upgrade_threshold": 8,
		"_upgrades": [
			"@ Excuses @",
			"Endless Excuses",
		],
	},
	"@ Excuses @": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "The first {effect_amount} time you take {anxiety} during your turn reduce it to 1.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": [],
		"_amounts": {
			"effect_amount": 1,
		},
		"_is_upgrade": true,
	},
	"Endless Excuses": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "The first {effect_amount} times you take {anxiety} during your turn reduce it to 1.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": [],
		"_amounts": {
			"effect_amount": 2,
		},
		"_is_upgrade": true,
	},
	"Tolerance": {
		"Type": "Concentration",
		"Tags": [Terms.GENERIC_TAGS.purpose.name, Terms.GENERIC_TAGS.swift.name],
		"Abilities": "The next {effect_stacks} time your {anxiety} would reach its maximum, "\
				+ "you take no {anxiety}, gain {effect_amount} {immersion} and draw {effect_amount} card.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Rare",
		"_keywords": [],
		"_amounts": {
			"effect_stacks": 1,
			"effect_amount": 1,
		},
		"_upgrade_threshold": 8,
		"_upgrades": [
			"* Tolerance *",
			"Extreme Tolerance",
		],
	},
	"* Tolerance *": {
		"Type": "Concentration",
		"Tags": [Terms.GENERIC_TAGS.purpose.name, Terms.GENERIC_TAGS.swift.name],
		"Abilities": "The next {effect_stacks} times your {anxiety} would reach its maximum, "\
				+ "you take no {anxiety}, gain {effect_amount} {immersion} and draw {effect_amount} card.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Rare",
		"_keywords": [],
		"_amounts": {
			"effect_stacks": 2,
			"effect_amount": 1,
		},
		"_is_upgrade": true,
	},
	"Extreme Tolerance": {
		"Type": "Concentration",
		"Tags": [Terms.GENERIC_TAGS.purpose.name, Terms.GENERIC_TAGS.swift.name],
		"Abilities": "The next {effect_stacks} time your {anxiety} would reach its maximum, "\
				+ "you take no {anxiety}, gain {effect_amount} {immersion} and draw {effect_amount} cards.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Rare",
		"_keywords": [],
		"_amounts": {
			"effect_stacks": 1,
			"effect_amount": 2,
		},
		"_is_upgrade": true,
	},
	"Catatonia": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.relax.name, Terms.GENERIC_TAGS.slumber.name],
		"Abilities": "If your {anxiety} is at least {health_percent}% full, {relax} for {healing_amount}.\n"\
				+ "If you have taken at least {anxiety_taken} {anxiety} during your turn during "\
				+ "this Ordeal, {relax} for {healing_amount}.\n{forget}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Rare",
		"_keywords": [],
		"_amounts": {
			"healing_amount": 5,
			"health_percent": 70,
			"anxiety_taken": 10,
		},
		"_upgrade_threshold": 8,
		"_upgrades": [
			"+ Catatonia +",
			"% Catatonia %",
		],
	},
	"+ Catatonia +": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.relax.name, Terms.GENERIC_TAGS.slumber.name],
		"Abilities": "If your {anxiety} is at least {health_percent}% full, {relax} for {healing_amount}.\n"\
				+ "If you have taken at least {anxiety_taken} {anxiety} during your turn during "\
				+ "this Ordeal, {relax} for {healing_amount}.\n{forget}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Rare",
		"_keywords": [],
		"_amounts": {
			"healing_amount": 7,
			"health_percent": 70,
			"anxiety_taken": 10,
		},
		"_is_upgrade": true,
	},
	"% Catatonia %": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.relax.name, Terms.GENERIC_TAGS.slumber.name],
		"Abilities": "If your {anxiety} is at least {health_percent}% full, {relax} for {healing_amount}.\n"\
				+ "If you have taken at least {anxiety_taken} {anxiety} during your turn during "\
				+ "this Ordeal, {relax} for {healing_amount}.\n{forget}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Rare",
		"_keywords": [],
		"_amounts": {
			"healing_amount": 5,
			"health_percent": 60,
			"anxiety_taken": 8,
		},
		"_is_upgrade": true,
	},
	"unnamed_card_17": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for {damage_amount}\nGain {defence_amount} {defence}",
		"Cost": 4,
		"_illustration": "Nobody",
		"_rarity": "Rare",
		"_keywords": ["interpretation","confidence"],
		"_amounts": {
			"damage_amount": 25,
			"defence_amount": 25,
		},
		"_upgrade_threshold": 6,
		"_upgrades": [
			"+ unnamed_card_17 +",
			"@ unnamed_card_17 @",
			"- unnamed_card_17 -",
		],
	},
	"+ unnamed_card_17 +": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for {damage_amount}\nGain {defence_amount} {defence}",
		"Cost": 4,
		"_illustration": "Nobody",
		"_rarity": "Rare",
		"_keywords": ["interpretation","confidence"],
		"_amounts": {
			"damage_amount": 34,
			"defence_amount": 34,
		},
		"_is_upgrade": true,
	},
	"- unnamed_card_17 -": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for {damage_amount}\nGain {defence_amount} {defence}\n{release}",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Rare",
		"_keywords": ["interpretation","confidence","release"],
		"_amounts": {
			"damage_amount": 25,
			"defence_amount": 25,
		},
		"_is_upgrade": true,
	},
	"@ unnamed_card_17 @": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for {damage_amount}\nGain {defence_amount} {defence}",
		"Cost": 5,
		"_illustration": "Nobody",
		"_rarity": "Rare",
		"_keywords": ["interpretation","confidence"],
		"_amounts": {
			"damage_amount": 50,
			"defence_amount": 50,
		},
		"_is_upgrade": true,
	},
	"unnamed_card_18": {
		"Type": "Control",
		"Tags": [],
		"Abilities": "Gain {defence_amount} {defence}.\n"\
				+ "If your {anxiety} is at least {health_percent}% full, gain {immersion_amount} {immersion}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["interpretation","confidence"],
		"_amounts": {
			"immersion_amount": 1,
			"defence_amount": 12,
			"health_percent": 70,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"+ unnamed_card_18 +",
			"= unnamed_card_18 =",
			"% unnamed_card_18 %",
		],
	},
	"+ unnamed_card_18 +": {
		"Type": "Control",
		"Tags": [],
		"Abilities": "Gain {defence_amount} {defence}.\n"\
				+ "If your {anxiety} is at least {health_percent}% full, gain {immersion_amount} {immersion}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["confidence"],
		"_amounts": {
			"immersion_amount": 1,
			"defence_amount": 16,
			"health_percent": 70,
		},
		"_is_upgrade": true,
	},
	"= unnamed_card_18 =": {
		"Type": "Control",
		"Tags": [],
		"Abilities": "Gain {defence_amount} {defence}.\n"\
				+ "If your {anxiety} is at least {health_percent}% full, gain {immersion_amount} {immersion}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["confidence"],
		"_amounts": {
			"immersion_amount": 1,
			"defence_amount": 13,
			"health_percent": 60,
		},
		"_is_upgrade": true,
	},
	"% unnamed_card_18 %": {
		"Type": "Control",
		"Tags": [],
		"Abilities": "Gain {defence_amount} {defence}.\n"\
				+ "If your {anxiety} is at least {health_percent}% full, gain {immersion_amount} {immersion}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["confidence"],
		"_amounts": {
			"immersion_amount": 2,
			"defence_amount": 13,
			"health_percent": 80,
		},
		"_is_upgrade": true,
	},
	"A Thousand Squeaks": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} all Torments for X * {damage_amount}\n"\
				+ "All Torments gain X {confusion}",
		"Cost": 'X',
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_amounts": {
			"damage_amount": 4,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"+ A Thousand Squeaks +",
			"@ A Thousand Squeaks @",
		],
	},
	"+ A Thousand Squeaks +": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} all Torments for X * {damage_amount}\n"\
				+ "All Torments gain X {confusion}",
		"Cost": 'X',
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_amounts": {
			"damage_amount": 6,
		},
		"_is_upgrade": true,
	},
	"@ A Thousand Squeaks @": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} all Torments for (X + 1) * {damage_amount}\n"\
				+ "All Torments gain (X + 1) {confusion}",
		"Cost": 'X',
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_amounts": {
			"damage_amount": 4,
			"x_modifer": "+1",
		},
		"_is_upgrade": true,
	},
	"Hyperfocus": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.buffer.name],
		"Abilities": "Gain X * {defence_amount} {confidence}\n"\
				+ "Gain X * {effect_stacks} {fascination}",
		"Cost": 'X',
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["confidence"],
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.buffer.name: Terms.PLAYER
		},
		"_amounts": {
			"defence_amount": 3,
			"effect_stacks": 2,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"+ Hyperfocus +",
			"* Hyperfocus *",
		],
	},
	"+ Hyperfocus +": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.buffer.name],
		"Abilities": "Gain X * {defence_amount} {confidence}\n"\
				+ "Gain X * {effect_stacks} {fascination}",
		"Cost": 'X',
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["confidence"],
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.buffer.name: Terms.PLAYER
		},
		"_amounts": {
			"defence_amount": 5,
			"effect_stacks": 2,
		},
		"_is_upgrade": true,
	},
	"* Hyperfocus *": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.buffer.name],
		"Abilities": "Gain X * {defence_amount} {confidence}\n"\
				+ "Gain X * {effect_stacks} {fascination}",
		"Cost": 'X',
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["confidence"],
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.buffer.name: Terms.PLAYER
		},
		"_amounts": {
			"defence_amount": 3,
			"effect_stacks": 3,
		},
		"_is_upgrade": true,
	},
	"Misunderstood": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.spark.name, Terms.GENERIC_TAGS.exert.name],
		"Abilities": "Gain {defence_amount} {confidence}. "\
				+ "You may take {exert_amount} {anxiety} "\
				+ "to {shuffle} this card into your deck.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_avoid_normal_discard": true,
		"_rarity": "Common",
		"_amounts": {
			"defence_amount": 8,
			"exert_amount": 2,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"+ Misunderstood +",
			"% Misunderstood %",
		],
	},
	"+ Misunderstood +": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.spark.name, Terms.GENERIC_TAGS.exert.name],
		"Abilities": "Gain {defence_amount} {confidence}. "\
				+ "You may take {exert_amount} {anxiety} "\
				+ "to {shuffle} this card into your deck.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_avoid_normal_discard": true,
		"_rarity": "Common",
		"_amounts": {
			"defence_amount": 11,
			"exert_amount": 2,
		},
		"_is_upgrade": true,
	},
	"% Misunderstood %": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.spark.name, Terms.GENERIC_TAGS.exert.name],
		"Abilities": "Gain {defence_amount} {confidence}. "\
				+ "You may take {exert_amount} {anxiety} "\
				+ "to {shuffle} this card into your deck.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_avoid_normal_discard": true,
		"_rarity": "Common",
		"_amounts": {
			"defence_amount": 13,
			"exert_amount": 5,
		},
		"_is_upgrade": true,
	},
	"Death Ray": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name],
		"Abilities": "{damage} all Torments for {damage_amount}.\n"\
				+ "If your deck currently has at least {deck_size} cards, "\
				+ "{damage} all Torments for {damage_amount2}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_amounts": {
			"damage_amount": 15,
			"damage_amount2": 15,
			"deck_size": 10,
		},
		"_upgrade_threshold": 8,
		"_upgrades": [
			"+ Death Ray +",
			"% Death Ray %",
			"= Death Ray =",
		],
	},
	"+ Death Ray +": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name],
		"Abilities": "{damage} all Torments for {damage_amount}.\n"\
				+ "If your deck currently has at least {deck_size} cards, "\
				+ "{damage} all Torments for {damage_amount2}",
		"Cost": 3,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_amounts": {
			"damage_amount": 22,
			"damage_amount2": 15,
			"deck_size": 10,
		},
		"_is_upgrade": true,
	},
	"% Death Ray %": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name],
		"Abilities": "{damage} all Torments for {damage_amount}.\n"\
				+ "If your deck currently has at least {deck_size} cards, "\
				+ "{damage} all Torments for {damage_amount2}",
		"Cost": 3,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_amounts": {
			"damage_amount": 15,
			"damage_amount2": 25,
			"deck_size": 10,
		},
		"_is_upgrade": true,
	},
	"= Death Ray =": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name],
		"Abilities": "{damage} all Torments for {damage_amount}.\n"\
				+ "If your deck currently has at least {deck_size} cards, "\
				+ "{damage} all Torments for {damage_amount2}",
		"Cost": 3,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_amounts": {
			"damage_amount": 19,
			"damage_amount2": 19,
			"deck_size": 8,
		},
		"_is_upgrade": true,
	},
}

