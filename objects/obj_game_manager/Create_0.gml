step_number = 1;

heightTreeLevel = 2;
widthTreeLevel = 2;
colorTreeLevel = 2;
rootTreeLevel = 2;

previousAction = "water";
currentRow = 0;


function calc_current_month() {
	return step_number - calc_current_year() * 12;
}

function calc_current_year() {
	return floor(step_number / 12);
}