// Inherit the parent event
event_inherited();

// text
strings[0] = "Mr. Toshi: Welcome to Toshi Sushi!";
strings[1] = "Chad: Awww yeah, this place looks cool!";
strings[2] = "So, like, what do you serve here?";
strings[3] = "Mr. Toshi: I serve high quality sushi made fresh in my kitchen.\n" +
			 "I have plenty to offer here, just ask!";
strings[4] = "Chad: Sushi? I think I’ve heard of that before. That’s like the\n" +
			 "fish and rice stuff, right? That seems pretty rad, dude.";
strings[5] = "Mr. Toshi: Yes! Is there a specific roll you would like to try?\n";
strings[6] = "Chad: That California Roll on your menu looks cool, I’ll try\n" +
			 "that!";

// character sprite variables
toshi = layer_sprite_get_id("Characters", "gToshi");
toshi_x_start = layer_sprite_get_x(toshi);
toshi_x = toshi_x_start;

chad = layer_sprite_get_id("Characters", "gChad");
chad_x_start = layer_sprite_get_x(chad);
chad_x = chad_x_start;