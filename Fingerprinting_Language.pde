import java.util.Calendar;

// Press 1-9 to switch between languages. Check console output to see which language is being generated


// ------ agents ------
Agent[] agents = new Agent[200000];
float agentsCount = 5000;
float noiseScale = 800;
float noiseStrength = 50; 
float overlayAlpha = 0;
float agentsAlpha = 300; 
float strokeWidth = 2;

// ------- colors -------
color backcol = #000000;
color strokecol = #ffffff;

// ------ langValues ------
final int slowakVal = 1;
final int engVal = 2;
final int swahiliVal = 3;
final int chinVal = 4;
final int arabVal = 5;
final int japVal = 6;
final int isiVal = 7;

// ------ Arrays -------
String filename = "ArrayQuer.csv";
String doc[][] = new String[9][];
float docWerte[][] = new float[9][];
String lines[];                        //int-arrays to store the values of each language
int langMode = 1;

void setup() {
  size(1920, 1080, P2D);
  smooth();

  //load files into the String-array
  lines = loadStrings(filename);

  //store Values in arrays
  doc[slowakVal] = lines[2].split(";");
  docWerte[slowakVal] = new float[doc.length -1];
  for (int i=1; i<doc[slowakVal].length; i++) {
    docWerte[slowakVal][i-1] = float(doc[slowakVal][i]);
  }
  doc[engVal] = lines[3].split(";");
  docWerte[engVal] = new float[doc.length -1];
  for (int i=1; i<doc[engVal].length; i++) {
    docWerte[engVal][i-1] = float(doc[engVal][i]);
  }
 
  doc[swahiliVal] = lines[4].split(";");
  docWerte[swahiliVal] = new float[doc.length -1];
  for (int i=1; i<doc[swahiliVal].length; i++) {
    docWerte[swahiliVal][i-1] = float(doc[swahiliVal][i]);
  }
  doc[chinVal] = lines[5].split(";");
  docWerte[chinVal] = new float[doc.length -1];
  for (int i=1; i<doc[chinVal].length; i++) {
    docWerte[chinVal][i-1] = float(doc[chinVal][i]);
  }
  doc[arabVal] = lines[6].split(";");
  docWerte[arabVal] = new float[doc.length -1];
  for (int i=1; i<doc[arabVal].length; i++) {
    docWerte[arabVal][i-1] = float(doc[arabVal][i]);
  }
  doc[japVal] = lines[7].split(";");
  docWerte[japVal] = new float[doc.length -1];
  for (int i=1; i<doc[japVal].length; i++) {
    docWerte[japVal][i-1] = float(doc[japVal][i]);
  }
  doc[isiVal] = lines[8].split(";");
  docWerte[isiVal] = new float[doc.length -1];
  for (int i=1; i<doc[isiVal].length; i++) {
    docWerte[isiVal][i-1] = float(doc[isiVal][i]);
  }

  for (int i=0; i<agents.length; i++) {
    agents[i] = new Agent();
  }
}



