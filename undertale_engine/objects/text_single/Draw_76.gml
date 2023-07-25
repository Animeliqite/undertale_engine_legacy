switch(effect){
	case -1:
		_offset_x=0;
		_offset_y=0;
		break;
		
	case 0:
		if(_effect_shook){
			_offset_x=random_range(-1,1);
			_offset_y=random_range(-1,1);
		}
		_effect_shook=!_effect_shook;
		break;
	case 1:
		_offset_x=dcos(_siner);
		_offset_y=dsin(_siner);
		_siner+=15;
		break;
	case 2:
		if(_effect_shook){
			_offset_x=random_range(-1,1);
			_offset_y=random_range(-1,1);
			_effect_shook=false;
		}
		else {
			_offset_x=0;
			_offset_y=0;
		}
		_effect_shook=(random(100)>98 ? true : false)
		break;
}