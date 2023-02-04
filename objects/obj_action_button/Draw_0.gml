_width = bbox_right - bbox_left;
_height = bbox_bottom - bbox_top;

draw_sprite_stretched(icon, 0, bbox_left, bbox_top, _width, _height);

draw_self();