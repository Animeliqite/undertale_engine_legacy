/// @description Insert description here
// You can write your code in this editor
BGM_Play(0,bgm_harpnoise,false);

_harp_length=(audio_sound_length(BGM_GetAudio(0))/2)*room_speed;
_show_bars=true;
_bar_distance=0;

_text_bgm_volume=noone;
_text_sfx_volume=noone;

enum MENU_SET {
	MAIN,
	BGM,
	SND,
	LANG,
	BORDER,
}

set = MENU_SET.MAIN;

main_sel = 0;

main_text = [
	"EXIT",
	"BGM VOL.",
	"SND VOL.",
	"LANGUAGE",
	"BORDERS"
]

main_length = array_length(main_text);

bord_length = array_length(global.borders);

alarm[0]=_harp_length;
Anim_Create(id,"_bar_distance",0,0,_bar_distance,320,_harp_length,0,-1,-1,ANIM_MODE.ONESHOT,false);