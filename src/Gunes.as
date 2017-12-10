package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	/**
	$(CBI)* ...
	$(CBI)* @author Mustafa Tufan
	$(CBI)*/
	public class Gunes extends Entity
	{
		[Embed(source = 'grafik/gunes1.png')] private const GUNES1:Class;
		[Embed(source = 'grafik/gunes2.png')] private const GUNES2:Class;
		[Embed(source = 'grafik/gunes3.png')] private const GUNES3:Class;
		[Embed(source = 'grafik/gunes4.png')] private const GUNES4:Class;
		[Embed(source = 'grafik/gunes5.png')] private const GUNES5:Class;
		[Embed(source = 'grafik/gunes6.png')] private const GUNES6:Class;
		public var t:int = 0;
		public var res:int =1;
		public function Gunes() 
		{
			graphic = new Image(GUNES1);
		}
		override public function update():void
		{
			t++;
			if (t % 100 == 0)
			{
				if (res == 1) { graphic = new Image(GUNES2); res++; }
				else if (res == 2) { graphic = new Image(GUNES3); res++;}
				else if (res == 3) { graphic = new Image(GUNES4); res++;}
				else if (res == 4) { graphic = new Image(GUNES5); res++;}
				else if (res == 5) { graphic = new Image(GUNES1); res = 1; }
				
			}
			
		}
		
	}

}