void draw() {

  // drawing modes

  if (langMode == 1) {

    // SLOWAKISCH
    
    float agentsCount = (docWerte[slowakVal][0]*10);
    float overlayAlpha = 20/(docWerte[slowakVal][1]+1);
    float agentsAlpha = docWerte[slowakVal][1]*60;

    fill(backcol, overlayAlpha);
    noStroke();
    rect(0, 0, width, height);

    stroke(strokecol, agentsAlpha);
    for (int i=0; i<agentsCount; i++) agents[i].update2();
  }
  if (langMode == 2) {

    // ENGLISCH
    
    float agentsCount = (docWerte[engVal][0]*10);
    float overlayAlpha = 20/(docWerte[engVal][1]+1);
    float agentsAlpha = docWerte[engVal][1]*60;

    fill(backcol, overlayAlpha);
    noStroke();
    rect(0, 0, width, height);
    
    stroke(strokecol, agentsAlpha);
    for (int i=0; i<agentsCount; i++) agents[i].update2();
  }
  if (langMode == 3) {

    // SWAHILI
    
    float agentsCount = (docWerte[swahiliVal][0]*10);
    float overlayAlpha = 20/(docWerte[swahiliVal][1]+1);
    float agentsAlpha = docWerte[swahiliVal][1]*60;

    fill(backcol, overlayAlpha);
    noStroke();
    rect(0, 0, width, height);
 
    stroke(strokecol, agentsAlpha);
    for (int i=0; i<agentsCount; i++) agents[i].update2();
  }
  if (langMode == 4) {

    // CHINESISCH
    
    float agentsCount = (docWerte[chinVal][0]*10);
    float overlayAlpha = 20/(docWerte[chinVal][1]+1);
    float agentsAlpha = docWerte[chinVal][1]+1*60;

    fill(backcol, overlayAlpha);
    noStroke();
    rect(0, 0, width, height);

    stroke(strokecol, agentsAlpha);
    for (int i=0; i<agentsCount; i++) agents[i].update2();
  }
  if (langMode == 5) {

    // ARABISCH
    
    float agentsCount = (docWerte[arabVal][0]*10);
    float overlayAlpha = 20/(docWerte[arabVal][1]+1);
    float agentsAlpha = docWerte[arabVal][1]*60;

    fill(backcol, overlayAlpha);
    noStroke();
    rect(0, 0, width, height);

    stroke(strokecol, agentsAlpha);
    for (int i=0; i<agentsCount; i++) agents[i].update2();
  }
  if (langMode == 6) {

    // JAPANISCH
    
    float agentsCount = (docWerte[japVal][0]*10);
    float overlayAlpha = 20/(docWerte[japVal][1]+1);
    float agentsAlpha = docWerte[japVal][1]*60;

    fill(backcol, overlayAlpha);
    noStroke();
    rect(0, 0, width, height);
  
    stroke(strokecol, agentsAlpha);
    for (int i=0; i<agentsCount; i++) agents[i].update2();
  }
  if (langMode == 7) {

    // ISIXHOSA
    
    float agentsCount = (docWerte[isiVal][0]*10);
    float overlayAlpha = 20/(docWerte[isiVal][1]+1);
    float agentsAlpha = docWerte[isiVal][1]+1*60;

    fill(backcol, overlayAlpha);
    noStroke();
    rect(0, 0, width, height);

    stroke(strokecol, agentsAlpha);
    for (int i=0; i<agentsCount; i++) agents[i].update2();
  }
}


void keyReleased() {

  if (key == '1') {
    langMode = 1;
    println("SLOVAK");
    int newNoiseSeed = int(random(100, 200)); 
    noiseSeed(newNoiseSeed);
    background(backcol);
  }
  if (key == '2') {
    langMode = 2;
    println("ENGLISH");
    int newNoiseSeed = int(random(200, 300)); 
    noiseSeed(newNoiseSeed);
    background(backcol);
  }
  if (key == '3') {
    langMode = 3;
    println("SWAHILI");
    int newNoiseSeed = int(random(400, 500)); 
    noiseSeed(newNoiseSeed);
    background(backcol);
  }
  if (key == '4') {
    langMode = 4;
    println("CHINESE");
    int newNoiseSeed = int(random(500, 600)); 
    noiseSeed(newNoiseSeed);
    background(backcol);
  }
  if (key == '5') {
    langMode = 5;
    println("ARABIC");
    int newNoiseSeed = int(random(600, 700)); 
    noiseSeed(newNoiseSeed);
    background(backcol);
  }
  if (key == '6') {
    langMode = 6;
    println("JAPANESE");
    int newNoiseSeed = int(random(700, 800)); 
    noiseSeed(newNoiseSeed);
    background(backcol);
  }
  if (key == '7') {
    langMode = 7;
    println("ISIXHOSA");
    int newNoiseSeed = int(random(800, 900)); 
    noiseSeed(newNoiseSeed);
    background(backcol);
  }

  if (key=='s' || key=='S') saveFrame(timestamp()+".png");
}
String timestamp() {
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", Calendar.getInstance());
}
