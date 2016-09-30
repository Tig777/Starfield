Particle[] particles;
void setup()
{
	size(400,400);
	background(10);
	particles = new Particle [150];
	for(int i = 0; i<particle.length;i++){	
	particle[i] = new NormalParticle();
	particle[0] = new OddballParticle();
	particle[1] = new JumboParticle();

}
void draw()
{
	background(200);
	for(int i = 0; i<particle.length;i++){	
		particle[i].move();
		particle[i].show();
	}

}
class NormalParticle implements Particle
{
	int myX, myY, movement, size;
	myX = 200;
	myY = 200;

	public void move(){

	}
	public void show(){

	}
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle implements Particle //uses an interface
{
	int myX1, myY1, movement1, size1;
	myX1 = 200;
	myY1 = 200;
	public void move(){

	}
	public void show(){

	}
}
class JumboParticle //uses inheritance
{
	int myX2, myY2, movement2, size2;
	myX2 = 200;
	myY2 = 200;
	movement2 = (int)(Math.random()*15)-15
	size
	public void move(){

	}
	public void show(){

	}
}

public void show(){
	
}