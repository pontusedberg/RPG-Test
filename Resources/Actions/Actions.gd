extends Resource
class_name ACTIONS
const NAME: String = "Name"
const DESCRIPTION: String = "Description"



@export var Name = NAME
@export var Description = DESCRIPTION
@export var Actions_Array = ACTIONS_ARRAY

const ACTIONS_ARRAY: Array = []

class ACTION:
	func Handle_Actions():
		#Search From ActionsArray
		#
		pass



class BASIC_ACTIONS:
	func Basic_Action():
		pass
		

class AID_ACTION:
	func Aid_Action():
		pass
