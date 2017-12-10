package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	/**
	$(CBI)* ...
	$(CBI)* @author Mustafa Tufan
	$(CBI)*/
	public class Takvim extends Entity
	{
		[Embed(source = 'grafik/takvim.png')] private const TAKVIMG:Class;
		public var takvimG:Image;
		public function Takvim() 
		{
			x = 730;
			y = 200;
			
			takvimG = new Image(TAKVIMG);
			takvimG.centerOrigin();
			graphic = takvimG;
		}
		override public function update():void
		{
			takvimG.angle++;
			graphic = takvimG;
			}
		
	}

}