////////////////////////////////////////////////////////////////////////////////
//
//  Licensed to the Apache Software Foundation (ASF) under one or more
//  contributor license agreements.  See the NOTICE file distributed with
//  this work for additional information regarding copyright ownership.
//  The ASF licenses this file to You under the Apache License, Version 2.0
//  (the "License"); you may not use this file except in compliance with
//  the License.  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
////////////////////////////////////////////////////////////////////////////////
package org.apache.royale.jewel
{
	import org.apache.royale.core.IUIBase;
	import org.apache.royale.core.StyledUIBase;
	import org.apache.royale.utils.PointUtils;
    import org.apache.royale.utils.UIModuleUtils;
	import org.apache.royale.geom.Point;
	import org.apache.royale.events.Event;
	
	COMPILE::SWF
	{
		import flash.display.Loader;
		import flash.display.DisplayObjectContainer;
        import flash.events.Event;
		import flash.system.LoaderContext;
		import flash.system.ApplicationDomain;
		import flash.net.URLRequest;
	}
	
    COMPILE::JS
    {
        import goog.global;
        import org.apache.royale.core.WrappedHTMLElement;   
    }
    
    /**
     *  The ModuleLoader class can load a Module. 
	 * 
     *  @toplevel
     *  @langversion 3.0
     *  @playerversion Flash 10.2
     *  @playerversion AIR 2.6
     *  @productversion Royale 0.9.6
     */    
	public class ModuleLoader extends StyledUIBase
	{
        /**
         *  Constructor.
         *  
         *  @langversion 3.0
         *  @playerversion Flash 10.2
         *  @playerversion AIR 2.6
         *  @productversion Royale 0.9.6
         */
		public function ModuleLoader()
		{
			super();
		}
		
        /**
         *  Path or URL of module.  This is combined
         *  with the module name and a platform suffix
         *  to determine the actual path or URL of the
         *  module.
         *  
         *  @langversion 3.0
         *  @playerversion Flash 10.2
         *  @playerversion AIR 2.6
         *  @productversion Royale 0.9.6
         */
        public function get modulePath():String
        {
            return utils.modulePath;
        }
        
        /**
         *  @private.
         */
        public function set modulePath(value:String):void
        {
            utils.modulePath = value;
        }
        
        public function get moduleName():String
        {
            return utils.moduleName;
        }
        
        public function set moduleName(value:String):void
        {
            utils.moduleName = value;
        }
                
        override public function addedToParent():void
        {
            super.addedToParent();
            if (utils.moduleName)
                loadModule();
        }
		
        private var utils:UIModuleUtils = new UIModuleUtils();
        
		/**
         *  Load the module.  Will be called automatically if modulePath
         *  is set as the UIModuleLoader is added to the display list.
         * 
         *  @langversion 3.0
         *  @playerversion Flash 10.2
         *  @playerversion AIR 2.6
         *  @productversion Royale 0.9.6
		 */
		public function loadModule():void
		{
            utils.loadModule(this);
        }
	}
}
