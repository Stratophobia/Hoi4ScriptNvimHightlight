"syntax/hoi4.vim
if exists("b:current_syntax") | finish | endif

syn keyword hoi4Keyword focus shared_focus focus_tree country_event global defined_text
syn keyword hoi4Scope every_state every_owned_state random_owned_state ROOT THIS PREV FROM overlord faction_leader controller capital_scope event_target var if else_if else OR NOT AND random_list
syn keyword hoi4Param id icon ai_will_do ai_chance x y value trigger default factor modifier add tag original_tag cost log option title desc completion_reward continuous_focus_position country search_filters allow_branch mutually_exclusive prerequisite limit ideology relative_position_id available select_effect name folder days bonus cost_reduction uses category bypass picture allowed allowed_civil_war allowed targeted_modifier removal_cost days_remove visible complete_effect remove_effect tooltip fire_only_once keep_completed tree is_good priority visible_when_empty scripted_gui dynamic localization_key text target immediate is_triggered_only
syn keyword hoi4Bool yes no
syn match hoi4Variable "\v\@[a-zA-Z_0-9]+"
syn match hoi4Operator "\v\="
syn match hoi4Comment "\v#.*$"
syn match hoi4Tag "\v<[A-Z]{2}([A-Z]|[0-9])>"

syn region hoi4String start='"' end='"'

syn match hoi4Number "\v<\d+(\.\d+)?>"

hi def link hoi4Keyword		Keyword
hi def link hoi4Scope			Type
hi def link hoi4Tag				Type
hi def link hoi4SpecTag		Type
hi def link hoi4Variable	Identifier
hi def link hoi4Param			Identifier
hi def link hoi4Operator	Operator
hi def link hoi4Comment		Comment
hi def link hoi4String		String
hi def link hoi4Number		Number
hi def link hoi4Bool			Boolean

let b:current_syntax = "hoi4"
