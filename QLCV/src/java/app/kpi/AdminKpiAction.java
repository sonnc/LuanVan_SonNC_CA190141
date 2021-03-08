/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.kpi;

import app.qlcv.entities.TkUser;
import app.qlcv.utils.SystemMethod;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;
import app.qlcv.customs.*;
import app.qlcv.entities.*;


/**
 *
 * @author sonng
 */
public class AdminKpiAction extends ActionSupport implements SessionAware, ServletRequestAware {

    private HttpServletRequest request;
    private Map<String, Object> session;
    private AdminKpiController adminController;
    private List<TkUser> lstUsers = new ArrayList<>();
    private TkUser tkUser;
    private List<TkDepartment> lstTkDepartment = new ArrayList<>();
    private List<TkRatingDateSetup> lstTkRatingDateSetup = new ArrayList<>();
    private TkDepartment tkDepartment;
    private File myFile;
    private List<TkKpiTypeSetting> lstKpiTypeSettings;
    private List<TkKpiItemSetting> lsKpiItemSettings;
    private TkRatingDateSetup tkRatingDateSetup = new TkRatingDateSetup();

    public AdminKpiAction() {
        adminController = new AdminKpiController();
    }


    public String adminKpi() {
        String method = request.getParameter("method");
        Properties prop = (Properties) session.get("properties");
        if ("viewKpi".equals(method)) {
            lstKpiTypeSettings = adminController.getAllKpiTypeSetting();
            return "VIEW_ALL_KPI_SUCCESS";
        } else if ("viewKpiDetail".equals(method)) {
            int kpiId = Integer.parseInt(request.getParameter("kpiId"));
            lsKpiItemSettings = adminController.viewKpiDetail(kpiId);
            return "VIEW_KPI_DETAIL_SUCCESS";
        } else if ("prepareCreateKpi".equals(method)) {
            lstTkDepartment = adminController.getAllDepartments();
            return "PREPARE_CREATE_KPI_SUCCESS";
        } else if ("prepareCreateTimeRating".equals(method)) {
            lstTkRatingDateSetup = adminController.getAllKpiRatingDate();
            return "PREPARE_CREATE_KPI_RATING_DATE";
        } else if ("createTimeRating".equals(method)) {
            TkUser tku = (TkUser) session.get("user");
            SystemMethod sysm = new SystemMethod();
            java.sql.Date sysDate = sysm.getSysDateToSqlDate();
            
            tkRatingDateSetup.setCreateBy(tku.getLoginId());
            tkRatingDateSetup.setLastUpdateBy(tku.getLoginId());
            tkRatingDateSetup.setCreateDate(sysDate);
            tkRatingDateSetup.setLastUpdateDate(sysDate);
            tkRatingDateSetup.setStatus("ACTIVE");
            adminController.createKpiRatingDate(tkRatingDateSetup);
            
            lstTkRatingDateSetup = adminController.getAllKpiRatingDate();
            return "CREATE_KPI_RATING_DATE";
        } else if ("createKpi".equals(method)) {
            TkUser tku = (TkUser) session.get("user");
            SystemMethod sysm = new SystemMethod();
            java.sql.Date sysDate = sysm.getSysDateToSqlDate();

            int departementId = Integer.parseInt(request.getParameter("kpiTypeDepartement"));
            int countItemInput = Integer.parseInt(request.getParameter("countItemInput"));

            TkKpiTypeSetting kpiTypeSetting = new TkKpiTypeSetting();
            TkDepartment department = adminController.getDepartmentsByID(departementId);

            kpiTypeSetting.setCreateBy(tku.getLoginId());
            kpiTypeSetting.setLastUpdateBy(tku.getLoginId());
            kpiTypeSetting.setCreateDate(sysDate);
            kpiTypeSetting.setLastUpdateDate(sysDate);
            DateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
            Date date = new Date();
            String kpiCode = department.getDepartmentCode() + "." + dateFormat.format(date);
            kpiTypeSetting.setKpiName(kpiCode);
            kpiTypeSetting.setKpiDesc(request.getParameter("kpiTypekpiDesc"));
            kpiTypeSetting.setTrongSoKpiPhongban(Double.parseDouble(request.getParameter("kpiTypeTrongSoKpiPhongban")));
            kpiTypeSetting.setTrongSoKpiThuongxuyen(Double.parseDouble(request.getParameter("kpiTypeTrongSoKpiThuongxuyen")));
            kpiTypeSetting.setTrongSoKpiDotxuat(Double.parseDouble(request.getParameter("kpiTypeTrongSoKpiDotxuat")));
            kpiTypeSetting.setStatus("ACTIVE");
            kpiTypeSetting.setApDung(request.getParameter("kpiTypeApDung"));
            kpiTypeSetting.setTkDepartment(department);

            List<TkKpiItemSetting> lstKpiItemSettings = new ArrayList<>();
            for (int i = 0; i < countItemInput; i++) {
                TkKpiItemSetting itemSetting = new TkKpiItemSetting();
                itemSetting.setCreateBy(tku.getLoginId());
                itemSetting.setLastUpdateBy(tku.getLoginId());
                itemSetting.setCreateDate(sysDate);
                itemSetting.setLastUpdateDate(sysDate);
                itemSetting.setStatus("ACTIVE");
                for (Map.Entry<String, String[]> entry : request.getParameterMap().entrySet()) {
                    if (entry.getKey().toString().contains("lstKpiDetail[" + i + "]")) {
                        if (entry.getKey().toString().contains("lstKpiDetail[" + i + "][tkKpiDetailKpiName]")) {
                            itemSetting.setKpiName(entry.getValue()[0].toString());
                        }
                        if (entry.getKey().toString().contains("lstKpiDetail[" + i + "][tkKpiDetailKpiDesc]")) {
                            itemSetting.setKpiDesc(entry.getValue()[0].toString());
                        }
                        if (entry.getKey().toString().contains("lstKpiDetail[" + i + "][tkKpiDetailKpiType]")) {
                            itemSetting.setType(entry.getValue()[0].toString());
                        }
                        if (entry.getKey().toString().contains("lstKpiDetail[" + i + "][tkKpiDetailKpiIndex]")) {
                            itemSetting.setItem(Double.parseDouble(entry.getValue()[0]));
                        }
                        if (entry.getKey().toString().contains("lstKpiDetail[" + i + "][tkKpiDetailKpiUnit]")) {
                            itemSetting.setDonViTinh(entry.getValue()[0].toString());
                        }
                        if (entry.getKey().toString().contains("lstKpiDetail[" + i + "][tkKpiDetailKpiWeight]")) {
                            itemSetting.setTrongSo(Double.parseDouble(entry.getValue()[0].toString()));
                        }
                        if (entry.getKey().toString().contains("lstKpiDetail[" + i + "][tkKpiDetailKpiFrequene]")) {
                            itemSetting.setTanSuatDanhGia(entry.getValue()[0].toString());
                        }
                    }
                }
                lstKpiItemSettings.add(itemSetting);
            }
            if (!adminController.createGroupKPI(kpiTypeSetting, lstKpiItemSettings)) {
                addActionMessage(prop.getProperty("tk.tko.label.admin.kpi.mess11"));
                return "VIEW_ALL_KPI_SUCCESS";
            }
            lstKpiTypeSettings = adminController.getAllKpiTypeSetting();
            addActionMessage(prop.getProperty("tk.tko.label.admin.kpi.mess10"));
            return "VIEW_ALL_KPI_SUCCESS";
        } else if ("deleteKpi".equals(method)) {
            int kpiId = Integer.parseInt(request.getParameter("kpiId"));
            TkKpiTypeSetting kpiTypeSetting = adminController.getKpiTypeSettingById(kpiId);
            kpiTypeSetting.setStatus("DELETE");
            if (adminController.updateKpiTypeSeting(kpiTypeSetting)) {
                lstKpiTypeSettings = adminController.getAllKpiTypeSetting();
                addActionMessage(prop.getProperty("tk.tko.label.admin.kpi.mess19"));
                return "VIEW_ALL_KPI_SUCCESS";
            }
        }

        return SUCCESS;

    }


    

