step_number = 1;

gameOver = false;
endTurns = false;

heightTreeLevel = 2;
widthTreeLevel = 2;
colorTreeLevel = 2;
rootTreeLevel = 2;

previousAction = "skip";


file = file_text_open_read("tree_logic.json"); 
json = file_text_read_string(file);
file_text_close(file);

jsonDat = json_parse(json);

function calc_current_month() {
	return (step_number + start_month - 1) - (calc_current_year() - 1) * 12;
}

function calc_current_year() {
	return floor((step_number + start_month - 1) / 12) + 1;
}


function ChangeTressLogic(currentAction)
{
	show_debug_message(currentAction)
	show_debug_message(previousAction)
	if gameOver == true || endTurns == true
	return;
	
	for(var i = 0; i < array_length(jsonDat); i++)
	{
		if (jsonDat[i].new_action == currentAction && jsonDat[i].old_action == previousAction) 
		{	
			show_debug_message("caramba")
			heightTreeLevel += jsonDat[i].h;
			if heightTreeLevel > 5 heightTreeLevel = 5;
			widthTreeLevel += jsonDat[i].w;
			if widthTreeLevel > 5 widthTreeLevel = 5;
			colorTreeLevel += jsonDat[i].c;
			if colorTreeLevel > 5 colorTreeLevel = 5;
			rootTreeLevel += jsonDat[i].r;
			if rootTreeLevel > 5 rootTreeLevel = 5;
			
			previousAction = currentAction;
			step_number +=1;
			
			
			if (heightTreeLevel < 1 || widthTreeLevel < 1 || colorTreeLevel < 1 || rootTreeLevel < 1 ) 
			{
				gameOver = true;	
			}
			if (step_number > 11) 
			{
				endTurns = true;	
			}
			show_debug_message("here")
		}
	}
	
	show_debug_message(string(heightTreeLevel));
	show_debug_message(string(widthTreeLevel));
	show_debug_message(string(colorTreeLevel));
	show_debug_message(string(rootTreeLevel));
	show_debug_message("");
}

function GetNextSprite(height, width, color)
{
	var obj = asset_get_index("h" + string(height) + "_w" + string(width) + "_c" + string(color));
	if (obj > -1)
	{
		return obj;
	}
	else
	{
		show_debug_message("N");
	}
	
	return -1;
}


function GetRootSprite(r)
{
	var obj = asset_get_index("r" + string(r));
	
	if (obj > -1)
	{
		return obj;
	}
	else
	{
		show_debug_message("N");
	}
	
	return -1;
}

function getFinalScore() {
	return (heightTreeLevel + rootTreeLevel + widthTreeLevel + colorTreeLevel);
}