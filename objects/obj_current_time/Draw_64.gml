_month = getMonthStr();
_year = getYearStr();

draw_set_font(font_name);

_month_str_height = string_height(_month);
_year_str_height = string_height(_year);
_month_str_width = string_width(_month);
_year_str_width = string_width(_year);
_box_width = max(_month_str_width + padding_horizontal * 2, _year_str_width + padding_horizontal * 2, 100);
_box_height = _month_str_height + _year_str_height;

draw_set_alpha(0.5);
draw_set_colour(background_color);
draw_rectangle(bbox_left, bbox_top, bbox_left + _box_width, bbox_top + _box_height, false);

draw_set_alpha(1.0);
draw_set_colour(text_color);
draw_text(bbox_left + padding_horizontal, bbox_top + padding_vertical, _month);
draw_text(bbox_left + padding_horizontal, bbox_top + _month_str_height, _year);