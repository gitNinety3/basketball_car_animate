package { 

	import flash.display.*;

	public class BasketBall extends MovieClip {

		// PUBLIC DATA MEMBERS
		public var mX: Number;
		public var mY: Number;
		public var velocity: Number;

		// PRIVATE DATA MEMBERS
		private var rightWall: Number;
		private var leftWall: Number;

		// CONSTRUCTOR
		public function BasketBall() {}

		// MEMBER FUNCTIONS
		public function setLocation(mX: Number, mY: Number) {
			this.mX = mX;
			this.mY = mY;
		}

		public function setWallBoundaries(leftWall: Number, rightWall: Number) {
			this.rightWall = rightWall;
			this.leftWall = leftWall;
		}

		/* UPDATE LOCATION AT A FRAME IN TIME */
		public function updateLocation() {
			// TASK 1: MOVE THE SOCCERBALL IN THE WINDOW 
			mX += velocity;
			
			//this.bBall.rotation += velocity;

			// TASK 2: CHECK FOR COLLISIONS
			if (mX > rightWall - (this.width / 2)) {
				mX = rightWall - (this.width / 2);
				velocity *= -1;
			} else if (mX < leftWall + (this.width / 2)) {
				mX = leftWall + (this.width / 2);
				velocity *= -1;
			}
		}
	}
}