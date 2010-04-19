/*
 * Copyright (c) 2010 AIRS.
 */
package blank.config {

import blank.helpers.ApplicationHelper;

import org.rialy.framework.config.IClassRegistry;

public class ApplicationClassRegistry implements IClassRegistry {

    public function ApplicationClassRegistry() {
    }

    public function helpers():Array {
        return [
            ApplicationHelper
        ];
    }

    public function controllers():Array {
        return [];
    }
}
}