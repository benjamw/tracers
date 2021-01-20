package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.events.TouchEvent;
	import flash.events.AccelerometerEvent;
	import flash.sensors.Accelerometer;
	import flash.ui.Multitouch;
	import flash.ui.MultitouchInputMode;
	import flash.media.Microphone;
	import flash.events.ActivityEvent; 
	import flash.events.StatusEvent; 
	
	public class MainClass extends MovieClip{
		
		public var mic : Microphone = Microphone.getMicrophone();
		
		Multitouch.inputMode = MultitouchInputMode.TOUCH_POINT;
		
		//array holding all objects with update methods
		public var dynamicObjects : Array = new Array();
		
		//acceleration object
		private var accel = new Accelerometer();
		
		//holds tilt x and y
		public var tiltX : Number = 0;
		public var tiltY : Number = 0;
		
		//tells if touching screen
		public var isTouchingScreen : Boolean = false;
		
		public function MainClass() {
			// constructor code
			
			addEventListener(Event.ENTER_FRAME, update);
			
			stage.addEventListener(MouseEvent.CLICK, click);
			
			if(Accelerometer.isSupported){
				accel.addEventListener(AccelerometerEvent.UPDATE, onAccelUpdate);
			}
			
			addEventListener(TouchEvent.TOUCH_BEGIN, touchBegin);
			addEventListener(TouchEvent.TOUCH_END, touchEnd);
			addEventListener(TouchEvent.TOUCH_TAP, tap);
			
			//move to last frame
			this.gotoAndStop(this.totalFrames);
			
			//set background color to white
			bgcolor.gotoAndStop("white");
			
			stage.addEventListener(Event.RESIZE, resizeListener); 
			
			/*
			mic.gain = 50; 
			mic.rate = 11; 
			mic.setUseEchoSuppression(true); 
			mic.setLoopBack(true); 
			mic.setSilenceLevel(0, 1000); 
			mic.addEventListener(ActivityEvent.ACTIVITY, onMicActivity); 
			*/
			
		}
		
		function resizeListener (e:Event):void { 
			
			//set size and placement of bgcolor
			bgcolor.height = stage.stageHeight;
			bgcolor.width = stage.stageWidth;
			bgcolor.x = stage.stageWidth / 2;
			bgcolor.y = stage.stageHeight / 2;
			
		}
		
		public function onMicActivity(e : ActivityEvent) {
			
			//this.x = mic.activityLevel * 20;
			
		}
		
		public function touchBegin(e : TouchEvent) {
			
			isTouchingScreen = true;
			
		}
		
		public function touchEnd(e : TouchEvent) {
			
			isTouchingScreen = false;
			
		}
		
		public function onAccelUpdate(e : AccelerometerEvent) {
			
			tiltX = - e.accelerationX * 300;
			tiltY = e.accelerationY * 300;
			
		}
		
		public function update(e : Event) {
			
			//tell all dynamic objects to run their update method
			for(var i: int = 0; i < dynamicObjects.length; i++){
				dynamicObjects[i].update();
			}
			
			/*
			//rotate stripes of Volcanic Penguin Logo
			if(contains(titleScreen)){
				titleScreen.logo.logo.mask.rotation += 1;
			}
			*/
			
		}
		
		public function tap(e : TouchEvent) {
			
			if (Accelerometer.isSupported) {
					newColorLines();
				}
			
		}
		
		public function click(e: MouseEvent) {
			
			if (!Accelerometer.isSupported) {
					newColorLines();
				}
			
		}
		
		public function newColorLines() {
			
			//move to random frame with a new alignment of colored lines
			this.gotoAndStop(Math.ceil(Math.random() * this.totalFrames));
			
			/*
			//move to next frame with a new alignment of colored lines
			if(currentFrame < totalFrames){
				nextFrame();
			}else{
				//loop back to first frame
				this.gotoAndStop(1);
			}
			*/
			
			//set background color randomly
			if (Math.random() < 0.5) {
				bgcolor.gotoAndStop("white");
			}else {
				bgcolor.gotoAndStop("black");
			}
			
			//remove titleScreen
			if(contains(titleScreen)){
				removeChild(titleScreen);
			}
			
			//set line style randomly
			var newStyle : Number = Math.ceil(Math.random() * 8);
			
			//tell all dynamic objects to run their click method
			for (i = 0; i < dynamicObjects.length; i++) {
				if(stage.contains(dynamicObjects[i])){ 
					
					//run click method
					dynamicObjects[i].click(newStyle);
					
				}else{ //remove objects from array that have been removed from the stage after switching frame
					
					//remove object from array
					dynamicObjects.splice(i, 1); 
					//move back i so that the for loop doesn't skip an object when array gets compressed
					i--;
					
				}
			}
			
		}
		
	}
	
}
