package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	/**
	$(CBI)* ...
	$(CBI)* @author Mustafa Tufan
	$(CBI)*/
	public class SilahSistemi extends Entity
	{
		[Embed(source = 'grafik/silah1.png')] private const S1:Class;
		[Embed(source = 'grafik/silah2.png')] private const S2:Class;
		
		public function SilahSistemi() 
		{
			x = 5;
			y = 500;
			graphic = new Image(S1);
			Degiskenler.seciliSilah == 1;
		}
		override public function update():void
		{
			if (Input.released(Key.DIGIT_1)) 
			{ 
				graphic = new Image(S1);
				Degiskenler.seciliSilah == 1;
			}
			else if (Input.released(Key.DIGIT_2)) 
			{ 
				graphic = new Image(S2);
				Degiskenler.seciliSilah == 2;
			}
			super.update();
			
		}
		
	}

}