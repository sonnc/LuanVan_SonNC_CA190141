package app.qlcv.entities;
// Generated Feb 20, 2021 4:59:14 PM by Hibernate Tools 4.3.1


import java.math.BigDecimal;
import java.util.Date;

/**
 * TkUser generated by hbm2java
 */
public class TkUser  implements java.io.Serializable {


     private Integer id;
     private int versionTime;
     private Date creationDate;
     private Date lastUpdateDate;
     private String createBy;
     private String lastUpdateBy;
     private Integer roleId;
     private String status;
     private String loginId;
     private String fullName;
     private String employeeNo;
     private Integer department;
     private String password;
     private String email;
     private String langPreference;
     private String description;
     private String mobileNumber;
     private String officeNumber;
     private Integer teamNumber;
     private TkDepartment tkDepartment;
     private byte[] profilePicture;
     private BigDecimal luongCoSo;
     private Integer heSo;
     private BigDecimal packageSalary;

    public TkUser() {
    }

	
    public TkUser(int versionTime, Date creationDate, Date lastUpdateDate, String loginId, String password) {
        this.versionTime = versionTime;
        this.creationDate = creationDate;
        this.lastUpdateDate = lastUpdateDate;
        this.loginId = loginId;
        this.password = password;
    }
    public TkUser(int versionTime, Date creationDate, Date lastUpdateDate, String createBy, String lastUpdateBy, Integer roleId, String status, String loginId, String fullName, String employeeNo, Integer department, String password, String email, String langPreference, String description, String mobileNumber, String officeNumber, Integer teamNumber, byte[] profilePicture) {
       this.versionTime = versionTime;
       this.creationDate = creationDate;
       this.lastUpdateDate = lastUpdateDate;
       this.createBy = createBy;
       this.lastUpdateBy = lastUpdateBy;
       this.roleId = roleId;
       this.status = status;
       this.loginId = loginId;
       this.fullName = fullName;
       this.employeeNo = employeeNo;
       this.department = department;
       this.password = password;
       this.email = email;
       this.langPreference = langPreference;
       this.description = description;
       this.mobileNumber = mobileNumber;
       this.officeNumber = officeNumber;
       this.teamNumber = teamNumber;
       this.profilePicture = profilePicture;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public int getVersionTime() {
        return this.versionTime;
    }
    
    public void setVersionTime(int versionTime) {
        this.versionTime = versionTime;
    }
    public Date getCreationDate() {
        return this.creationDate;
    }
    
    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }
    public Date getLastUpdateDate() {
        return this.lastUpdateDate;
    }
    
    public void setLastUpdateDate(Date lastUpdateDate) {
        this.lastUpdateDate = lastUpdateDate;
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
    public Integer getRoleId() {
        return this.roleId;
    }
    
    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }
    public String getStatus() {
        return this.status;
    }
    
    public void setStatus(String status) {
        this.status = status;
    }
    public String getLoginId() {
        return this.loginId;
    }
    
    public void setLoginId(String loginId) {
        this.loginId = loginId;
    }
    public String getFullName() {
        return this.fullName;
    }
    
    public void setFullName(String fullName) {
        this.fullName = fullName;
    }
    public String getEmployeeNo() {
        return this.employeeNo;
    }
    
    public void setEmployeeNo(String employeeNo) {
        this.employeeNo = employeeNo;
    }
    public Integer getDepartment() {
        return this.department;
    }
    
    public void setDepartment(Integer department) {
        this.department = department;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getLangPreference() {
        return this.langPreference;
    }
    
    public void setLangPreference(String langPreference) {
        this.langPreference = langPreference;
    }
    public String getDescription() {
        return this.description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    public String getMobileNumber() {
        return this.mobileNumber;
    }
    
    public void setMobileNumber(String mobileNumber) {
        this.mobileNumber = mobileNumber;
    }
    public String getOfficeNumber() {
        return this.officeNumber;
    }
    
    public void setOfficeNumber(String officeNumber) {
        this.officeNumber = officeNumber;
    }
    public Integer getTeamNumber() {
        return this.teamNumber;
    }
    
    public void setTeamNumber(Integer teamNumber) {
        this.teamNumber = teamNumber;
    }
    public byte[] getProfilePicture() {
        return this.profilePicture;
    }
    
    public void setProfilePicture(byte[] profilePicture) {
        this.profilePicture = profilePicture;
    }

    public TkDepartment getTkDepartment() {
        return tkDepartment;
    }

    public void setTkDepartment(TkDepartment tkDepartment) {
        this.tkDepartment = tkDepartment;
    }

    public BigDecimal getLuongCoSo() {
        return luongCoSo;
    }

    public void setLuongCoSo(BigDecimal luongCoSo) {
        this.luongCoSo = luongCoSo;
    }

    public Integer getHeSo() {
        return heSo;
    }

    public void setHeSo(Integer heSo) {
        this.heSo = heSo;
    }

    public BigDecimal getPackageSalary() {
        return packageSalary;
    }

    public void setPackageSalary(BigDecimal packageSalary) {
        this.packageSalary = packageSalary;
    }

    


}


