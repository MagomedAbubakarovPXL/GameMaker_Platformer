vsp = vsp + grv;

// Horizontal collision
if (place_meeting(x+hsp, y, oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall)) 
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}

x = x + hsp;

// Vertical collition
if (place_meeting(x, y+vsp, oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall)) 
	{
		y = y + sign(vsp);
	}
	
	vsp = 0;
}

y = y + vsp;

// Animation
if(!place_meeting(x,y+1,oWall))
{
	sprite_index = sEnemy_alien_jump;	
}
else
{
	if (hsp == 0)
	{
		sprite_index = sEnemy_alien_idle;	
	}
	else
	{
		sprite_index = sEnemy_alien_run;	
	}
}

if(hsp != 0) image_xscale = sign(hsp);
