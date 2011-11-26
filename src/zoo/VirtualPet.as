package zoo 
{
	import flash.utils.setInterval;
	import flash.utils.clearInterval
	/**
	 * ...
	 * @author Valerio Vitelli
	 */
	internal class VirtualPet
	{
		private var petName:String;
		private var currentCalories:Number = VirtualPet.maxCalories/2;
		private var creationTime:Date;
		private var digestIntervalID:uint;
		private static var maxNameLenght:Number = 20;
		private static var maxCalories:Number = 2000;
		private static var caloriesPerSecond:Number = 100;
		private var array:Array; //comment here
		
		public function VirtualPet(name:String) 
		{
			this.petName = name;
			this.creationTime = new Date();
			digestIntervalID = setInterval(digest,1000);
		}
		
		public function eat(foodItem:Food):void {
			var newCurrentCalories:Number = currentCalories + foodItem.calories;
			if (currentCalories == 0) {
				trace(name + " è morto. Non puoi dargli da mangiare");
				return;
			}
			if (foodItem is Apple) {
				if (Apple(foodItem).hasWorm()) {
					trace("La mela era bacata. " + this.name + " non l'ha mangiata");
					return;
				}
			}
			
			if (newCurrentCalories > VirtualPet.maxCalories) {
				currentCalories = VirtualPet.maxCalories;
			} else {
				currentCalories = newCurrentCalories;
			}
			
			trace(name + " ha mangiato "+ foodItem.name + ". Ora ha " + this.currentCalories + " calorie rimanenti");
		}
		
		public function getAge():Number {
			var currentTime:Date = new Date();
			var age:Number = currentTime.time - this.creationTime.time;
			
			return age;
		}
		
		public function getHunger():Number {
			return currentCalories / VirtualPet.maxCalories;
		}
		
		public function set name(newName:String):void {
			if (newName.length > VirtualPet.maxNameLenght) {
				newName = newName.substr(0, VirtualPet.maxNameLenght);
			} else if (newName == "") {
				return;
			}
			petName = newName;
		}
		
		public function get name():String {
			return petName;
		}
		
		public function digest():void {
			
			if (currentCalories - VirtualPet.caloriesPerSecond <= 0) {
			clearInterval(digestIntervalID);
			currentCalories = 0;
			trace(name + " è morto");
			} else {
				currentCalories -= VirtualPet.caloriesPerSecond;
			trace(name + " ha digerito del cibo. Ora ha " + currentCalories + " calorie rimanenti");
			}
		}
		
	}

}