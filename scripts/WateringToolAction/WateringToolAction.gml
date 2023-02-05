// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function WateringToolAction()
{
	
	_previousAction = obj_game_manager.previousAction;
	_currentAction = "water";

	
	file = file_text_open_read("tempTree.json"); 
	json = file_text_read_string(file);
	file_text_close(file);

	data = json_parse(json);
	
	show_debug_message(data);
	
	for(var i = 0; i < 2; i++)
	{
		if (data[i].new_action == _currentAction && data[i].old_action == _previousAction) 
		{	
			obj_game_manager.heightTreeLevel += data[i].h;
			obj_game_manager.heightTreeLevel += data[i].w;
			obj_game_manager.heightTreeLevel += data[i].c;
			
			obj_game_manager.previousAction = _currentAction;
		}
	}
	
	waterStartIndex = 0;
	

	obj_Tree.sprite_index = GetNextSprite(5,5,5);
}

function GetNextSprite(height, width, color)
{
	var obj = asset_get_index("h" + string(height) + "_w" + string(width) + "_c" + string(color));
	if (obj > -1)
	{
		show_debug_message(obj);
		return obj;
	}
	else
	{
		show_debug_message("N");
	}
	
	return -1;
}