package {

	import flash.display.*;

	public class SportCar extends MovieClip {
		// PUBLIC DATA MEMBERS
		public var direction: int;
		public var mX: int;
		public var mY: int;
		public var velocity: Number;
		public var endZone: int;

		// PRIVATE DATA MEMBERS
		private var rightWall: Number;
		private var leftWall: Number;

		// CONSTRUCTOR
		public function SportCar() {}

		// MEMBER FUNCTIONS
		public function setLocation(mX: int, mY: int) {
			this.mX = mX;
			this.mY = mY;
		}

		public function setWallBoundaries(leftWall: Number, rightWall: Number) {
			this.leftWall = leftWall;
			this.rightWall = rightWall;
		}

		/* UPDATE LOCATION AT A FRAME IN TIME */
		public function updateLocation() {
			// TASK 1: MOVE THE CAR IN THE WINDOW
			mX += velocity;
			
			// TASK 2: ROTATE THE TRAINING WHEELS
			this.backWheel.rotation += velocity;
			this.frontWheel.rotation += velocity;

			// TASK 3: CHECK FOR COLLISIONS
			if (mX > rightWall - (this.width / 2)) {
				mX = rightWall - (this.width / 2);
				velocity *= -1;
			} else if (mX < leftWall + (this.width / 2)) {
				mX = leftWall + (this.width / 2);
				velocity *= -1;
			}
		
			// TASK 3: CHECK IF THE CAR HAS MOVED OFF THE SCREEN
			if (this.direction == -1 && this.mX < -200 || this.direction == 1 && this.mX < 200) {
				this.mX = this.endZone
			}

		}
	}
}