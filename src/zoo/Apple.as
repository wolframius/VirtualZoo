package zoo 
{
	/**
	 * ...
	 * @author Valerio Vitelli
	 */
	public class Apple extends Food
	{
		private static const DEFAULT_CALORIES:Number = 100;
		private var wormInApple:Boolean;
		
		public function Apple(initialCalories:Number = 0) 
		{
			if (initialCalories <= 0) {
				initialCalories = Apple.DEFAULT_CALORIES;
			}
			
			super(initialCalories);
			super.name = "Mela";
			wormInApple = Math.random() >= .5;
			
		}
		
		public function hasWorm():Boolean {
		return wormInApple;
	}
		
	}

	

}