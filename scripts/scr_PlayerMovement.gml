// Retrieve user input
key_left = -keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));

// LnR movement
hspd = (key_left+key_right) * movespeed;

// Jump
if (grav < 10)
{
    vspd += grav;
}

if (place_free(x, y+1))
    grav = 1;
else
    grav = 0;

if (place_meeting(x, y+vspd, obj_dirt))
{
    if (sign(vspd) == 1)
    {
        move_contact_solid(270, vspd);
        vspd = blockSpeed;
    }
    else if (sign(vspd) == -1)
    {
        vspd = -vspd;
    }
}
    
if keyboard_check_pressed(vk_space) and (!place_free(x, y+1) and place_free(x, y-jumpspeed))
    vspd = -jumpspeed;

// Collision
if (place_meeting(x+hspd, y, obj_dirt))
    hspd = 0;
    
// with obj_platform
if (place_meeting(x, y+vspd, obj_platform))
{
    vspd = 0;
    obj_platform.vspd = blockSpeed;
}

x += hspd;
y += vspd;

// Stay within play area
if (x >= 840-sprite_width/2)
{
    hspd = 0;
    x = 840-sprite_width/2;
}
else if (x <= 200+sprite_width/2)
{
    hspd = 0;
    x = 200+sprite_width/2;
}
//Increase speed when 'W" is pressed
if keyboard_check(ord("W"))
{
    //blockSpeed+=0.1;
    blockSpeed *=1.5 ;
    
}

if keyboard_check_released(ord("W"))
{
    blockSpeed = 0.6;
}
