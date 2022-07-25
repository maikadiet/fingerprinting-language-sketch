class Agent {
  PVector p, pOld;
  float stepSize, angle;
  boolean isOutside = false;

  Agent() {
    p = new PVector(random(width), random(height));
    pOld = new PVector(p.x, p.y);
    stepSize = random(1, 5);
  }

  void update2() {
    // drawing modes 

    if (langMode == 1) {

      // SLOWAKISCH
      
      float noiseStrength = (docWerte[slowakVal][2]+1)*10;
      float noiseScale = (docWerte[slowakVal][2]+1)*300;

      angle = noise(p.x/noiseScale, p.y/noiseScale) * (docWerte[slowakVal][2]+1*40);
      angle = ((angle - int(angle))) * noiseStrength;

      p.x += (cos(angle) * stepSize)/(docWerte[slowakVal][2]+1);
      p.y += (sin(angle) * stepSize)/(docWerte[slowakVal][2]+1);

      strokeWidth = (docWerte[slowakVal][2]+1)/3;
      stepSize = (docWerte[slowakVal][2]+1)*5;            
      strokeWeight(strokeWidth*stepSize);
      line(pOld.x, pOld.y, p.x, p.y);
    }
    if (langMode == 2) {
     
      // ENGLISCH
      float noiseStrength = (docWerte[engVal][2]+1)*10;
      float noiseScale = (docWerte[engVal][2]+1)*300; 

      angle = noise(p.x/noiseScale, p.y/noiseScale) * (docWerte[engVal][2]+1*40);
      angle = ((angle - int(angle))) * noiseStrength;

      p.x += (cos(angle) * stepSize)/(docWerte[engVal][2]+1);
      p.y += (sin(angle) * stepSize)/(docWerte[engVal][2]+1);

      strokeWidth = (docWerte[engVal][2]+1)/3;
      stepSize = (docWerte[engVal][2]+1)*5;                   
      strokeWeight(strokeWidth*stepSize);
      line(pOld.x, pOld.y, p.x, p.y);
    }
    if (langMode == 3) {
   
      // SWAHILI
      
      float noiseStrength = (docWerte[swahiliVal][2]+1)*10;
      float noiseScale = (docWerte[swahiliVal][2]+1)*300;

      angle = noise(p.x/noiseScale, p.y/noiseScale) * (docWerte[swahiliVal][2]+1*40);
      angle = ((angle - int(angle))) * noiseStrength;

      p.x += (cos(angle) * stepSize)/(docWerte[swahiliVal][2]+1);
      p.y += (sin(angle) * stepSize)/(docWerte[swahiliVal][2]+1);

      strokeWidth = (docWerte[swahiliVal][2]+1)/3;
      stepSize = (docWerte[swahiliVal][2]+1);                        
      strokeWeight(strokeWidth*stepSize);
      line(pOld.x, pOld.y, p.x, p.y);
    }
    if (langMode == 4) {
    
      // CHINESISCH
      
      float noiseStrength = (docWerte[chinVal][2]+1)*10;
      float noiseScale = (docWerte[chinVal][2]+1)*300;

      angle = noise(p.x/noiseScale, p.y/noiseScale) * (docWerte[chinVal][2]+1*40);
      angle = ((angle - int(angle))/4) * noiseStrength;

      p.x += (cos(angle) * stepSize)/(docWerte[chinVal][2]+1);
      p.y += (sin(angle) * stepSize)/(docWerte[chinVal][2]+1);

      strokeWidth = (docWerte[chinVal][2])/3;
      stepSize = (docWerte[chinVal][2]);                              
      strokeWeight(strokeWidth*stepSize);
      line(pOld.x, pOld.y, p.x, p.y);
      
      color(#ffffff);
      textSize(50);
      text("swedish", 50, 100);
    }
    if (langMode == 5) {
  
      // ARABISCH
      
      float noiseStrength = (docWerte[arabVal][2]+1)*10;
      float noiseScale = (docWerte[arabVal][2]+1)*300;

      angle = noise(p.x/noiseScale, p.y/noiseScale) * (docWerte[arabVal][2]+1*40);
      angle = ((angle - int(angle))/2) * noiseStrength;

      p.x += (cos(angle) * stepSize)/(docWerte[arabVal][2]+1);
      p.y += (sin(angle) * stepSize)/(docWerte[arabVal][2]+1);

      strokeWidth = (docWerte[arabVal][2])/3;
      stepSize = (docWerte[arabVal][2]+1);                              
      strokeWeight(strokeWidth*stepSize);
      line(pOld.x, pOld.y, p.x, p.y);
    }
    if (langMode == 6) {

      // JAPANISCH
      
      float noiseStrength = (docWerte[japVal][2]+1)*10;
      float noiseScale = (docWerte[japVal][2]+1)*300;

      angle = noise(p.x/noiseScale, p.y/noiseScale) * (docWerte[japVal][2]+1*40); 
      angle = ((angle - int(angle))/4) * noiseStrength;

      p.x += (cos(angle) * stepSize)/(docWerte[japVal][2]+1);
      p.y += (sin(angle) * stepSize)/(docWerte[japVal][2]+1);

      strokeWidth = (docWerte[japVal][2]+1)/3;
      stepSize = (docWerte[japVal][2]);                          
      strokeWeight(strokeWidth*stepSize);
      line(pOld.x, pOld.y, p.x, p.y);
    }
    if (langMode == 7) {

      // ISIXHOSA
      
      float noiseStrength = (docWerte[isiVal][2]+1)*10;
      float noiseScale = (docWerte[isiVal][2]+1)*300;

      angle = noise(p.x/noiseScale, p.y/noiseScale) * (docWerte[isiVal][2]+1*40); 
      angle = ((angle - int(angle))) * noiseStrength;

      p.x += (cos(angle) * stepSize)/(docWerte[isiVal][2]+1);
      p.y += (sin(angle) * stepSize)/(docWerte[isiVal][2]+1);

      strokeWidth = (docWerte[isiVal][2]+1)/3;
      stepSize = (docWerte[isiVal][2]+1)*5;
      strokeWeight(strokeWidth*stepSize);
      line(pOld.x, pOld.y, p.x, p.y);
    }

    if (p.x<-10) isOutside = true;
    else if (p.x>width+10) isOutside = true;
    else if (p.y<-10) isOutside = true;
    else if (p.y>height+10) isOutside = true;

    if (isOutside) {
      p.x = random(width);
      p.y = random(height);
      pOld.set(p);
    }

    pOld.set(p);

    isOutside = false;
  }
}
