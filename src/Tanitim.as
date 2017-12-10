package  
{
	import net.flashpunk.World;
	import net.flashpunk.Sfx;
	/**
	$(CBI)* ...
	$(CBI)* @author Mustafa Tufan
	$(CBI)*/
	public class Tanitim extends World
	{
		[Embed(source = 'ses/muzik.mp3')] private const MUZIK:Class;
		public var muzik:Sfx = new Sfx(MUZIK);
		public var i:int=0;
		public function Tanitim() 
		{
			add(new TanitimGorsel);
			muzik.play();
		}
		override public function end():void
		{
			muzik.stop();
		}
		
		
	}

}