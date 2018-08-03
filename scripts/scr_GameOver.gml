if (obj_player.y > room_height + obj_player.sprite_height/2)
{
    if (scr_SaveScore())
        show_message("New high score!#" + string(score) + " points!");
    else
        show_message("Game Over...#Your score: " + string(score));
    instance_destroy();
    
    room_goto(rm_start);
}
