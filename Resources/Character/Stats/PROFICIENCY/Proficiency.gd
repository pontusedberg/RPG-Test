extends Variables
class_name Proficiency

var untrained: ProficiencyTypes
var trained: ProficiencyTypes
var expert: ProficiencyTypes
var master: ProficiencyTypes
var legendary: ProficiencyTypes

func _init():
	untrained = ProficiencyTypes.new("Untrained", 0, false)
	trained = ProficiencyTypes.new("Trained", 2, false)
	expert = ProficiencyTypes.new("Expert", 4, false)
	master = ProficiencyTypes.new("Master", 6, false)
	legendary = ProficiencyTypes.new("Legendary", 8, false)

func set_state(selected_proficiency: ProficiencyTypes):
	# Set only the selected proficiency to true, others to false
	untrained.Istrained = (selected_proficiency == untrained)
	trained.Istrained = (selected_proficiency == trained)
	expert.Istrained = (selected_proficiency == expert)
	master.Istrained = (selected_proficiency == master)
	legendary.Istrained = (selected_proficiency == legendary)
