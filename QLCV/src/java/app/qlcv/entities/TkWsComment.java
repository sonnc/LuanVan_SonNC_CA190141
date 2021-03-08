package app.qlcv.entities;
// Generated Feb 20, 2021 4:59:14 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * TkWsComment generated by hbm2java
 */
public class TkWsComment  implements java.io.Serializable {


     private int id;
     private String createBy;
     private String lastUpdateBy;
     private Date createDate;
     private Date lastUpdateDate;
     private String comment;
     private String status;
     private String userLogin;
     private Integer taskId;
     private Integer taskListId;

    public TkWsComment() {
    }

	
    public TkWsComment(int id) {
        this.id = id;
    }
    public TkWsComment(int id, String createBy, String lastUpdateBy, Date createDate, Date lastUpdateDate, String comment, String status, String userLogin, Integer taskId, Integer taskListId) {
       this.id = id;
       this.createBy = createBy;
       this.lastUpdateBy = lastUpdateBy;
       this.createDate = createDate;
       this.lastUpdateDate = lastUpdateDate;
       this.comment = comment;
       this.status = status;
       this.userLogin = userLogin;
       this.taskId = taskId;
       this.taskListId = taskListId;
    }
   
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    public String getCreateBy() {
        return this.createBy;
    }
    
    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }
    public String getLastUpdateBy() {
        return this.lastUpdateBy;
    }
    
    public void setLastUpdateBy(String lastUpdateBy) {
        this.lastUpdateBy = lastUpdateBy;
    }
    public Date getCreateDate() {
        return this.createDate;
    }
    
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }
    public Date getLastUpdateDate() {
        return this.lastUpdateDate;
    }
    
    public void setLastUpdateDate(Date lastUpdateDate) {
        this.lastUpdateDate = lastUpdateDate;
    }
    public String getComment() {
        return this.comment;
    }
    
    public void setComment(String comment) {
        this.comment = comment;
    }
    public String getStatus() {
        return this.status;
    }
    
    public void setStatus(String status) {
        this.status = status;
    }

    public String getUserLogin() {
        return userLogin;
    }

    public void setUserLogin(String userLogin) {
        this.userLogin = userLogin;
    }
    
    public Integer getTaskId() {
        return this.taskId;
    }
    
    public void setTaskId(Integer taskId) {
        this.taskId = taskId;
    }
    public Integer getTaskListId() {
        return this.taskListId;
    }
    
    public void setTaskListId(Integer taskListId) {
        this.taskListId = taskListId;
    }




}


