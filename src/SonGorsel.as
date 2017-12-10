package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	/**
	$(CBI)* ...
	$(CBI)* @author Mustafa Tufan
	$(CBI)*/
	public class SonGorsel extends Entity
	{
		[Embed(source = 'grafik/soniyi.jpg')] private const SONI:Class;
		[Embed(source = 'grafik/sonkotu.jpg')] private const SONK:Class;
		public function SonGorsel(i:int) 
		{
			if (i == 1)
			{
				graphic = new Image(SONI);
			}
			if (i == 2)
			{
				graphic = new Image(SONK);
			}
		}
		
	}

}