/// @description oi

// Inherit the parent event
event_inherited();

// text
strings[0] =  "Chad: Awesome! Thanks a ton dude, that sushi was\n" +
			  "freakin’ sweet!";
strings[1] =  "Mr.Toshi: Haha, no problem. I’m just happy\n" +
			  "spreading the joy of sushi with everyone.\n" + 
			  "Thank you for coming!";
strings[2] =  "Chad: Haha, thanks man, I’ll definitely come\n" +
			  "back here next time I’m in town. See ya later\n" +
			  "brochacho!~";
strings[3] =  "...";
strings[4] =  "Mr.Toshi: Ahhh, welcome to Toshi Sushi! How may\n" +
              "I help you today?";
strings[5] =  "???: So this-a is the famous Toshi Sushi, huh?\n" +
              "What a quaint-a place!";
strings[6] =  "Mr.Toshi: A fellow chef, I see. What’s your name?";
strings[7] =  "I am Giuseppe Francesco, world-a famous Italiano\n" +
              "chef! I am here to examine my competition!";
strings[8] =  "Mr.Toshi: Competition?";
strings[9] =  "Giuseppe: Yes! Competition! I am here to see\n" +
              "if you can handle my spectacular Italiano cuisine!\n";
strings[10] = "Now, try this meatball!";
			
// voices
voices[0] = "";

// character sprite variables
food_layer = layer_background_get_id("Sushi");

toshi = layer_sprite_get_id("Characters", "gToshi2");
toshi_x_start = layer_sprite_get_x(toshi);
toshi_x = toshi_x_start;

chad = layer_sprite_get_id("Characters", "gChad2");
chad_x_start = layer_sprite_get_x(chad);
chad_x = chad_x_start;

fran = layer_sprite_get_id("Characters", "gFran2");
fran_x_start = layer_sprite_get_x(fran);
fran_x = fran_x_start;