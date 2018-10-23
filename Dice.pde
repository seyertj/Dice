Die ann;
void setup()
{
	noLoop();
	size(330,360);
}
void draw()
{
	background(255);
	int numDots = 0;
	for(int y = 0; y <= 300; y = y + 30)
	{
		for(int x = 0; x <= 300; x = x + 30)
		{
			Die ann = new Die(x,y);
			ann.roll();
			ann.show();
			if(ann.b == 1)
				numDots = numDots + 1;
			if(ann.b == 2)
				numDots = numDots + 2;
			if(ann.b == 3)
				numDots = numDots + 3;
			if(ann.b == 4)
				numDots = numDots + 4;
			if(ann.b == 5)
				numDots = numDots + 5;
			if(ann.b == 6)
				numDots = numDots + 6;
		}
	}
	text("Dice Total: " + numDots, 130, 350);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, b, c;
	Die(int x, int y)
	{
		myX = x;
		myY = y;
		c = 0;
	}
	void roll()
	{
		b = (int)((Math.random()*6)+1);
	}
	void show()
	{
		stroke(0);
		fill(255);
		rect(myX, myY, 30, 30);
		fill(255,0,0);
		if(b == 1)
		{
			ellipse(myX + 15, myY + 15, 5, 5);
		}
		if(b == 2)
		{
			ellipse(myX + 12, myY + 15, 5, 5);
			ellipse(myX + 18, myY + 15, 5, 5);
		}
		if(b == 3)
		{
			ellipse(myX + 10, myY + 10, 5, 5);
			ellipse(myX + 15, myY + 15, 5, 5);
			ellipse(myX + 20, myY + 20, 5, 5);
		}
		if(b == 4)
		{
			ellipse(myX + 12, myY + 12, 5, 5);
			ellipse(myX + 18, myY + 18, 5, 5);
			ellipse(myX + 12, myY + 18, 5, 5);
			ellipse(myX + 18, myY + 12, 5, 5);
		}
		if(b == 5)
		{
			ellipse(myX + 15, myY + 15, 5, 5);
			ellipse(myX + 11, myY + 11, 5, 5);
			ellipse(myX + 19, myY + 19, 5, 5);
			ellipse(myX + 11, myY + 19, 5, 5);
			ellipse(myX + 19, myY + 11, 5, 5);
		}
		if(b == 6)
		{
			ellipse(myX + 12, myY + 10, 5, 5);
			ellipse(myX + 12, myY + 15, 5, 5);
			ellipse(myX + 12, myY + 20, 5, 5);
			ellipse(myX + 18, myY + 10, 5, 5);
			ellipse(myX + 18, myY + 15, 5, 5);
			ellipse(myX + 18, myY + 20, 5, 5);
		}
	}
}
