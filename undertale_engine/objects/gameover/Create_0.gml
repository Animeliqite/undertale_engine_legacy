x=Flag_Get(FLAG_TYPE.TEMP,FLAG_TEMP.GAMEOVER_SOUL_X);
y=Flag_Get(FLAG_TYPE.TEMP,FLAG_TEMP.GAMEOVER_SOUL_Y);
audio_stop_all();

image_speed=0;
image_index=0;

alarm[0]=40;

check=false;
checkGMOver=false;
_mode=0;

_old_name=Player_GetName();