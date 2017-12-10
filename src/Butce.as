package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Key;
	import net.flashpunk.utils.Input;
	import net.flashpunk.FP;
	import net.flashpunk.Sfx;
	/**
	$(CBI)* ...
	$(CBI)* @author Mustafa Tufan
	$(CBI)*/
	public class Butce extends Entity
	{
		[Embed(source = 'grafik/mn.png')] private const MNG:Class;
		[Embed(source = 'grafik/m.png')] private const MG:Class;
		[Embed(source = 'grafik/n.png')] private const NG:Class;
		
		[Embed(source = 'ses/para.mp3')] private const MUZIK:Class;
		public var muzik:Sfx = new Sfx(MUZIK);
		public function Butce() 
		{
			x = 10;
			y = 400;
			graphic = new Image(MNG)
			muzik.volume = 0.2;
		}
		override public function update():void
		{
			
		    
			
			if (Input.released(Key.Q)) 
			{ 
				Degiskenler.butce += FP.rand(2)+1;
				graphic = new Image(MG);
				
				muzik.play();
				muzik.volume=0.1;
			}
			if (Input.released(Key.W))
			{ 
				
				
				Degiskenler.butce += FP.rand(2)+1;
				graphic = new Image(NG);
				muzik.play();
			}
		}
		
	}

}