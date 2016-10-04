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
	movement = (Math.random()*15);
	angle = Math.random()* 5.1;
	public void move(){
		if () {
			
		}
	}
	public void show(){
		ellipse((float)myX,(float)myY, 200,200);
	}
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle implements NormalParticle //uses an interface
{
	double myX1, myY1, movement1, angle1;
	myX1 = 200;
	myY1 = 200;
	movement1 = (Math.random()*15);
	angle1 = Math.random()* 5.1;

	public void move(){
		}

	
	public void show(){
		ellipse((float)myX1,(float)myY1, 200,200);
	}
}
class JumboParticle extends Particle//uses inheritance
{

	public void show(){
		fill(int(random (253)),int(random(253)), int(random(253)));
		ellipse((float)myX2,(float)myY2, 200,200);
	}
}


	
/*
	double myX2, myY2, movement2, angle2;
	myX2 = 200;
	myY2 = 200;
	movement2 = (Math.random()*15)-15
	angle2 = Math.random()* 5.1;
	public void move(){

	}
	*/
