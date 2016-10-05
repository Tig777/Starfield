NormalParticle[] particles;
void setup()
{
	size(400,400);
	background(10);
	particles = new NormalParticle [7];
	for(int i = 0; i<particles.length;i++){	
	particles[i] = new NormalParticle();
	//particle[0] = new OddballParticle();
	//particle[1] = new JumboParticle();
	}
}
void draw()
{
	background(200);
	for(int i = 0; i<particles.length;i++)
	{	
		particles[i].move();
		particles[i].show();
	}

}


class NormalParticle
{
	double myX, myY, angle, speed;
	
	NormalParticle(){		
		myX = 200;
		myY = 200;
		angle = (Math.random()*2)*PI;
		speed = Math.random()* 1;
	}
	
	public void move(){
		myX = myX + Math.cos(angle)*speed;
		myY = myY + Math.sin(angle)*speed;
	}
	
	public void show(){

		
		fill(int(random (253)),int(random(253)), int(random(253)));
		ellipse((float)myX,(float)myY, 10,10);
	}
}
	interface Particle
	{
	public void move();
	public void show();
	}






/*
class OddballParticle implements NormalParticle //uses an interface
{
	double myX1, myY1, angle1, speed1;
	myX1 = 200;
	myY1 = 200;
	angle1 = Math.random()*5.1;
	speed1 = Math.random()* 5.1;

	public void move()
	{
	myX1 = myX1 + Math.cos(angle1)*speed1
	myY1 = myY1 + Math.sin(angle1)*speed1
	}

	public void show()
	{
		fill(int(random (253)),int(random(253)), int(random(253)));
		ellipse((float)myX1,(float)myY1, 30,30 );
	}
}
class JumboParticle extends NormalParticle//uses inheritance
{

	public void show()
	{
		fill(int(random (253)),int(random(253)), int(random(253)));
		ellipse((float)myX2,(float)myY2, 40,40);
	}
}


	

	double myX2, myY2, movement2, angle2;
	myX2 = 200;
	myY2 = 200;
	movement2 = (Math.random()*15)-15
	angle2 = Math.random()* 5.1;
	public void move(){

	}
	*/

