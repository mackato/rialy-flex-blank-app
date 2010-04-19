/*
 * Copyright (c) 2010 AIRS.
 */
package blank.helpers {

import flash.events.Event;

import mx.controls.Alert;
import mx.core.UIComponent;

import org.rialy.framework.helper.ViewHelper;

public class ApplicationHelper extends ViewHelper {

    public var view:Client;

    public function ApplicationHelper(app:UIComponent) {
        super(app);
    }

    [EventHandler("button.click")]
    public function hello(event:Event):void {
        Alert.show("Hello RIALY! (from " + config.appUrl + ")");
    }
}
}