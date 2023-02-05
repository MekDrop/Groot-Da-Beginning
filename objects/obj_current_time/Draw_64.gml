_month = getMonthStr();
_year = getYearStr();

draw_set_font(font_name);

_month_str_height = string_height(_month);
_year_str_height = show_year ? string_height(_year) : 0;
_month_str_width = string_width(_month);
_year_str_width = show_year ? string_width(_year) : 0;
_box_width = max(_month_str_width + padding_horizontal * 2, _year_str_width + padding_horizontal * 2, 200);
_box_height = _month_str_height + _year_str_height;
_month_left = calcLeftPosByCurrentAlign(bbox_left, _box_width, _month_str_width);
_year_left = calcLeftPosByCurrentAlign(bbox_left, _box_width, _year_str_width)

draw_set_alpha(0.5);
draw_set_colour(background_color);
draw_rectangle(bbox_left, bbox_top, bbox_left + _box_width, bbox_top + _box_height, false);

draw_set_alpha(1.0);
draw_set_colour(text_color);
draw_text(_month_left, bbox_top + padding_vertical, _month);
if(show_year) {
	draw_text(_year_left, bbox_top + _month_str_height, _year);
}