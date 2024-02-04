if(done == 0)
{
	vsp = vsp + grv;

	// Horizontal collision
	if (place_meeting(x+hsp, y, oWall))
	{
		while (!place_meeting(x+sign(hsp),y,oWall)) 
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	}

	x = x + hsp;

	// Vertical collition
	if (place_meeting(x, y+vsp, oWall))
	{
		if(vsp > 0) 
		{
			done = 1;
			startDeathAnimation = true;
		}
		while (!place_meeting(x,y+sign(vsp),oWall)) 
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}

	y = y + vsp;
}

// Play dead animation and stop on the last frame
if(startDeathAnimation)
{
    image_speed = 0.5;
    if(image_index >= 3) 
    {
        image_speed = 0; 
        image_index = 4; 
        startDeathAnimation = false; 
    }
}