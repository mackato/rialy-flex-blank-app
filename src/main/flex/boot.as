/*
 * Copyright (c) 2010 AIRS.
 */
package {

import mx.core.Application;

import org.rialy.framework.config.ClassLoader;
import org.rialy.framework.facade.Facade;

import blank.config.ApplicationClassRegistry;
import blank.config.ApplicationConfig;
import blank.helpers.ApplicationHelper;

function boot(app:Application):void {
    ClassLoader.load(new ApplicationClassRegistry());
    var facade:Facade = Facade.initialize(new ApplicationConfig(CONFIG::ENV));
    facade.registerApplication(app, ApplicationHelper);
}
}