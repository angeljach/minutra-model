package com.jach.minutra.model.auto;

import java.util.Date;

import org.apache.cayenne.CayenneDataObject;

import com.jach.minutra.model.Minutes;
import com.jach.minutra.model.Users;

/**
 * Class _MinuteMembers was generated by Cayenne.
 * It is probably a good idea to avoid changing this class manually,
 * since it may be overwritten next time code is regenerated.
 * If you need to make any customizations, please use subclass.
 */
public abstract class _MinuteMembers extends CayenneDataObject {

    public static final String CREATION_DATE_PROPERTY = "creationDate";
    public static final String TO_MINUTES_PROPERTY = "toMinutes";
    public static final String TO_USERS_PROPERTY = "toUsers";

    public static final String ID_PK_COLUMN = "id";

    public void setCreationDate(Date creationDate) {
        writeProperty(CREATION_DATE_PROPERTY, creationDate);
    }
    public Date getCreationDate() {
        return (Date)readProperty(CREATION_DATE_PROPERTY);
    }

    public void setToMinutes(Minutes toMinutes) {
        setToOneTarget(TO_MINUTES_PROPERTY, toMinutes, true);
    }

    public Minutes getToMinutes() {
        return (Minutes)readProperty(TO_MINUTES_PROPERTY);
    }


    public void setToUsers(Users toUsers) {
        setToOneTarget(TO_USERS_PROPERTY, toUsers, true);
    }

    public Users getToUsers() {
        return (Users)readProperty(TO_USERS_PROPERTY);
    }


}
