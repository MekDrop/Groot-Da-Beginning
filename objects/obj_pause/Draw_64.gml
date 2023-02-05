
#region Draw Buttons & Background
//////////////////////////////////////////////////////////////////////////////

if ( screen_alpha > 0 ){
draw_set_color( c_black );
draw_set_alpha( screen_alpha );
draw_rectangle( 0,0, room_width, room_width, false );
draw_set_alpha( 1 );
draw_set_color( c_white );
_old_valign = draw_get_valign();
_old_halign = draw_get_halign();
draw_set_halign( fa_left );
draw_set_valign( fa_center );
//draw_set_font( font ); //If you're using your own fonts, set them here.

	// Draw Buttons
	for( var i=0; i<bc; i++; ){
		draw_text_transformed_color( bx[i]-50,by[i],bstring[i],bsca[i],bsca[i],0,bcol[i],bcol[i],bcol[i],bcol[i],balpha[i] * screen_alpha );
	}
	
draw_set_halign( _old_halign );
draw_set_valign( _old_valign );
}

//////////////////////////////////////////////////////////////////////////////
#endregion