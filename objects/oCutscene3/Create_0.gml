/// @description oi

// Inherit the parent event
event_inherited();

// dialogue
strings[0] =  "Mr.Toshi: I see what you mean."
strings[1] =  "That meatball was, ehem, fantastico!";
strings[2] =  "Giuseppe: I’m-a glad you enjoyed it.\n" +
              "Thank-a you for your-a time.";
strings[3] =  "Mr.Toshi: Would you like to try my sushi?\n" +
			  "It’s on the house.";
strings[4] =  "Guiseppe: No, no, thank you. I may come\n" +
              "back another time though. I must-a return\n" +
			  "to my restaurant subito!";
strings[5] =  "Mr.Toshi: Ahh, I understand. I hope to\n" +
              "see you soon then! ";
strings[6] =  "Guiseppe: Addio! Bene fortuna!";
strings[7] =  "...";
strings[8] =  "Mr.Toshi: Welcome in to Toshi Sushi....\n" +
              "Oh, hello sir.";
strings[9] =  "???: Hmph, da. Vat is dis puny restaurant?";
strings[10] = "Mr.Toshi: Well sir, this is Toshi Sushi. I’m\n" +
              "Mr.Toshi, I run this establishment.";
strings[11] = "Oleg: Pah! Establishment? Zis place is nothing\n" +
              "but a tiny speck!";
strings[12] = "Mr.Toshi: Maybe my sushi might change your\n" +
              "mind on that?";
strings[13] = "Oleg: Sushi? Never heard of it! Only\n" +
              "glorious Russian cuisine!";
strings[14] = "Mr.Toshi: Maybe this is a chance for\n" +
			  "you to try something new!";
strings[15] = "Oleg: Well it better be perfect then.\n" +
		      "No mistakes or else!";

// character sprite variables
food_layer = layer_background_get_id("Sushi");
color_layer = layer_background_get_id("Color");

toshi = layer_sprite_get_id("Characters", "gToshi3");
toshi_x_start = layer_sprite_get_x(toshi);
toshi_x = toshi_x_start;

fran = layer_sprite_get_id("Characters", "gFran3");
fran_x_start = layer_sprite_get_x(fran);
fran_x = fran_x_start;

oleg = layer_sprite_get_id("Characters", "gOleg3");
oleg_x_start = layer_sprite_get_x(oleg);
oleg_x = oleg_x_start;