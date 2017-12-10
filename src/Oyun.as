package  
{
	import net.flashpunk.World;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Input;
	import net.flashpunk.Sfx;
	/**
	$(CBI)* ...
	$(CBI)* @author Mustafa Tufan
	$(CBI)*/
	public class Oyun extends World
	{
		
		[Embed(source = 'ses/muzik.mp3')] private const MUZIK:Class;
		public var muzik:Sfx = new Sfx(MUZIK);
		
		public var butce:Text;
		public var butceYazi:Entity;
		
		
		public var sure:Text;
		public var tarih:Entity;
		
		public var gun:int = 1;
		public var ay:int = 1;
		public var yil:int = 2012;
		
		public var yav:int = 0;
		
		public function Oyun() 
		{
			muzik.play();
			Input.mouseCursor = "hide";
			add (new Dunya);
			add (new Gunes);
			add (new Butce);
			add (new Hedef);
			//add (new SilahSistemi);
			
			sure = new Text("01.01.2012");
		    tarih = new Entity(10, 10, sure)
			
			butce = new Text("0 m");
		    butceYazi = new Entity(10, 500, butce)
		}
		override public function update():void
		{
			remove(tarih);
			remove(butceYazi);
			Text.size = 34;
			butce = new Text(Degiskenler.butce + " m");
			
		    butceYazi = new Entity(10, 460, butce)
			if ((yav % FP.rand(1000) == 0)||(yav % FP.rand(500) == 2))
			{
				add(new GunesParcasi);
				}
			if (yav % 30 == 0)
			{
			gun++;
			if (gun == 31) { gun = 1; ay++; }
			if (ay == 12) { ay = 1; yil++; FP.world = new Son(1); }
			
			sure = new Text("DATE: "+gun+"."+ay+"."+yil);
		    tarih = new Entity(10, 10, sure);
			}
			
			add(butceYazi);
			add(tarih);
			yav++;
			super.update();
		}
		
		
		
	}

}