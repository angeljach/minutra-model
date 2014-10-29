package com.jach.minutra.model.auto;

import java.util.Date;

import org.apache.cayenne.CayenneDataObject;

import com.jach.minutra.model.Minutes;

/**
 * Class _MinuteDocuments was generated by Cayenne.
 * It is probably a good idea to avoid changing this class manually,
 * since it may be overwritten next time code is regenerated.
 * If you need to make any customizations, please use subclass.
 */
public abstract class _MinuteDocuments extends CayenneDataObject {

    public static final String CREATION_DATE_PROPERTY = "creationDate";
    public static final String MODIFICATION_DATE_PROPERTY = "modificationDate";
    public static final String NAME_PROPERTY = "name";
    public static final String TO_MINUTES_PROPERTY = "toMinutes";

    public static final String ID_PK_COLUMN = "id";

    public void setCreationDate(Date creationDate) {
        writeProperty(CREATION_DATE_PROPERTY, creationDate);
    }
    public Date getCreationDate() {
        return (Date)readProperty(CREATION_DATE_PROPERTY);
    }

    public void setModificationDate(Date modificationDate) {
        writeProperty(MODIFICATION_DATE_PROPERTY, modificationDate);
    }
    public Date getModificationDate() {
        return (Date)readProperty(MODIFICATION_DATE_PROPERTY);
    }

    public void setName(String name) {
        writeProperty(NAME_PROPERTY, name);
    }
    public String getName() {
        return (String)readProperty(NAME_PROPERTY);
    }

    public void setToMinutes(Minutes toMinutes) {
        setToOneTarget(TO_MINUTES_PROPERTY, toMinutes, true);
    }

    public Minutes getToMinutes() {
        return (Minutes)readProperty(TO_MINUTES_PROPERTY);
    }


}
