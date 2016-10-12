Particle[] particles;
void setup()
{
	size(400,400);
	
	particles = new Particle [500];
	//int piscine = (int)(Math.random()*500);
	for(int i = 0; i<particles.length;i++){	
	particles[i] = new NormalParticle();
	particles[399] = new OddballParticle();
	if(i % (500/7) == 0)
		particles[i] = new JumboParticle();
	else if(i % (500/6) == 0)
		particles[i] = new OddballParticle();

	}

}

void draw()
{
	background(25,20,20);
	
	for(int i = 0; i<particles.length;i++)
	{	
		particles[i].move();
		particles[i].show();
		//particles[0].move();
		//particles[0].show();
		
	}

}

class NormalParticle implements Particle
{	
	
	double myX, myY, angle, speed, red, green, blue;
	
	NormalParticle(){		
		myX = 200;
		myY = 200;
		angle = (Math.random()*2)*PI;
		speed = Math.random()* 5;
		red = (int)(Math.random()*255);
		green = (int)(Math.random()*255);
		blue = (int)(Math.random()*255);
	}
	
	public void move(){
		myX = myX + Math.cos(angle)*speed;
		myY = myY + Math.sin(angle)*speed;

		if(myX<1 || myX>400 || myY <1||myY > 400)
		{
			myX=200;
			myY=200;
			angle = (Math.random()*2)*PI;
		}
	}
	
	public void show(){

		
		fill((int)red,(int)green,(int)blue);
		ellipse((float)myX,(float)myY, 10,10);
	}
}
	interface Particle
	{
	public void move();
	public void show();
	}

class OddballParticle implements Particle //uses an interface
{
	double myX1, myY1, angle1, speed1, red1, green1, blue1;

OddballParticle(){
	myX1 = 200;
	myY1 = 200;
	angle1 = Math.random()*PI;
	speed1 = Math.random()* 5;
	red1 = (int)(Math.random()*255);
	green1 = (int)(Math.random()*255);
	blue1 = (int)(Math.random()*255);
}
	public void move()
	{
		myX1 = myX1 + Math.cos(angle1)*speed1;
		myY1 = myY1 + Math.sin(angle1)*speed1;
		if(myX1<1 || myX1>400 || myY1 <1||myY1 > 400)
		{
			myX1=200;
			myY1=200;
			angle1 = (Math.random()*2)*PI;
		}
	}

	public void show()
	{
		fill((int)red1,(int)green1,(int)blue1);
		ellipse((float)myX1,(float)myY1, 30,30 );
	}
}

class JumboParticle extends NormalParticle//uses inheritance
{
	double myX2, myY2, angle2, speed2;
JumboParticle(){
	myX2 = 200;
	myY2 = 200;
	angle2 = (Math.random()*2)*PI;
	speed2 = Math.random()* 5;
}
	public void move()
	{
		myX2 = myX2 + Math.cos(angle2)*speed2;
		myY2 = myY2 + Math.sin(angle2)*speed2;
		if(myX2<1 || myX2>400 || myY2 <1||myY2 > 400)
		{
			myX2=200;
			myY2=200;
			angle2 = (Math.random()*2)*PI;
		}
	}
	public void show()
	{
		fill(int(random (253)),int(random(253)), int(random(253)));
		ellipse((float)myX2,(float)myY2, 50,50);
	}
}


	


