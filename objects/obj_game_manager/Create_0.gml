step_number = 1;

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
	for(var i = 0; i < 32; i++)
	{
		if (jsonDat[i].new_action == currentAction && jsonDat[i].old_action == previousAction) 
		{	
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