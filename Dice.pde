diche joe;
void setup()
{
  size(700,700);
  
  noLoop();
}
void draw()
{
  int total = 0;
  background(255);
  for(int x = 0; x<6;x++){
    for(int i = 0; i<9;i++){
      joe = new diche(i*75+25,25+x*100);
      joe.show();
      
      total += joe.num();
      
    }
  }
  textSize(30);
  textAlign(CENTER);
  
  text(total, 350,650);
}

void mouseClicked()
{
  joe.roll();
  redraw();
}

class diche
{
  int x, y, siz, dots, col;
  
  diche(int ex,int ey){
    x=ex;
    y=ey;
    siz = 50;
    dots = (int)(Math.random()*6)+1;
    col = color(((int)(Math.random()*255)+1),((int)(Math.random()*255)+1),((int)(Math.random()*255)+1));
    
  }
  void roll()
  {
    dots = (int)(Math.random()*6)+1;
    col = color(((int)(Math.random()*255)+1),((int)(Math.random()*255)+1),((int)(Math.random()*255)+1));
  }
  int num(){
    return(dots);
  }
  void show()
  {
    
      
    fill(col);
    rect(x,y,siz,siz);
    fill(0);
    if(dots==1){
      circle(x+25,y+25);
    } else if (dots==2){
      circle(x+13,y+13);
      circle(x+38,y+38);
    } else if (dots == 3){
      circle(x+13,y+13);
      circle(x+25,y+25);
      circle(x+38,y+38);
    } else if (dots == 4){
      circle(x+13,y+13);
      circle(x+38,y+13);
      circle(x+13,y+38);
      circle(x+38,y+38);
    } else if (dots == 5){
      circle(x+13,y+13);
      circle(x+38,y+13);
      circle(x+25,y+25);
      circle(x+13,y+38);
      circle(x+38,y+38);
    } else if (dots == 6){
      circle(x+13,y+13);
      circle(x+38,y+13);
      circle(x+25,y+13);
      circle(x+25,y+38);
      circle(x+13,y+38);
      circle(x+38,y+38);
    }
      
  }

  void circle(int dotx,int doty)
  {
    fill(0);
    ellipse(dotx,doty,5,5);
   
  }  
  
  
}
