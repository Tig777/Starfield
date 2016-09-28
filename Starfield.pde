Particle[] particles;
void setup()
{
	size(400,400);
	background(10);
	particles = new Particle []
}
void draw()
{
	
}
class NormalParticle implements Particle
{
	int myX, myY, movement, size;

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
	public void move(){

	}
	public void show(){

	}
}
class JumboParticle //uses inheritance
{
	int myX2, myY2, movement2, size2;

	public void move(){

	}
	public void show(){

	}
}

public void show(){
	fill(int(random (253)),int(random(253)), int(random(253)));
	ellipse(50,50,50,50);
}