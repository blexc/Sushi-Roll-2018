/// @description oi

// Inherit the parent event
event_inherited();

strings[0] = "Mr.Toshi: So, how is it?";
strings[1] = "Oleg: Hmm... It is... Adequate.";
strings[2] = "Mr.Toshi: Wonderful! I’m glad you enjoyed it!";
strings[3] = "Oleg: However, sushi is nowhere near as good\n" +
		     "as Russian sushki. ";
strings[4] = "Mr.Toshi: Sushki? I must try that sometime!";
strings[5] = "Oleg: Maybe next time I stop by, I bring\n" +
		     "some.";
strings[6] = "Dasvidaniya, Mr. Toshi."
			 
// character sprite variables
food_layer = layer_background_get_id("Sushi");
color_layer = layer_background_get_id("Color");

toshi = layer_sprite_get_id("Characters", "gToshi4");
toshi_x_start = layer_sprite_get_x(toshi);
toshi_x = toshi_x_start;

oleg = layer_sprite_get_id("Characters", "gOleg4");
oleg_x_start = layer_sprite_get_x(oleg);
oleg_x = oleg_x_start;