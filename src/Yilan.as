package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	/**
	$(CBI)* ...
	$(CBI)* @author Mustafa Tufan
	$(CBI)*/
	public class Yilan extends Entity
	{
		[Embed(source = 'grafik/yilan.png')] private const YILANG:Class;
		public var yilanG:Image;
		public function Yilan() 
		{
			x = 730;
			y = 200;
			
			yilanG = new Image(YILANG);
			yilanG.centerOrigin();
			graphic = yilanG;
		}
		override public function update():void
		{
			yilanG.angle--;
			graphic = yilanG;
			}
		
	}

}