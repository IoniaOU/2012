package 
{
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Key;
	/**
	$(CBI)* ...
	$(CBI)* @author Mustafa Tufan
	$(CBI)*/
	public class Main extends Engine 
	{
		
		public function Main()
		{
			super(800, 600, 60, false);
			//FP.console.enable();
			//FP.console.toggleKey = Key.U;
			FP.world = new Menu();
			
		}
	}
}