﻿package code{	import flash.display.MovieClip;	import flash.events.*;	import flash.utils.Timer;	import flash.geom.Point;	import flash.ui.Mouse;	import flash.display.Stage		import circleGenerator;		public class circleSpawner extends MovieClip	{				//Public		public var circleSpread:Number;		public var circleEnlargeMax:Number = 25;		public var circleEnlargeMin:Number = 2;		public var circleRadius:int = 1;		public var circleAphla:Number = .1;		//Private		private var circleIsEnlarge:Boolean = true;		private var circlePos:Point;				private var circleUpdate:Timer = new Timer (35);		private var circle:MovieClip = new MovieClip();				//Random Color Variables					private	var wonderLandTheme:Array = new Array(0x2DB39E, 0x416C73, 0x79DCF4, 0x434A59, 0x302838);			private var dustyPetrolTheme:Array = new Array (0x292929, 0x5B7876, 0x8F9E8B, 0xF2E6B6, 0x412A22);			private var creativeInfluenceTheme:Array = new Array(0xFF0000, 0xFF950B, 0x2FA88C, 0xDEEB00, 0x4B2C04);			private var page50Theme:Array = new Array(0xBF2431, 0x183459, 0x3671BF, 0x8EA66A, 0xA0A676);			private var eightiesVibrantTheme:Array = new Array (0xC0D100, 0x6BB855, 0xFF1BA3, 0xD9C50C, 0xD13300);			private var mountainSkyTheme:Array = new Array (0x023E73, 0x034C8C, 0x4E94BF, 0xCCDCF3, 0xEEF2FD);			private var duoITheme:Array = new Array (0x413050, 0x255F75, 0x454D38,0x111111, 0xC4C1BA);			private var dullTheme:Array = new Array (0xFFD74D, 0xFFC600, 0xAD100D, 0x004D80, 0x8A9E50);							private var parkAvenueShift:Array = new Array (0x69E8CC, 0xFFF5BC, 0x302D23, 0x6B4424, 0xB9E04B);			private var haitiRelief:Array = new Array (0x32450C, 0x717400, 0xDC8505, 0xEC5519, 0xBE2805);			private var	dropOfSun:Array = new Array (0x1F4E57, 0x438275, 0xC0EB94, 0xFFFF8BFFFF8B, 0x98EDB0);			private var bordeaux:Array = new Array (0xF7F2B2, 0xADCF4F, 0x84815B, 0x4A1A2C, 0x8E3557);			private var oddEnd:Array = new Array (0x000000, 0x333333, 0xFF358B, 0x01B0F0, 0xAEEE00);			private var techOffice:Array = new Array (0x595241, 0xB8AE9C, 0xFFFFFF, 0xACCFCC, 0x8A0917);			private var herbsAndSpices:Array = new Array (0x5A1F00, 0xD1570D, 0xFDE792, 0x477725, 0xA9CC66);			private var orangeOnOlive:Array = new Array (0xB4AF91, 0x787746, 0x40411E, 0x32331D, 0xC03000);			private var orangeOnBlue:Array = new Array (0xFFF8E3, 0xCCCC9F, 0x33332D, 0x9FB4CC, 0xDB4105);			private var webLight:Array = new Array (0x42B8CC, 0x7E9599, 0xB2E06B, 0xFF8B45, 0xF5C7C7);			private var lr:Array = new Array (0xBF1400, 0xBFAF0A, 0xFFE90D, 0x403A03, 0xE64400);			private var vitruvianMan:Array = new Array (0xE22F0E, 0x32EF0E, 0x32EF0E, 0x8B03F9, 0x02ABEF);			private var groen:Array = new Array (0x4F7302, 0xABD904, 0x83A603, 0xEEF26D, 0xF0F2B3);			private var waitingForSpring:Array = new Array (0xFFC754, 0xCF8E97, 0xC47A87, 0x78B189, 0x209F88);			private var markit:Array = new Array (0x1F8601, 0xEDE72D, 0xF06700, 0xC00F05, 0x4B0102);					private var getMyTShirt:Array = new Array (0xFFFCFF, 0xE8C4A9, 0x382B29, 0xFFAD8C, 0xFF8282);			private var greenDream:Array = new Array (0x152C0C, 0x375300, 0x727C38, 0x313F17, 0x514F2C);			private var fridayFunk:Array = new Array (0x2347A3, 0xC52C27, 0x39657E, 0xE1B41B, 0x4F9316);			private var wholeFoods:Array = new Array (0x69E8CC, 0xFFF5BC, 0x302D23, 0x6B4424, 0xB9E04B);			private var chocolateChillJazz:Array = new Array (0x4D2B1F, 0x635D61, 0x7992A2, 0x97BFD5, 0xBFDCF5);			private var icelandicLagoon:Array = new Array (0xA1D5B8, 0x83ACA0, 0x565E55, 0x473D0F, 0x1F1B10);			private var oldTaxiCab:Array = new Array (0x151919, 0x733218, 0x8C7C40, 0xBFA146, 0xE5B744);			private var easterSunday:Array = new Array (0x0D050B, 0x241533, 0x6A730D, 0xE5DB00, 0xFFFFF8);			private var clueAnswer:Array = new Array (0x372F22, 0x8A3D20, 0xF5523F, 0xFFC955, 0x540907);			private var shipBreakers:Array = new Array (0x540907, 0x5F2D0F, 0x695F3A, 0xA5AA73, 0xF5FFA5);			//Public Colors		public var circleColorThemeArray:Array = new Array(wholeFoods, chocolateChillJazz, icelandicLagoon, oldTaxiCab, easterSunday, clueAnswer, shipBreakers, fridayFunk, greenDream, getMyTShirt, markit, waitingForSpring, groen, vitruvianMan, orangeOnOlive, orangeOnBlue, webLight, lr, herbsAndSpices, techOffice, oddEnd, bordeaux, dropOfSun, haitiRelief, parkAvenueShift, wonderLandTheme, dustyPetrolTheme, creativeInfluenceTheme, page50Theme, eightiesVibrantTheme, mountainSkyTheme, duoITheme, dullTheme);		public var circleCurrentTheme:int;				private var staticColorID:Number;		private var newColorID:Number;		private var opacity:Number;					public function circleSpawner(c:int, s:int, max:Number, min:Number, alpha:Number)		{			circleCurrentTheme = c; //Sets Color Theme			staticColorID = s;						circleEnlargeMax = max;			circleEnlargeMin = min;			circleRadius = circleEnlargeMin;			circleAphla = alpha;							//staticColorID =   //Sets Static Line Color								circlePos = new Point(0, 0);			//circlePos = new Point((Math.random()*stage.width), (Math.random()*stage.height) );						spawnCircle();						//Mouse.hide();								}//End circleSpawnTimer				public function spawnCircle()		{			this.addChild(circle);							circle.addEventListener(Event.ENTER_FRAME, scaleCircle);				}		public function clearCircle()		{			//trace("clear");			circle.graphics.clear();		}		private function createNewColor()		{			newColorID = Math.floor(Math.random() * circleColorThemeArray[circleCurrentTheme].length ); //Pick Color From Array					return(newColorID);					}		public function scaleCircle(e:Event):void		{			//trace("scale");			if (circleRadius <= circleEnlargeMin)				{					circleIsEnlarge = true;					circle.graphics.clear();					createNewColor();				}								else if (circleRadius >= circleEnlargeMax)				{					circleIsEnlarge = false;					circle.graphics.clear();					//createNewColor();				}			if (circleIsEnlarge)			{				//trace(circleIsEnlarge);								clearCircle();				circle.graphics.lineStyle(4,circleColorThemeArray[circleCurrentTheme][newColorID],1,true);				circle.graphics.beginFill(circleColorThemeArray[circleCurrentTheme][newColorID]);				circle.graphics.drawCircle(circlePos.x, circlePos.y, circleRadius);				circle.graphics.endFill();												circleRadius += 1;								fadeCircle(circleRadius);			}								else if  (!circleIsEnlarge)			{				//trace(isEnlarge);								clearCircle();				circle.graphics.clear();				circle.graphics.lineStyle(3,circleColorThemeArray[circleCurrentTheme][newColorID],1,true);				circle.graphics.beginFill(circleColorThemeArray[circleCurrentTheme][newColorID]);				circle.graphics.drawCircle(circlePos.x, circlePos.y, circleRadius);				circle.graphics.endFill();												circleRadius -= 1;								fadeCircle(circleRadius);			}						//trace(circleRadius);		}				public function fadeCircle(e:int)		{			opacity = ((e / 100) -.1) + circleAphla;			//opacity = circleAphla;						circle.alpha = opacity;									return(opacity);		}		public function getCircleIndex()		{			return(this.parent.getChildIndex(this));		}		public function getArrayLength()		{			return (circleColorThemeArray[circleCurrentTheme].length);		}				public function setTheme(themeToBe:Number)		{			circleCurrentTheme = themeToBe;			//trace("Current Theme:", + currentTheme);		}			}//End class	}