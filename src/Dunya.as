package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.FP;
	/**
	$(CBI)* ...
	$(CBI)* @author Mustafa Tufan
	$(CBI)*/
	public class Dunya extends Entity
	{
		[Embed(source = 'grafik/dunya3.png')] private const DUNYAD:Class;
		public var dunyaAni:Spritemap = new Spritemap(DUNYAD, 213, 160);
		public function Dunya() 
		{
			y = 194;
			x = -50;
			dunyaAni.add("donme", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], 7, true);
			graphic = dunyaAni;
			
			dunyaAni.play("donme", true);
			type = "dunya";
			setHitbox(120, 120, -60, -20);
		}
		override public function update():void
		{
			if (collide("parca", x, y))
			{
			    FP.world = new Son(2);
			}
			
		}
	}
}