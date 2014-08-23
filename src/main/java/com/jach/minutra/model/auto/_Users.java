package com.jach.minutra.model.auto;

import java.util.Date;
import java.util.List;

import org.apache.cayenne.CayenneDataObject;

import com.jach.minutra.model.Movements;
import com.jach.minutra.model.Summaries;
import com.jach.minutra.model.SummaryMembers;
import com.jach.minutra.model.SummaryTasks;
import com.jach.minutra.model.UserRoles;

/**
 * Class _Users was generated by Cayenne.
 * It is probably a good idea to avoid changing this class manually,
 * since it may be overwritten next time code is regenerated.
 * If you need to make any customizations, please use subclass.
 */
public abstract class _Users extends CayenneDataObject {

    public static final String CREATION_DATE_PROPERTY = "creationDate";
    public static final String EMAIL_PROPERTY = "email";
    public static final String IS_ENABLED_PROPERTY = "isEnabled";
    public static final String JOB_TITLE_PROPERTY = "jobTitle";
    public static final String MODIFICATION_DATE_PROPERTY = "modificationDate";
    public static final String NAME_PROPERTY = "name";
    public static final String PASSWORD_PROPERTY = "password";
    public static final String MOVEMENTS_ARRAY_PROPERTY = "movementsArray";
    public static final String SUMMARIES_ARRAY_PROPERTY = "summariesArray";
    public static final String SUMMARY_MEMBERS_ARRAY_PROPERTY = "summaryMembersArray";
    public static final String SUMMARY_TASKS_ARRAY_PROPERTY = "summaryTasksArray";
    public static final String USER_ROLES_ARRAY_PROPERTY = "userRolesArray";

    public static final String ID_PK_COLUMN = "id";

    public void setCreationDate(Date creationDate) {
        writeProperty(CREATION_DATE_PROPERTY, creationDate);
    }
    public Date getCreationDate() {
        return (Date)readProperty(CREATION_DATE_PROPERTY);
    }

    public void setEmail(String email) {
        writeProperty(EMAIL_PROPERTY, email);
    }
    public String getEmail() {
        return (String)readProperty(EMAIL_PROPERTY);
    }

    public void setIsEnabled(Boolean isEnabled) {
        writeProperty(IS_ENABLED_PROPERTY, isEnabled);
    }
    public Boolean getIsEnabled() {
        return (Boolean)readProperty(IS_ENABLED_PROPERTY);
    }

    public void setJobTitle(String jobTitle) {
        writeProperty(JOB_TITLE_PROPERTY, jobTitle);
    }
    public String getJobTitle() {
        return (String)readProperty(JOB_TITLE_PROPERTY);
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

    public void setPassword(String password) {
        writeProperty(PASSWORD_PROPERTY, password);
    }
    public String getPassword() {
        return (String)readProperty(PASSWORD_PROPERTY);
    }

    public void addToMovementsArray(Movements obj) {
        addToManyTarget(MOVEMENTS_ARRAY_PROPERTY, obj, true);
    }
    public void removeFromMovementsArray(Movements obj) {
        removeToManyTarget(MOVEMENTS_ARRAY_PROPERTY, obj, true);
    }
    @SuppressWarnings("unchecked")
    public List<Movements> getMovementsArray() {
        return (List<Movements>)readProperty(MOVEMENTS_ARRAY_PROPERTY);
    }


    public void addToSummariesArray(Summaries obj) {
        addToManyTarget(SUMMARIES_ARRAY_PROPERTY, obj, true);
    }
    public void removeFromSummariesArray(Summaries obj) {
        removeToManyTarget(SUMMARIES_ARRAY_PROPERTY, obj, true);
    }
    @SuppressWarnings("unchecked")
    public List<Summaries> getSummariesArray() {
        return (List<Summaries>)readProperty(SUMMARIES_ARRAY_PROPERTY);
    }


    public void addToSummaryMembersArray(SummaryMembers obj) {
        addToManyTarget(SUMMARY_MEMBERS_ARRAY_PROPERTY, obj, true);
    }
    public void removeFromSummaryMembersArray(SummaryMembers obj) {
        removeToManyTarget(SUMMARY_MEMBERS_ARRAY_PROPERTY, obj, true);
    }
    @SuppressWarnings("unchecked")
    public List<SummaryMembers> getSummaryMembersArray() {
        return (List<SummaryMembers>)readProperty(SUMMARY_MEMBERS_ARRAY_PROPERTY);
    }


    public void addToSummaryTasksArray(SummaryTasks obj) {
        addToManyTarget(SUMMARY_TASKS_ARRAY_PROPERTY, obj, true);
    }
    public void removeFromSummaryTasksArray(SummaryTasks obj) {
        removeToManyTarget(SUMMARY_TASKS_ARRAY_PROPERTY, obj, true);
    }
    @SuppressWarnings("unchecked")
    public List<SummaryTasks> getSummaryTasksArray() {
        return (List<SummaryTasks>)readProperty(SUMMARY_TASKS_ARRAY_PROPERTY);
    }


    public void addToUserRolesArray(UserRoles obj) {
        addToManyTarget(USER_ROLES_ARRAY_PROPERTY, obj, true);
    }
    public void removeFromUserRolesArray(UserRoles obj) {
        removeToManyTarget(USER_ROLES_ARRAY_PROPERTY, obj, true);
    }
    @SuppressWarnings("unchecked")
    public List<UserRoles> getUserRolesArray() {
        return (List<UserRoles>)readProperty(USER_ROLES_ARRAY_PROPERTY);
    }


}
