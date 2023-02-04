step_number = 1;

function calc_current_month() {
	return step_number - calc_current_year() * 12;
}

function calc_current_year() {
	return floor(step_number / 12);
}