    public File getMyFile() {
        return myFile;
    }

    public void setMyFile(File myFile) {
        this.myFile = myFile;
    }

   

    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }

   

    @Override
    public void setSession(Map<String, Object> map) {
        this.session = map;
    }

    @Override
    public void setServletRequest(HttpServletRequest hsr) {
        this.request = hsr;
    }

    public List<TkUser> getLstUsers() {
        return lstUsers;
    }

    public void setLstUsers(List<TkUser> lstUsers) {
        this.lstUsers = lstUsers;
    }

    public TkUser getTkUser() {
        return tkUser;
    }

    public void setTkUser(TkUser tkUser) {
        this.tkUser = tkUser;
    }

    public List<TkDepartment> getLstTkDepartment() {
        return lstTkDepartment;
    }

    public void setLstTkDepartment(List<TkDepartment> lstTkDepartment) {
        this.lstTkDepartment = lstTkDepartment;
    }

    public List<TkRatingDateSetup> getLstTkRatingDateSetup() {
        return lstTkRatingDateSetup;
    }

    public void setLstTkRatingDateSetup(List<TkRatingDateSetup> lstTkRatingDateSetup) {
        this.lstTkRatingDateSetup = lstTkRatingDateSetup;
    }

    public TkDepartment getTkDepartment() {
        return tkDepartment;
    }

    public void setTkDepartment(TkDepartment tkDepartment) {
        this.tkDepartment = tkDepartment;
    }

    public List<TkKpiTypeSetting> getLstKpiTypeSettings() {
        return lstKpiTypeSettings;
    }

    public void setLstKpiTypeSettings(List<TkKpiTypeSetting> lstKpiTypeSettings) {
        this.lstKpiTypeSettings = lstKpiTypeSettings;
    }

    public List<TkKpiItemSetting> getLsKpiItemSettings() {
        return lsKpiItemSettings;
    }

    public void setLsKpiItemSettings(List<TkKpiItemSetting> lsKpiItemSettings) {
        this.lsKpiItemSettings = lsKpiItemSettings;
    }

    public TkRatingDateSetup getTkRatingDateSetup() {
        return tkRatingDateSetup;
    }

    public void setTkRatingDateSetup(TkRatingDateSetup tkRatingDateSetup) {
        this.tkRatingDateSetup = tkRatingDateSetup;
    }

    
    
}
