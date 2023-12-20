if (_ready==true&&image_alpha<1) {
	image_alpha+=0.0055;
	if (image_alpha>1) {
		gameover.check=true;
		if (!instance_exists(text_typer)) {
			var rand=irandom_range(1,5);
			typer=instance_create_depth(120,320,DEPTH_UI.TEXT,text_typer);
			switch (rand) {
				case 0:
					typer.text="{space_x 2}{scale 2}{space_y 2}{voice 2}{speed 4}{skippable false}You will be&alright.{pause}{clear}" + string(Player_GetName()) + "!{sleep 24} &Stay determined...{pause}{clear}{pause}{GAMEOVER_FADE}{end}"
					break;
				case 1:
					typer.text="{space_x 2}{scale 2}{space_y 2}{voice 2}{speed 4}{skippable false}No, {sleep 15} it's not over &yet!{pause}{clear}" + string(Player_GetName()) + "!{sleep 24} &Stay determined...{pause}{clear}{pause}{GAMEOVER_FADE}{end}"
					break;
				case 2:
					typer.text="{space_x 2}{scale 2}{space_y 2}{voice 2}{speed 4}{skippable false}You cannot give &up just yet...{pause}{clear}" + string(Player_GetName()) + "!{sleep 24} &Stay determined...{pause}{clear}{pause}{GAMEOVER_FADE}{end}"
					break;
				case 3:
					typer.text="{space_x 2}{scale 2}{space_y 2}{voice 2}{speed 4}{skippable false}Our fate rests &upon you...{pause}{clear}" + string(Player_GetName()) + "!{sleep 24} &Stay determined...{pause}{clear}{pause}{GAMEOVER_FADE}{end}"
					break;
				case 4:
					typer.text="{space_x 2}{scale 2}{space_y 2}{voice 2}{speed 4}{skippable false}Don't lose hope!{pause}{clear}" + string(Player_GetName()) + "!{sleep 24} &Stay determined...{pause}{clear}{pause}{GAMEOVER_FADE}{end}"
					break;
			}
		}
		_ready=-1;
	}
}


if (!_ready&&image_alpha>0) {
	image_alpha-=0.0055;
	if (image_alpha<=0) {
		gameover.checkGMOver=true;
	}
}