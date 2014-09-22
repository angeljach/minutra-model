package com.jach.minutra.model.auto;

import java.util.Date;

import org.apache.cayenne.CayenneDataObject;

import com.jach.minutra.model.MinuteTasks;
import com.jach.minutra.model.Users;

/**
 * Class _MinuteTaskComments was generated by Cayenne.
 * It is probably a good idea to avoid changing this class manually,
 * since it may be overwritten next time code is regenerated.
 * If you need to make any customizations, please use subclass.
 */
public abstract class _MinuteTaskComments extends CayenneDataObject {

    public static final String CREATION_DATE_PROPERTY = "creationDate";
    public static final String DETAIL_PROPERTY = "detail";
    public static final String TO_MINUTE_TASKS_PROPERTY = "toMinuteTasks";
    public static final String TO_USERS_PROPERTY = "toUsers";

    public static final String ID_PK_COLUMN = "id";

    public void setCreationDate(Date creationDate) {
        writeProperty(CREATION_DATE_PROPERTY, creationDate);
    }
    public Date getCreationDate() {
        return (Date)readProperty(CREATION_DATE_PROPERTY);
    }

    public void setDetail(String detail) {
        writeProperty(DETAIL_PROPERTY, detail);
    }
    public String getDetail() {
        return (String)readProperty(DETAIL_PROPERTY);
    }

    public void setToMinuteTasks(MinuteTasks toMinuteTasks) {
        setToOneTarget(TO_MINUTE_TASKS_PROPERTY, toMinuteTasks, true);
    }

    public MinuteTasks getToMinuteTasks() {
        return (MinuteTasks)readProperty(TO_MINUTE_TASKS_PROPERTY);
    }


    public void setToUsers(Users toUsers) {
        setToOneTarget(TO_USERS_PROPERTY, toUsers, true);
    }

    public Users getToUsers() {
        return (Users)readProperty(TO_USERS_PROPERTY);
    }


}