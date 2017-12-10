package  
{
	import adobe.utils.CustomActions;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.FP;
	import net.flashpunk.Sfx;
	
	/**
	$(CBI)* ...
	$(CBI)* @author Mustafa Tufan
	$(CBI)*/
	public class GunesParcasi extends Entity
	{
		[Embed(source = 'grafik/asteroid.gif')] private const ASTD:Class;
		public var astAni:Spritemap = new Spritemap(ASTD, 35, 35);
		
		[Embed(source = 'grafik/patlama.png')] private const PATD:Class;
		public var patAni:Spritemap = new Spritemap(PATD, 35, 35);
		
		[Embed(source = 'ses/patlama.mp3')] private const MUZIK:Class;
		public var muzik:Sfx = new Sfx(MUZIK);
		
		public var hizY:int;
		public var hizX:int;
		public var hizLimiti:int;
		public var dusmeZamani:int;
		public var yav:int;
		public var yokOlus:Boolean = false;
		public var yokOlusZaman:int = 30;
		public function GunesParcasi() 
		{
			
			
			dusmeZamani = FP.rand(200);
			setHitbox(0, 0, 35, 35);
			type = "ast";
			hizLimiti = FP.rand(9) + 1;
			hizX = 1;
			x = 800-FP.rand(50);
			y = FP.rand(565);
			astAni.add("vurma", [0, 1, 2, 3, 4, 5, 6, 7], 10, true);
			patAni.add("patlama", [0, 1, 2, 3, 4, 5, 6, 7], 30, true);
			graphic = astAni;
			
			astAni.play("vurma", true);
			type = "parca";
			setHitbox(35,35,0,0);
		}
		override public function update():void
		{
			if (x < -50)
			{
				this.world.remove(this);
			}
			if (collide("mermi", x+10, y))
			{
			    yokOlus = true;
				type = "yok";
				graphic = patAni;
				patAni.play("patlama",true);
				muzik.play();
				muzik.volume=0.2;
			}
			if (yokOlus)
			{
				yokOlusZaman--;
			}
			if (yokOlusZaman < 0)
			{
				this.world.remove(this);
				}
			x-=hizX;
			
			if ((dusmeZamani == 0)&&(!yokOlus))
			{
			if (y > 238) 
			{ 
				hizY--; 
				if(hizY < -hizX)
				{
					hizY = -hizX; 
				}
			}
			else 
			{ 
				hizY++;
				if(hizY > hizX)
				{
					hizY = hizX; 
				}
			}
			
			if (yav % 2 == 0)
			{ 
				y += hizY;
			}
			}
			if (dusmeZamani != 0)
			{
			dusmeZamani--;}
			if (yav % 50 == 0){
			hizX++;
			if (hizX > hizLimiti)
			{
				hizX = hizLimiti;
			}}
			yav++;
		}
		
	}

}