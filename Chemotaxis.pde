 Bacteria [] shuu;  
 void setup()   
 {     
 	size(400, 400);
 	frameRate(15);
 	shuu = new Bacteria[10];
 	for(int i = 0; i < shuu.length; i = i + 1)
 	{
 		shuu[i] = new Bacteria(i + 200, i + 200);
 	}
 }   
 void draw()   
 {    
 	background(0);
 	for(int i = 0; i < shuu.length; i = i + 1)
 	{
 		shuu[i].move();
 		shuu[i].show();
 		shuu[i].reproduce();
 	}
 }  
 class Bacteria    
 {     
 	int myX, myY, life, myColor;
 	Bacteria(int x, int y)
 	{
 		myX = x;
 		myY = y;
 		life = 0;
 		myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
 	} 
 	void move()
 	{
 		myX = myX + (int)(Math.random()*9)-4;
 		myY = myY + (int)(Math.random()*9)-4;
 		life = life + 1;
 	}
 	void show()
 	{
 		fill(myColor);
 		ellipse(myX, myY, 15,15);
 		text(life, myX, myY);
 	}
 	void reproduce()
 	{
 		
 	}
 }    