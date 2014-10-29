package com.jach.minutra.model;

import com.jach.minutra.model.auto._MINUTRAMap;

public class MINUTRAMap extends _MINUTRAMap {

    private static MINUTRAMap instance;

    private MINUTRAMap() {}

    public static MINUTRAMap getInstance() {
        if(instance == null) {
            instance = new MINUTRAMap();
        }

        return instance;
    }
}
