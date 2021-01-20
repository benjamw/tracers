package  {
	
	import flash.display.MovieClip;
	import flash.display.Graphics;
	import flash.display.Shape;
	import flash.events.TouchEvent;
	import flash.events.AccelerometerEvent;
	import flash.sensors.Accelerometer;
	
	public class ColorLine extends MovieClip{
		
		private var lineX : Number = 0 //where the dot is
		private var lineY : Number = 0 //where the dot is
		
		private var Xmove : Number = 0 //it's movement
		private var Ymove : Number = 0 //it's movement
		
		private var style : Number = 1 //current line style
		
		private var oldx1 : Number = 0 //holds earlier frame's lineX value
		private var oldy1 : Number = 0 //holds earlier frame's lineY value
		private var oldx2 : Number = 0 //holds earlier frame's lineX value
		private var oldy2 : Number = 0 //holds earlier frame's lineY value
		private var oldx3 : Number = 0 //holds earlier frame's lineX value
		private var oldy3 : Number = 0 //holds earlier frame's lineY value
		private var oldx4 : Number = 0 //holds earlier frame's lineX value
		private var oldy4 : Number = 0 //holds earlier frame's lineY value
		private var oldx5 : Number = 0 //holds earlier frame's lineX value
		private var oldy5 : Number = 0 //holds earlier frame's lineY value
		private var oldx6 : Number = 0 //holds earlier frame's lineX value
		private var oldy6 : Number = 0 //holds earlier frame's lineY value
		private var oldx7 : Number = 0 //holds earlier frame's lineX value
		private var oldy7 : Number = 0 //holds earlier frame's lineY value
		private var oldx8 : Number = 0 //holds earlier frame's lineX value
		private var oldy8 : Number = 0 //holds earlier frame's lineY value
		private var oldx9 : Number = 0 //holds earlier frame's lineX value
		private var oldy9 : Number = 0 //holds earlier frame's lineY value
		private var oldx10: Number = 0 //holds earlier frame's lineX value
		private var oldy10: Number = 0 //holds earlier frame's lineY value
		
		private var ColorLineShape : Shape = new Shape(); //code object for handling coded lines
		
		private var inertia : Number = 10; //the higher the inertia, the slower the lines follow the mouse
		
		public function ColorLine() {
			// constructor code
			
			//add object to main class array
			MovieClip(root).dynamicObjects.push(this);
			
			//make little arrow invisible
			this.innerthing.visible = false;
			
			//add the coded line object to the stage
			addChild(ColorLineShape);
			
		}
		
		public function random(amount : Number) {
			
			return Math.floor(Math.random() * amount);
			
		}
		
		//when stage is clicked
		public function click(newStyle : Number) {
			
			//line jerks
			Xmove += random(101) - 50;
			Ymove += random(101) - 50;
			
			//reset color animation
			MovieClip(parent.parent).gotoAndPlay(1);
			
			if(newStyle > 7){
				//set to random style
				style = random(7) + 1;
			}else{
				//set style to argument sent to method
				style = newStyle;
			}
			
			/*
			//switch to next style
			style ++;
			
			//loop back to first style
			if(	style > 7 ){
				style = 1;
			}
			*/
			
		}
		
		public function update() {
			
			if(Accelerometer.isSupported && !MovieClip(root).isTouchingScreen) {
				//tilt control
				//DONE
				Xmove += (MovieClip(root).tiltX - lineX) / inertia //math
				Ymove += (MovieClip(root).tiltY - lineY) / inertia //math
				lineX += Xmove + (MovieClip(root).tiltX - lineX) / inertia //math
				lineY += Ymove + (MovieClip(root).tiltY - lineY) / inertia //math
			}else{
				//mouse control
				//DONE
				Xmove += (MovieClip(root).mouseX - MovieClip(parent.parent).x - lineX) / inertia //math
				Ymove += (MovieClip(root).mouseY - MovieClip(parent.parent).y - lineY) / inertia //math
				lineX += Xmove + (MovieClip(root).mouseX - MovieClip(parent.parent).x - lineX) / inertia //math
				lineY += Ymove + (MovieClip(root).mouseY - MovieClip(parent.parent).y - lineY) / inertia //math
			}
			
			//DONE
			ColorLineShape.graphics.clear()
			
			//DONE
			switch(style){
			case 1 : 	
				ColorLineShape.graphics.lineStyle(1,0xEAEAEA,100)
				ColorLineShape.graphics.moveTo(oldx10,oldy10)
				ColorLineShape.graphics.lineTo(oldx9,oldy9)
				ColorLineShape.graphics.lineStyle(2,0xDCDCDC,100)
				ColorLineShape.graphics.lineTo(oldx8,oldy8)
				ColorLineShape.graphics.lineStyle(3,0xD1D1D1,100)
				ColorLineShape.graphics.lineTo(oldx7,oldy7)
				ColorLineShape.graphics.lineStyle(4,0xBCBCBC,100)
				ColorLineShape.graphics.lineTo(oldx6,oldy6)
				ColorLineShape.graphics.lineStyle(5,0xA5A5A5,100)
				ColorLineShape.graphics.lineTo(oldx5,oldy5)
				ColorLineShape.graphics.lineStyle(6,0x8C8C8C,100)
				ColorLineShape.graphics.lineTo(oldx4,oldy4)
				ColorLineShape.graphics.lineStyle(7,0x757575,100)
				ColorLineShape.graphics.lineTo(oldx3,oldy3)
				ColorLineShape.graphics.lineStyle(8,0x5C5C5C,100)
				ColorLineShape.graphics.lineTo(oldx2,oldy2)
				ColorLineShape.graphics.lineStyle(9,0x454545,100)
				ColorLineShape.graphics.lineTo(oldx1,oldy1)
				ColorLineShape.graphics.lineStyle(10,000000,100)
				ColorLineShape.graphics.lineTo(lineX,lineY)
				ColorLineShape.graphics.lineStyle(5,0xFFFFFF,100)
				ColorLineShape.graphics.moveTo(oldx1,oldy1)
				ColorLineShape.graphics.lineTo(lineX,lineY)
				
				break;
				
			case 2 :	
				ColorLineShape.graphics.lineStyle(1,0xEAEAEA,100)
				ColorLineShape.graphics.moveTo(oldx10,oldy10)
				ColorLineShape.graphics.lineTo(oldx9,oldy9)
				ColorLineShape.graphics.lineStyle(2,0xDCDCDC,100)
				ColorLineShape.graphics.lineTo(oldx8,oldy8)
				ColorLineShape.graphics.lineStyle(3,0xD1D1D1,100)
				ColorLineShape.graphics.lineTo(oldx7,oldy7)
				ColorLineShape.graphics.lineStyle(4,0xBCBCBC,100)
				ColorLineShape.graphics.lineTo(oldx6,oldy6)
				ColorLineShape.graphics.lineStyle(5,0xA5A5A5,100)
				ColorLineShape.graphics.lineTo(oldx5,oldy5)
				ColorLineShape.graphics.lineStyle(5,0x8C8C8C,100)
				ColorLineShape.graphics.lineTo(oldx4,oldy4)
				ColorLineShape.graphics.lineStyle(4,0x757575,100)
				ColorLineShape.graphics.lineTo(oldx3,oldy3)
				ColorLineShape.graphics.lineStyle(3,0x5C5C5C,100)
				ColorLineShape.graphics.lineTo(oldx2,oldy2)
				ColorLineShape.graphics.lineStyle(2,0x454545,100)
				ColorLineShape.graphics.lineTo(oldx1,oldy1)
				ColorLineShape.graphics.lineStyle(1,000000,100)
				ColorLineShape.graphics.lineTo(lineX,lineY)
				
				break;
				
			case 3 :
				ColorLineShape.graphics.lineStyle(1,000000,100)
				ColorLineShape.graphics.moveTo(oldx10,oldy10)
				ColorLineShape.graphics.lineTo(oldx9,oldy9)
				ColorLineShape.graphics.moveTo(oldx8,oldy8)
				ColorLineShape.graphics.lineStyle(3,000000,100)
				ColorLineShape.graphics.lineTo(oldx7,oldy7)
				ColorLineShape.graphics.moveTo(oldx6,oldy6)
				ColorLineShape.graphics.lineStyle(5,000000,100)
				ColorLineShape.graphics.lineTo(oldx5,oldy5)
				ColorLineShape.graphics.moveTo(oldx4,oldy4)
				ColorLineShape.graphics.lineStyle(7,000000,100)
				ColorLineShape.graphics.lineTo(oldx3,oldy3)
				ColorLineShape.graphics.moveTo(oldx2,oldy2)
				ColorLineShape.graphics.lineStyle(9,000000,100)
				ColorLineShape.graphics.lineTo(oldx1,oldy1)
				ColorLineShape.graphics.lineStyle(10,000000,100)
				ColorLineShape.graphics.lineTo(lineX,lineY)
				ColorLineShape.graphics.lineStyle(1,0xFFFFFF,100)
				ColorLineShape.graphics.moveTo(oldx8,oldy8)
				ColorLineShape.graphics.lineTo(oldx7,oldy7)
				ColorLineShape.graphics.moveTo(oldx6,oldy6)
				ColorLineShape.graphics.lineStyle(3,0xFFFFFF,100)
				ColorLineShape.graphics.lineTo(oldx5,oldy5)
				ColorLineShape.graphics.moveTo(oldx4,oldy4)
				ColorLineShape.graphics.lineStyle(5,0xFFFFFF,100)
				ColorLineShape.graphics.lineTo(oldx3,oldy3)
				ColorLineShape.graphics.moveTo(oldx2,oldy2)
				ColorLineShape.graphics.lineStyle(8,0xFFFFFF,100)
				ColorLineShape.graphics.lineTo(oldx1,oldy1)
				ColorLineShape.graphics.lineStyle(9,0xFFFFFF,100)
				ColorLineShape.graphics.lineTo(lineX,lineY)
				
				break;
				
			case 4 : 
				ColorLineShape.graphics.lineStyle(10,000000,100)
				ColorLineShape.graphics.moveTo(oldx10,oldy10)
				ColorLineShape.graphics.lineTo(oldx9,oldy9)
				ColorLineShape.graphics.lineStyle(5,0xFFFFFF,100)
				ColorLineShape.graphics.moveTo(oldx10,oldy10)
				ColorLineShape.graphics.lineTo(oldx9,oldy9)
				ColorLineShape.graphics.lineStyle(10,000000,100)
				ColorLineShape.graphics.moveTo(oldx1,oldy1)
				ColorLineShape.graphics.lineTo(lineX,lineY)
				ColorLineShape.graphics.lineStyle(5,0xFFFFFF,100)
				ColorLineShape.graphics.moveTo(oldx1,oldy1)
				ColorLineShape.graphics.lineTo(lineX,lineY)
				
				break;
				
			case 5 : 
				ColorLineShape.graphics.lineStyle(1,0xEAEAEA,100)
				ColorLineShape.graphics.moveTo(oldx10+random(11)-5,oldy10+random(11)-5)
				ColorLineShape.graphics.lineTo(oldx9+random(11)-5,oldy9+random(11)-5)
				ColorLineShape.graphics.lineStyle(2,0xDCDCDC,100)
				ColorLineShape.graphics.lineTo(oldx8+random(11)-5,oldy8+random(11)-5)
				ColorLineShape.graphics.lineStyle(3,0xD1D1D1,100)
				ColorLineShape.graphics.lineTo(oldx7+random(11)-5,oldy7+random(11)-5)
				ColorLineShape.graphics.lineStyle(4,0xBCBCBC,100)
				ColorLineShape.graphics.lineTo(oldx6+random(11)-5,oldy6+random(11)-5)
				ColorLineShape.graphics.lineStyle(5,0xA5A5A5,100)
				ColorLineShape.graphics.lineTo(oldx5,oldy5)
				ColorLineShape.graphics.lineStyle(6,0x8C8C8C,100)
				ColorLineShape.graphics.lineTo(oldx4,oldy4)
				ColorLineShape.graphics.lineStyle(7,0x757575,100)
				ColorLineShape.graphics.lineTo(oldx3,oldy3)
				ColorLineShape.graphics.lineStyle(8,0x5C5C5C,100)
				ColorLineShape.graphics.lineTo(oldx2,oldy2)
				ColorLineShape.graphics.lineStyle(9,0x454545,100)
				ColorLineShape.graphics.lineTo(oldx1,oldy1)
				ColorLineShape.graphics.lineStyle(10,000000,100)
				ColorLineShape.graphics.lineTo(lineX,lineY)
				
				break;
				
			case 6 : 
				ColorLineShape.graphics.lineStyle(1,000000,100)
				ColorLineShape.graphics.moveTo(oldx10+random(11)-5,oldy10+random(11)-5)
				ColorLineShape.graphics.lineTo(oldx9+random(11)-5,oldy9+random(11)-5)
				ColorLineShape.graphics.moveTo(oldx8+random(11)-5,oldy8+random(11)-5)
				ColorLineShape.graphics.lineStyle(3,000000,100)
				ColorLineShape.graphics.lineTo(oldx7+random(11)-5,oldy7+random(11)-5)
				ColorLineShape.graphics.moveTo(oldx6+random(11)-5,oldy6+random(11)-5)
				ColorLineShape.graphics.lineStyle(5,000000,100)
				ColorLineShape.graphics.lineTo(oldx5+random(11)-5,oldy5+random(11)-5)
				ColorLineShape.graphics.moveTo(oldx4+random(11)-5,oldy4+random(11)-5)
				ColorLineShape.graphics.lineStyle(7,000000,100)
				ColorLineShape.graphics.lineTo(oldx3+random(11)-5,oldy3+random(11)-5)
				ColorLineShape.graphics.moveTo(oldx2+random(11)-5,oldy2+random(11)-5)
				ColorLineShape.graphics.lineStyle(9,000000,100)
				ColorLineShape.graphics.lineTo(oldx1+random(11)-5,oldy1+random(11)-5)
				ColorLineShape.graphics.lineStyle(10,000000,100)
				ColorLineShape.graphics.lineTo(lineX+random(11)-5,lineY+random(11)-5)
				ColorLineShape.graphics.lineStyle(1,0xFFFFFF,100)
				ColorLineShape.graphics.moveTo(oldx8+random(11)-5,oldy8+random(11)-5)
				ColorLineShape.graphics.lineTo(oldx7+random(11)-5,oldy7+random(11)-5)
				ColorLineShape.graphics.moveTo(oldx6+random(11)-5,oldy6+random(11)-5)
				ColorLineShape.graphics.lineStyle(3,0xFFFFFF,100)
				ColorLineShape.graphics.lineTo(oldx5+random(11)-5,oldy5+random(11)-5)
				ColorLineShape.graphics.moveTo(oldx4+random(11)-5,oldy4+random(11)-5)
				ColorLineShape.graphics.lineStyle(5,0xFFFFFF,100)
				ColorLineShape.graphics.lineTo(oldx3+random(11)-5,oldy3+random(11)-5)
				ColorLineShape.graphics.moveTo(oldx2+random(11)-5,oldy2+random(11)-5)
				ColorLineShape.graphics.lineStyle(8,0xFFFFFF,100)
				ColorLineShape.graphics.lineTo(oldx1+random(11)-5,oldy1+random(11)-5)
				ColorLineShape.graphics.lineStyle(9,0xFFFFFF,100)
				ColorLineShape.graphics.lineTo(lineX+random(11)-5,lineY+random(11)-5)
				
				break;
				
			case 7 : 
				ColorLineShape.graphics.lineStyle(random(11),000000,100)
				ColorLineShape.graphics.moveTo(oldx1,oldy1)
				ColorLineShape.graphics.lineTo(lineX,lineY)
				
				break;
			}
			
			//DONE
			oldx10=oldx9
			oldy10=oldy9
			oldx9=oldx8
			oldy9=oldy8
			oldx8=oldx7
			oldy8=oldy7
			oldx7=oldx6
			oldy7=oldy6
			oldx6=oldx5
			oldy6=oldy5
			oldx5=oldx4
			oldy5=oldy4
			oldx4=oldx3
			oldy4=oldy3
			oldx3=oldx2
			oldy3=oldy2
			oldx2=oldx1
			oldy2=oldy1
			oldx1=lineX
			oldy1=lineY
			
		}
		
	}
	
}