if (check == true) {
	if (!instance_exists(text_typer)) {
		instance_destroy(text_typer);
		gameover_header._ready=false;
		BGM_SetVolume(0,0,135);
	}
}

if(checkGMOver == true){
	var room_target = Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.ROOM);
	_mode=file_exists(Flag_GetSavePath(FLAG_TYPE.INFO));
	if(_mode==0){
		BGM_Stop(0)
		Flag_Clear(FLAG_TYPE.INFO);
		Flag_Clear(FLAG_TYPE.TEMP);
		Flag_Clear(FLAG_TYPE.STATIC);
		Flag_Custom();
		Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.NAME,_old_name);
		global._gameover_room_reset=true;
		room_goto(room_area_0);
		fader.alpha=1;
		Fader_Fade(-1,0,20);
		BGM_Resume(0);
		BGM_SetVolume(0,0);
	}
	else{
		Player_Load(0);
		if(room_exists(room_target)){
			BGM_Stop(0)
			fader.alpha=1;
			global._gameover_room_reset=true;
			room_goto(room_target);
			Fader_Fade(-1,0,20);
			BGM_Resume(0);
			BGM_SetVolume(0,0);
		}
	}
}