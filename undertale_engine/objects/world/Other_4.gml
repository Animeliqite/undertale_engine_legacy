Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ROOM,room);

room_persistent=false;

if (global._gameover_room_reset){
    global._gameover_room_reset=false;
    room_restart();
}