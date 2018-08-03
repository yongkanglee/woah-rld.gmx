hspd = argument0;

x += hspd;

if (x > 840-sprite_width/2)
{
    hspd = -hspd;
    x = 840 - sprite_width/2;
}
else if (x < 200+sprite_width/2)
{
    hspd = -hspd;
    x = 200 + sprite_width/2;
}
