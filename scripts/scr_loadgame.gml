if (file_exists("Save.sav"))
{
    ini_open("Save.sav")
    score = ini_read_real("HighScore","points",0);
    
}
