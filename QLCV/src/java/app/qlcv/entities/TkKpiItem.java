package app.qlcv.entities;
// Generated Jun 23, 2020 10:28:56 AM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * TkKpiItem generated by hbm2java
 */
public class TkKpiItem  implements java.io.Serializable {


     private Integer id;
     private TkUser tkUser;
     private String createBy;
     private String lastUpdateBy;
     private Date createDate;
     private Date lastUpdateDate;
     private Integer kpiYear;
     private String kpiItem;
     private String mucTieu;
     private Double trongSo;
     private Double tyLeThucHien;
     private Double ketQua;
     private String status;
     private int refId;
     private Set tkKpiItemDetails = new HashSet(0);

    public TkKpiItem() {
    }

	
    public TkKpiItem(TkUser tkUser) {
        this.tkUser = tkUser;
    }
    public TkKpiItem(TkUser tkUser, String createBy, String lastUpdateBy, Date createDate, Date lastUpdateDate, Integer kpiYear, String kpiItem, String mucTieu, Double trongSo, Double tyLeThucHien, Double ketQua, String status, Set tkKpiItemDetails) {
       this.tkUser = tkUser;
       this.createBy = createBy;
       this.lastUpdateBy = lastUpdateBy;
       this.createDate = createDate;
       this.lastUpdateDate = lastUpdateDate;
       this.kpiYear = kpiYear;
       this.kpiItem = kpiItem;
       this.mucTieu = mucTieu;
       this.trongSo = trongSo;
       this.tyLeThucHien = tyLeThucHien;
       this.ketQua = ketQua;
       this.status = status;
       this.tkKpiItemDetails = tkKpiItemDetails;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public TkUser getTkUser() {
        return this.tkUser;
    }
    
    public void setTkUser(TkUser tkUser) {
        this.tkUser = tkUser;
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
    public Integer getKpiYear() {
        return this.kpiYear;
    }
    
    public void setKpiYear(Integer kpiYear) {
        this.kpiYear = kpiYear;
    }
    public String getKpiItem() {
        return this.kpiItem;
    }
    
    public void setKpiItem(String kpiItem) {
        this.kpiItem = kpiItem;
    }
    public String getMucTieu() {
        return this.mucTieu;
    }
    
    public void setMucTieu(String mucTieu) {
        this.mucTieu = mucTieu;
    }
    public Double getTrongSo() {
        return this.trongSo;
    }
    
    public void setTrongSo(Double trongSo) {
        this.trongSo = trongSo;
    }
    public Double getTyLeThucHien() {
        return this.tyLeThucHien;
    }
    
    public void setTyLeThucHien(Double tyLeThucHien) {
        this.tyLeThucHien = tyLeThucHien;
    }
    public Double getKetQua() {
        return this.ketQua;
    }
    
    public void setKetQua(Double ketQua) {
        this.ketQua = ketQua;
    }
    public String getStatus() {
        return this.status;
    }
    
    public void setStatus(String status) {
        this.status = status;
    }
    public Set getTkKpiItemDetails() {
        return this.tkKpiItemDetails;
    }
    
    public void setTkKpiItemDetails(Set tkKpiItemDetails) {
        this.tkKpiItemDetails = tkKpiItemDetails;
    }

    public int getRefId() {
        return refId;
    }

    public void setRefId(int refId) {
        this.refId = refId;
    }

    



}


