package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	import net.flashpunk.Sfx;
	/**
	$(CBI)* ...
	$(CBI)* @author Mustafa Tufan
	$(CBI)*/
	public class Mermi extends Entity
	{
		[Embed(source = 'ses/silah.mp3')] private const MUZIK:Class;
		public var muzik:Sfx = new Sfx(MUZIK);
		[Embed(source = 'grafik/mermi.png')] private const MERMIG:Class;
		public var res:Image;
		
		public var hizX:int;
		public var hizY:int;
		
		public var hedefX:int=Degiskenler.imlecX;
		public var hedefY:int=Degiskenler.imlecY;
		
		public function Mermi() 
		{
			
			
			muzik.play();
			muzik.volume=0.1;
			type = "mermi";
			setHitbox(10,10,5, 5);
			
			x = 50;
			y = 200+FP.rand(160);
			hizX = (hedefX - x)/20;
			hizY = (hedefY - y)/20;
			
			
			res = new Image(MERMIG);
			res.centerOO();
			
			
			
		}
		override public function update():void
		{
			x += hizX;
			y += hizY;
			res.angle++;
			graphic = res;
			if (x > 1000)
			{
				this.world.remove(this);
			}
			
			}
		
	}

}