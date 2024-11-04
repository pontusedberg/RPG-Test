extends Resource
class_name Proficiency

const PROFICIENCYNUMBERS = [0,2,4,6,8]
const test1 = {"Value":PROFICIENCYNUMBERS[4]}

const UNTRAINED = {"value": 0, "is_trained": true}
const TRAINED = {"value": 2, "is_trained": false}
const EXPERT = {"value": 4, "is_trained": false}
const MASTER = {"value": 6, "is_trained": false}
const LEGENDARY = {"value": 8, "is_trained": false}

const PROFICIENCY_DICT: Array = [UNTRAINED,TRAINED,EXPERT,MASTER,LEGENDARY]


@export var ProficiencyDict = PROFICIENCY_DICT
@export var test10 = test1
