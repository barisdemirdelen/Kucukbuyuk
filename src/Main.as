package {
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Barış Demirdelen
	 */
	public class Main extends Sprite {
		
		[SWF(width="600", height="1000", frameRate="20", backgroundColor="#FFFFFF")]
		public function Main():void {
			if (stage)
				init();
			else
				addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void {
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			for (var i:int = 0; i < 100; i++) {
				var kucuk:MovieClip = new baris_kafa();
				kucuk.rotationZ = (Math.random() - 0.5) * 360;
				kucuk.x = Math.random() * (stage.stageWidth - kucuk.width);
				kucuk.y = Math.random() * (stage.stageHeight - kucuk.height);
				stage.addChild(kucuk);
			}
			
			var buyuk:MovieClip = new baris_kafa();
			var scale:Number =  stage.stageWidth/ buyuk.width;
			buyuk.scaleX = scale;
			buyuk.scaleY = scale;
			buyuk.x = 0;
			buyuk.y = Math.random() * (stage.stageHeight - buyuk.height);
			stage.addChild(buyuk);
			
		}
	
	}

}