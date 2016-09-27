
void setup()
{
	size(400,400);
	background(10);
}
void draw()
{
	//your code here
}
class NormalParticle
{
	//your code here
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

public void show(){
	fill(int(random (253)),int(random(253)), int(random(253)));
	ellipse(50,50,50,50);
}