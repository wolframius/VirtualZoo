package zoo 
{
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Valerio Vitelli
	 */
	public class VirtualZoo extends Sprite
	{
		private var pet:VirtualPet;
		public function VirtualZoo() 
		{
			this.pet = new VirtualPet("Stan");
			var age:Number = this.pet.getAge();
			var oldName:String = pet.name;
			pet.name = "Marcos";
			pet.eat(new Apple());
			pet.eat(new Sushi());
		}
		
		public function getAverage (...numbers):Number {
			var total:Number = 0;
			
			for (var i:int = 0; i < numbers.length; i++) {
				total += numbers [i];
			}
			
			return total / numbers.length;
		}
		
	}

}