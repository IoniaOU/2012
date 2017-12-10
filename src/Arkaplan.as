package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	/**
	$(CBI)* ...
	$(CBI)* @author Mustafa Tufan
	$(CBI)*/
	public class Arkaplan extends Entity
	{
		[Embed(source = 'grafik/menu.jpg')] private const MENUG:Class;
		public function Arkaplan() 
		{
			graphic = new Image(MENUG);
		}
		
	}

}