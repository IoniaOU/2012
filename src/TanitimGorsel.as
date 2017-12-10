package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Key;
	import net.flashpunk.utils.Input;
	import net.flashpunk.graphics.Image;
	/**
	$(CBI)* ...
	$(CBI)* @author Mustafa Tufan
	$(CBI)*/
	public class TanitimGorsel extends Entity
	{
		[Embed(source = 'grafik/tanitim1.jpg')] private const T0:Class;
		[Embed(source = 'grafik/tanitim2.jpg')] private const T1:Class;
		[Embed(source = 'grafik/tanitim3.jpg')] private const T2:Class;
		public var i:int = 0;
		public function TanitimGorsel() 
		{
			
		}
		override public function update():void
		{
			if ( i == 0 ) { graphic = new Image(T0); }
			if ( i == 1 ) { graphic = new Image(T1); }
			if ( i == 2 ) { graphic = new Image(T2); }
			
			if ( i == 3 ) { FP.world = new Oyun(); }
			if (Input.released(Key.SPACE)) { i++;  }
		}
	}
}
