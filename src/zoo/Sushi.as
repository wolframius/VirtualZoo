package zoo 
{
	/**
	 * ...
	 * @author Valerio Vitelli
	 */
	public class Sushi extends Food
	{
		private static const DEFAULT_CALORIES:Number = 500;
		
		public function Sushi(initialCalories:Number = 0) 
		{
			if (initialCalories <= 0) {
				initialCalories = Sushi.DEFAULT_CALORIES;
			}
			super(initialCalories);
			super.name = "Sushi";
		}
		
		
		
		
	}

}