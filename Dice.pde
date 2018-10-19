Die ann;
void setup()
{
	noLoop();
	size(330,360);
}
void draw()
{
	background(255);
	for(int y = 0; y <= 300; y = y + 30)
	{
		for(int x = 0; x <= 300; x = x + 30)
		{
			Die ann = new Die(x,y);
			ann.roll();
			ann.show();
			ann.numDots();
		}
	}
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
		fill(0);
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
	void numDots()
	{
		if(b == 1)
			c = c + 1;
		if(b == 2)
			c = c + 2;
		if(b == 3)
			c = c + 3;
		if(b == 4)
			c = c + 4;
		if(b == 5)
			c = c + 5;
		if(b == 6)
			c = c + 6;
		text("Total Value: " + c, 130,350);
	}
}
