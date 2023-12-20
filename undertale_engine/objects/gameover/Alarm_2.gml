BGM_Play(0,bgm_gameover,true);
BGM_SetPitch(0,0.95);

if (!instance_exists(gameover_header)) {
	header=instance_create_depth(320,142,0,gameover_header);
	header._ready=true;
}