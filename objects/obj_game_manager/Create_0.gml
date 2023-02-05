step_number = 1;

function calc_current_month() {
	return (step_number + start_month - 1) - (calc_current_year() - 1) * 12;
}

function calc_current_year() {
	return floor((step_number + start_month - 1) / 12) + 1;
}