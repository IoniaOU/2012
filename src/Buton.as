package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Key;
	
	public class Buton extends Entity
	{
		[Embed(source = 'grafik/negatif.jpg')] private const BUTONN:Class;
		[Embed(source = 'grafik/pozitif.jpg')] private const BUTONP:Class;
		
		public function Buton(x:int, y:int) 
		{
			this.x = x;
			this.y = y;
			graphic = new Image(BUTONN);
		}
		
		override public function update():void
		{
			if ( (Input.mouseX > x) && (Input.mouseY > y) && (Input.mouseX < x+450) && (Input.mouseY < y+60) )
			{
				graphic = new Image(BUTONP);
				if (Input.mouseReleased)
				{
					FP.world = new Tanitim;
				}
			}
			else
			{
				graphic = new Image(BUTONN);
			}
			
			if (Input.released(Key.SPACE)) 
			{ 
				FP.world = new Tanitim; 
			}
			
		}
		
	}

}