package {
	import flash.display.*;
	import flash.events.*;

	public class Assignment2 extends MovieClip {
		// GAME ELEMENTS
		var basketBall: BasketBall;
		var sportCar: SportCar;
		var buildings: Buildings;

		// CONSTRUCTOR
		public function Assignment2() {
			// BASKETBALL
			basketBall = new BasketBall();
			basketBall.setLocation(510, 345);
			basketBall.x = basketBall.mX;
			basketBall.y = basketBall.mY;
			basketBall.velocity = 10;
			basketBall.setWallBoundaries(0, 650);
			addChild(basketBall);
			
			// SPORTCAR
			sportCar = new SportCar();
			sportCar.setLocation(100, 300);
			sportCar.x = sportCar.mX;
			sportCar.y = sportCar.mY;
			sportCar.velocity = 5;
			sportCar.setWallBoundaries(0, 750);
			addChild(sportCar);
		
			// BUILDINGS
			buildings = new Buildings();
			addChild(buildings);

			addEventListener(Event.ENTER_FRAME, move);
		}

		// MOVE METHOD
		public function move(event: Event) {
			basketBall.updateLocation();
			basketBall.x = basketBall.mX;
			sportCar.updateLocation();
			sportCar.x = sportCar.mX;
		}
	}
}