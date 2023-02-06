// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PaintingToolAction(){
	_currentAction = "painting";
	
//	if obj_game_manager.step_number == 9
//	{
//		return;
//	}
	show_debug_message("painting")
	
	obj_game_manager.ChangeTressLogic(_currentAction);
	
	obj_Tree.sprite_index = obj_game_manager.GetNextSprite(obj_game_manager.heightTreeLevel,
	obj_game_manager.widthTreeLevel,
	obj_game_manager.colorTreeLevel);
	
	obj_Root.sprite_index = obj_game_manager.GetRootSprite(obj_game_manager.rootTreeLevel);
}