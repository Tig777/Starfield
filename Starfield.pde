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

//sin = y
//cos = x
class NormalParticle implements Particle
{
	double myX, myY, movement, angle;
	myX = 200;
	myY = 200;
	movement =(Math.random()*15);
	angle = Math.random()* 5.1;
	public void move(){
		if () {
			
		}
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
class JumboParticle extends Particle//uses inheritance
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