/// @description Insert description here
// You can write your code in this editor
#region inputs
var up = Input_IsPressed(INPUT.UP);
var down = Input_IsPressed(INPUT.DOWN);
var right = Input_IsPressed(INPUT.RIGHT);
var left = Input_IsPressed(INPUT.LEFT);
var confirm = Input_IsPressed(INPUT.CONFIRM)
var cancel = Input_IsPressed(INPUT.CANCEL)
#endregion

switch(set){
    case MENU_SET.MAIN: #region
        var vmove = down - up
        main_sel += vmove
        if main_sel > main_length-1 {main_sel = 0;}
        else if main_sel < 0 {main_sel = main_length-1;}
        if confirm{
            switch(main_sel){
                case 0: //return
                    room_goto(room_menu);
                    break;
                case 1: //BGM
                    set = MENU_SET.BGM;
                    break;
                case 2: //SND
                    set = MENU_SET.SND;
                    break;
                case 3: //language
                    set = MENU_SET.LANG;
                    break;
                case 4: //border
                    set = MENU_SET.BORDER;
                    break;
            }
        }
        break;#endregion
    case MENU_SET.BGM: #region
		 /*if right || left{ // we can audio and run this once at each button press
            var bord_sel = Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.BORDER_SEL);
            bord_sel += right - left
            if bord_sel > bord_length-1 {bord_sel = 0;}
            else if bord_sel < 0 {bord_sel = bord_length-1;}
            Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.BORDER_SEL,bord_sel)
        }else*/ if cancel set = MENU_SET.MAIN;
        break;#endregion
    case MENU_SET.SND: #region
		 /*if right || left{ // we can audio and run this once at each button press
            var bord_sel = Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.BORDER_SEL);
            bord_sel += right - left
            if bord_sel > bord_length-1 {bord_sel = 0;}
            else if bord_sel < 0 {bord_sel = bord_length-1;}
            Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.BORDER_SEL,bord_sel)
        }else*/ if cancel set = MENU_SET.MAIN;
        break;#endregion
    case MENU_SET.LANG: #region
		 if right || left{ // we can audio and run this once at each button press
            
        }else if cancel set = MENU_SET.MAIN;
        break;#endregion
    case MENU_SET.BORDER: #region borders
        if right || left{ // we can audio and run this once at each button press
            var bord_sel = Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.BORDER_SEL);
            bord_sel += right - left
            if bord_sel > bord_length-1 {bord_sel = 0;}
            else if bord_sel < 0 {bord_sel = bord_length-1;}
            Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.BORDER_SEL,bord_sel)
			with (border) {
				event_user(0);
			}
        }else if cancel set = MENU_SET.MAIN;        
        break;#endregion
}
