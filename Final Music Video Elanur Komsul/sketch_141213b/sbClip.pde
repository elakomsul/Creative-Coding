class sbClip
{
  float start;
  float duration;
  float speed;
}

void loadclips() // this loads up the data file for the clips
{
  theclips = new ArrayList<sbClip>(); // initialize array of clips

  String[] thestuff = loadStrings("Spring Breakers.txt"); // this is the text file
  for (int i = 0; i<thestuff.length; i++) // go through the text file
  {
    sbClip temp = new sbClip(); // make me a new clip object
    String[] singleclip = thestuff[i].split(","); // split up the current line by commas
    temp.start = parseFloat(singleclip[0]); // first number is start time
    temp.duration = parseFloat(singleclip[1]); // second number is duration
    temp.speed = parseFloat(singleclip[2]); // third number is speed
    theclips.add(temp); // add to ArrayList
  }
}

