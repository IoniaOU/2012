package  
{
	import net.flashpunk.World
	import net.flashpunk.Sfx;
	/**
	$(CBI)* ...
	$(CBI)* @author Mustafa Tufan
	$(CBI)*/
	public class Menu extends World
	{
		[Embed(source = 'ses/muzik.mp3')] private const MUZIK:Class;
		public var muzik:Sfx = new Sfx(MUZIK);
		public function Menu() 
		{
			add(new Arkaplan);
			add(new Takvim);
			add(new Yilan);
			add(new Buton(50, 400));
			muzik.play();
			
		}
		override public function end():void
		{
			muzik.stop();
		}
	}
}