package zoo 
{
	/**
	 * ...
	 * @author Valerio Vitelli
	 */
	public class Food 
	{
		private var foodCalories:Number;
		private var foodName:String;
		
		
		public function Food(initialCalories:Number):void 
		{
			this.foodCalories = initialCalories;
		}
		
		public function get calories():Number {
			return foodCalories;
		}
		
		public function set calories(newCalories:Number):void {
			foodCalories = newCalories;
		}
		
		public function get name():String {
			return foodName;
		}
		
		public function set name(newName:String):void {
			foodName = newName;
		}
		
	}

}