package
{
	import feathers.examples.componentsExplorer.Main;
	import feathers.system.DeviceCapabilities;
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	
	import starling.core.Starling;
	import starling.events.Event;
	
	[SWF(width="960",height="640",frameRate="60",backgroundColor="#4a4137")]
	public class StarlingUI extends Sprite
	{
		public function StarlingUI()
		{
			this.stage.align = StageAlign.TOP_LEFT;
			this.stage.scaleMode = StageScaleMode.NO_SCALE;
			
			
			//pretends to be an iPhone Retina screen
			DeviceCapabilities.dpi = 326;
			DeviceCapabilities.screenPixelWidth = 960;
			DeviceCapabilities.screenPixelHeight = 640;
			
			this._starling = new Starling(Main, this.stage);
			this._starling.enableErrorChecking = false;
			this._starling.addEventListener(Event.ROOT_CREATED,start);
		}
		
		private var _starling:Starling;
		
		private function start(e:Event = null):void
		{
			this._starling.start();
			//Starling.handleLostContext = true;
			//Starling.multitouchEnabled = true;
		}
	}
}