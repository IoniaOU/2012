package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.FP;
	/**
	$(CBI)* ...
	$(CBI)* @author Mustafa Tufan
	$(CBI)*/
	public class Hedef extends Entity
	{
		[Embed(source = 'grafik/hedef.png')] private const HEDEFG:Class;
		public var res:Image;
		public function Hedef() 
		{
			res = new Image (HEDEFG);
			res.centerOO();
			graphic = res;
		} 
		override public function update():void
		{
			
			x = Input.mouseX - 20;
			res.angle = x+y;
			y = Input.mouseY - 20;
			graphic = res;
			
			Degiskenler.imlecX = Input.mouseX - 20;
			Degiskenler.imlecY = Input.mouseY - 20;
			
			if ((Input.mousePressed)&&(Degiskenler.seciliSilah==1))
			{
				if (Degiskenler.butce > 10)
				{
					this.world.add(new Mermi);
					Degiskenler.butce-= FP.rand(10);
				}
				
			}
			//else if ((Input.mousePressed)&&(Degiskenler.seciliSilah==2))
			//{
			//	if (Degiskenler.butce > 100)
			//	{
			//		this.world.add(new Isin);
			//		Degiskenler.butce-= FP.rand(100);
			//	}
			//}
			
		}
		
	}

}