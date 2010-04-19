/*
 * Copyright (c) 2010 AIRS.
 */
package blank.config {

import org.rialy.framework.config.Config;
import org.rialy.framework.config.IInitializable;

public class ApplicationConfig extends Config implements IInitializable {

    public var siteUrl:String;
    public var appUrl:String;

    public function ApplicationConfig(env:String = null) {
        super(env);
    }

    public function development():void {
        siteUrl = "http://localhost:PORT/";
    }

    public function production():void {
        siteUrl = "http://YOUR_PRODUCTION_HOST/";
    }

    public function initialize():void {
        appUrl = siteUrl + "Client.swf";
    }
}
}