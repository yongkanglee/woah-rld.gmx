ini_open("Save.sav")

currentHigh = ini_read_real("HighScore", "points", 0);
if (score > currentHigh)
{
    ini_write_real("HighScore","points",score)
}
ini_close();

// returns true if new high score was set
if (score > currentHigh)
    return true;
else
    return false;
