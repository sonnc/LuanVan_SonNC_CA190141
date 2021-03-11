/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.qlcv.workspace;

import app.qlcv.customs.LuongKhoanCustom;
import app.qlcv.customs.LuongKhoanTotal;
import app.qlcv.customs.TkWsTaskCustom;
import app.qlcv.entities.LuongKhoan;
import app.qlcv.entities.TkUser;
import app.qlcv.entities.TkWorkspace;
import app.qlcv.entities.TkWsTask;
import app.qlcv.utils.SystemMethod;
import com.opensymphony.xwork2.ActionSupport;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author sonng
 */
public class KhoanAction extends ActionSupport implements SessionAware, ServletRequestAware {

    private HttpServletRequest request;
    private Map<String, Object> session;
    private String errorCode;
    private SystemMethod systemMethod;
    private TaskListController taskListController;
    private TaskController tasktController;
    private WorkspaceController workspaceController;
    private KhoanController luongKhoanController;
    private TkWsTask task;
    private List<TkWsTask> lstTask = new ArrayList<>();
    private List<TkWsTaskCustom> lstTaskCustoms = new ArrayList<>();
    private TkWorkspace workspace;
    private List<LuongKhoanCustom> lstLuongKhoans = new ArrayList<>();
    private LuongKhoanTotal luongKhoanTotal;
    private LuongKhoanTotal luongKhoanTotal2;

    public KhoanAction() {
        taskListController = new TaskListController();
        tasktController = new TaskController();
        systemMethod = new SystemMethod();
        workspaceController = new WorkspaceController();
        luongKhoanController = new KhoanController();
    }
///

    public String getThemisByUserId() {
        TkUser user = (TkUser) session.get("user");

        //lay du lieu khoan
        List<LuongKhoan> lstLuongKhoan = new ArrayList<>();
        lstLuongKhoan = luongKhoanController.getLuongKhoanByUserId(user.getId());

        for (int i = 0; i < lstLuongKhoan.size(); i++) {
            LuongKhoan get = lstLuongKhoan.get(i);
            LuongKhoanCustom custom = new LuongKhoanCustom();
            custom.setCreateBy(get.getCreateBy());
            custom.setCreateDate(get.getCreateDate());
            custom.setId(get.getId());
            custom.setLastUpdateBy(get.getLastUpdateBy());
            custom.setLastUpdateDate(get.getLastUpdateDate());
            custom.setLoaiKhoan(get.getLoaiKhoan());
            custom.setLuongKhoan(get.getLuongKhoan());
            TkUser u = taskListController.getUserById(get.getPheDuyet());
            custom.setPheDuyet(u);
            custom.setThang(get.getThang());
            custom.setUserId(user);
            lstLuongKhoans.add(custom);
        }

        BigDecimal totalKhoanCV = BigDecimal.ZERO;
        BigDecimal totalKhoanMilestone = BigDecimal.ZERO;
        BigDecimal totalKhoanHQDA = BigDecimal.ZERO;

        LuongKhoanTotal lk1 = new LuongKhoanTotal();

        for (int i = 0; i < lstLuongKhoans.size(); i++) {
            if ("CV".equals(lstLuongKhoans.get(i).getLoaiKhoan())) {
                totalKhoanCV = totalKhoanCV.add(lstLuongKhoans.get(i).getLuongKhoan());
            } else if ("MT".equals(lstLuongKhoans.get(i).getLoaiKhoan())) {
                totalKhoanMilestone = totalKhoanMilestone.add(lstLuongKhoans.get(i).getLuongKhoan());
            } else {
                totalKhoanHQDA = totalKhoanHQDA.add(lstLuongKhoans.get(i).getLuongKhoan());
            }
        }
        lk1.setTotalKhoanCV(totalKhoanCV.setScale(2, BigDecimal.ROUND_UP));
        lk1.setTotalKhoanMilestone(totalKhoanMilestone.setScale(2, BigDecimal.ROUND_UP));
        lk1.setTotalKhoanHQDA(totalKhoanHQDA.setScale(2, BigDecimal.ROUND_UP));
        lk1.setTotalKhoan(totalKhoanCV.add(totalKhoanMilestone).add(totalKhoanHQDA).setScale(2, BigDecimal.ROUND_UP));

        luongKhoanTotal = lk1;

        List<TkWsTask> lstTasks = new ArrayList<>();
        lstTasks = tasktController.GetAllTaskByUserId(user.getId(), "all");

        BigDecimal totalKhoanCVInMonth = BigDecimal.ZERO;
        BigDecimal totalKhoanMilstoneInMonth = BigDecimal.ZERO;
        BigDecimal totalKhoanHQDAInMonth = BigDecimal.ZERO;

        int taskclose = 0;
        int taskduedate = 0;
        Date date = new Date();
        for (int i = 0; i < lstTasks.size(); i++) {
            // neu dong task dung han thi moi duoc nhan tien khoan cv
            if ("CLOSE".equals(lstTasks.get(i).getStatus()) && lstTasks.get(i).getDateClose() != null
                    && lstTasks.get(i).getDateClose().before(lstTasks.get(i).getDueDate())
                    && lstTasks.get(i).getDateClose().getMonth() == date.getMonth()) {
                totalKhoanCVInMonth = totalKhoanCVInMonth.add(new BigDecimal(lstTasks.get(i).getNganSach()));
                taskclose = taskclose++;
                System.out.println("++++++++++++++++++++++++++++++" + totalKhoanCVInMonth);
            }
            if ("COMPLETE".equals(lstTasks.get(i).getStatus()) && lstTasks.get(i).getDateClose() != null
                    && lstTasks.get(i).getDateClose().before(date)
                    && lstTasks.get(i).getDateClose().getMonth() == date.getMonth()) {
                taskclose = taskclose++;
            }
            if ("OPEN".equals(lstTasks.get(i).getStatus())
                    || "INPROCESS".equals(lstTasks.get(i).getStatus())) {
                taskduedate = taskduedate++;
            }
        }
        if (taskclose > taskduedate) {
            totalKhoanHQDAInMonth = user.getLuongCoSo().multiply(new BigDecimal(1.2)).multiply(new BigDecimal(0.2));
        } else if (taskclose < taskduedate) {
            totalKhoanHQDAInMonth = user.getLuongCoSo().multiply(new BigDecimal(0.8)).multiply(new BigDecimal(0.2));
        } else {
            totalKhoanHQDAInMonth = user.getLuongCoSo().multiply(new BigDecimal(1)).multiply(new BigDecimal(0.2));
        }

        LuongKhoanTotal lk2 = new LuongKhoanTotal();

        lk2.setTotalKhoanCV(totalKhoanCVInMonth.setScale(2, BigDecimal.ROUND_UP));
        lk2.setTotalKhoanMilestone(totalKhoanMilstoneInMonth.setScale(2, BigDecimal.ROUND_UP));
        lk2.setTotalKhoanHQDA(totalKhoanHQDAInMonth.multiply(new BigDecimal(0.8)).setScale(2, BigDecimal.ROUND_UP));
        lk2.setTotalKhoanHQDA2(totalKhoanHQDAInMonth.multiply(new BigDecimal(1.2)).setScale(2, BigDecimal.ROUND_UP));
        lk2.setTotalKhoan(totalKhoanCVInMonth.add(totalKhoanMilstoneInMonth).add(totalKhoanHQDAInMonth.multiply(new BigDecimal(0.8))).setScale(2, BigDecimal.ROUND_UP));
        lk2.setTotalKhoan2(totalKhoanCVInMonth.add(totalKhoanMilstoneInMonth).add(totalKhoanHQDAInMonth.multiply(new BigDecimal(1.2))).setScale(2, BigDecimal.ROUND_UP));

        luongKhoanTotal2 = lk2;

        return SUCCESS;
    }

    public String tinhKhoanPhongBan() {
        List<TkUser> lstUsers = new ArrayList<>();
        TkUser userLogin = (TkUser) session.get("user");
        float heSoDuAn = Float.parseFloat(request.getParameter("heSoDuAn"));
        lstUsers = workspaceController.GetAllUserInDepartement(userLogin.getTkDepartment().getId());

        List<LuongKhoan> lstCreateLuongKhoans = new ArrayList<>();
        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("MM");
        String strDate = formatter.format(date);
        for (int k = 0; k < lstUsers.size(); k++) {
            TkUser userTinhKhoan = new TkUser();
            userTinhKhoan = lstUsers.get(k);
            List<TkWsTask> lstTasks = new ArrayList<>();
            lstTasks = tasktController.GetAllTaskByUserId(userTinhKhoan.getId(), "all");

            BigDecimal totalKhoanCVInMonth = BigDecimal.ZERO;
            BigDecimal totalKhoanMilstoneInMonth = BigDecimal.ZERO;
            BigDecimal totalKhoanHQDAInMonth = BigDecimal.ZERO;

            int taskclose = 0;
            int taskduedate = 0;

            for (int i = 0; i < lstTasks.size(); i++) {
                // neu dong task dung han thi moi duoc nhan tien khoan cv
                if ("CLOSE".equals(lstTasks.get(i).getStatus()) && lstTasks.get(i).getDateClose() != null
                        && lstTasks.get(i).getDateClose().before(lstTasks.get(i).getDueDate())
                        && lstTasks.get(i).getDateClose().getMonth() == date.getMonth()) {
                    totalKhoanCVInMonth = totalKhoanCVInMonth.add(new BigDecimal(lstTasks.get(i).getNganSach()));
                    taskclose = taskclose++;
                    System.out.println("++++++++++++++++++++++++++++++" + totalKhoanCVInMonth);
                }
                if ("COMPLETE".equals(lstTasks.get(i).getStatus()) && lstTasks.get(i).getDateClose() != null
                        && lstTasks.get(i).getDateClose().before(date)
                        && lstTasks.get(i).getDateClose().getMonth() == date.getMonth()) {
                    taskclose = taskclose++;
                }
                if ("OPEN".equals(lstTasks.get(i).getStatus())
                        || "INPROCESS".equals(lstTasks.get(i).getStatus())) {
                    taskduedate = taskduedate++;
                }
            }
            if (taskclose > taskduedate) {
                totalKhoanHQDAInMonth = userTinhKhoan.getLuongCoSo().multiply(new BigDecimal(1.2)).multiply(new BigDecimal(0.2));
            } else if (taskclose < taskduedate) {
                totalKhoanHQDAInMonth = userTinhKhoan.getLuongCoSo().multiply(new BigDecimal(0.8)).multiply(new BigDecimal(0.2));
            } else {
                totalKhoanHQDAInMonth = userTinhKhoan.getLuongCoSo().multiply(new BigDecimal(1)).multiply(new BigDecimal(0.2));
            }

            LuongKhoanTotal lk2 = new LuongKhoanTotal();

            lk2.setTotalKhoanCV(totalKhoanCVInMonth.setScale(2, BigDecimal.ROUND_UP));
            lk2.setTotalKhoanMilestone(totalKhoanMilstoneInMonth.setScale(2, BigDecimal.ROUND_UP));
            lk2.setTotalKhoanHQDA(totalKhoanHQDAInMonth.multiply(new BigDecimal(heSoDuAn)).setScale(2, BigDecimal.ROUND_UP));
            lk2.setTotalKhoan(totalKhoanCVInMonth.add(totalKhoanMilstoneInMonth).add(totalKhoanHQDAInMonth.multiply(new BigDecimal(heSoDuAn))).setScale(2, BigDecimal.ROUND_UP));

            for (int i = 0; i < 3; i++) {
                LuongKhoan khoan = new LuongKhoan();
                khoan.setCreateBy(userLogin.getLoginId());
                khoan.setCreateDate(systemMethod.getSysDateToSqlDate());
                khoan.setLastUpdateBy(userLogin.getLoginId());
                khoan.setLastUpdateDate(systemMethod.getSysDateToSqlDate());
                khoan.setLoaiKhoan(i == 0 ? "CV" : i == 1 ? "MT" : "HQDA");
                khoan.setLuongKhoan(i == 0 ? lk2.getTotalKhoanCV() : i == 1 ? lk2.getTotalKhoanMilestone() : lk2.getTotalKhoanHQDA());
                khoan.setPheDuyet(userLogin.getId());
                khoan.setThang(Integer.parseInt(strDate));
                khoan.setUserId(userTinhKhoan.getId());
                lstCreateLuongKhoans.add(khoan);
            }
        }

        luongKhoanController.saveKhoan(lstCreateLuongKhoans);

        for (int k = 0; k < lstUsers.size(); k++) {
            TkUser userTinhKhoan = new TkUser();
            userTinhKhoan = lstUsers.get(k);
            List<LuongKhoan> lstLuongKhoan = new ArrayList<>();
            lstLuongKhoan = luongKhoanController.getLuongKhoanByUserId(userTinhKhoan.getId());

            for (int i = 0; i < lstLuongKhoan.size(); i++) {
                LuongKhoan get = lstLuongKhoan.get(i);
                LuongKhoanCustom custom = new LuongKhoanCustom();
                custom.setCreateBy(get.getCreateBy());
                custom.setCreateDate(get.getCreateDate());
                custom.setId(get.getId());
                custom.setLastUpdateBy(get.getLastUpdateBy());
                custom.setLastUpdateDate(get.getLastUpdateDate());
                custom.setLoaiKhoan(get.getLoaiKhoan());
                custom.setLuongKhoan(get.getLuongKhoan());
                TkUser u = taskListController.getUserById(get.getPheDuyet());
                custom.setPheDuyet(u);
                custom.setThang(get.getThang());
                custom.setUserId(userTinhKhoan);
                lstLuongKhoans.add(custom);
            }
        }

        return SUCCESS;
    }

    public String prepareCreateKhoan() {
        List<TkUser> lstUsers = new ArrayList<>();
        TkUser userLogin = (TkUser) session.get("user");
        lstUsers = workspaceController.GetAllUserInDepartement(userLogin.getTkDepartment().getId());
        for (int k = 0; k < lstUsers.size(); k++) {
            TkUser userTinhKhoan = new TkUser();
            userTinhKhoan = lstUsers.get(k);
            List<LuongKhoan> lstLuongKhoan = new ArrayList<>();
            lstLuongKhoan = luongKhoanController.getLuongKhoanByUserId(userTinhKhoan.getId());
            for (int i = 0; i < lstLuongKhoan.size(); i++) {
                LuongKhoan get = lstLuongKhoan.get(i);
                LuongKhoanCustom custom = new LuongKhoanCustom();
                custom.setCreateBy(get.getCreateBy());
                custom.setCreateDate(get.getCreateDate());
                custom.setId(get.getId());
                custom.setLastUpdateBy(get.getLastUpdateBy());
                custom.setLastUpdateDate(get.getLastUpdateDate());
                custom.setLoaiKhoan(get.getLoaiKhoan());
                custom.setLuongKhoan(get.getLuongKhoan());
                TkUser u = taskListController.getUserById(get.getPheDuyet());
                custom.setPheDuyet(u);
                custom.setThang(get.getThang());
                custom.setUserId(userTinhKhoan);
                lstLuongKhoans.add(custom);
            }
        }
        return SUCCESS;
    }

    @Override
    public void setSession(Map<String, Object> map
    ) {
        this.session = map;
    }

    @Override
    public void setServletRequest(HttpServletRequest hsr
    ) {
        this.request = hsr;
    }

    public TkWsTask getTask() {
        return task;
    }

    public void setTask(TkWsTask task) {
        this.task = task;
    }

    public String getErrorCode() {
        return errorCode;
    }

    public void setErrorCode(String errorCode) {
        this.errorCode = errorCode;
    }

    public List<TkWsTask> getLstTask() {
        return lstTask;
    }

    public void setLstTask(List<TkWsTask> lstTask) {
        this.lstTask = lstTask;
    }

    public List<TkWsTaskCustom> getLstTaskCustoms() {
        return lstTaskCustoms;
    }

    public void setLstTaskCustoms(List<TkWsTaskCustom> lstTaskCustoms) {
        this.lstTaskCustoms = lstTaskCustoms;
    }

    public TkWorkspace getWorkspace() {
        return workspace;
    }

    public void setWorkspace(TkWorkspace workspace) {
        this.workspace = workspace;
    }

    public List<LuongKhoanCustom> getLstLuongKhoans() {
        return lstLuongKhoans;
    }

    public void setLstLuongKhoans(List<LuongKhoanCustom> lstLuongKhoans) {
        this.lstLuongKhoans = lstLuongKhoans;
    }

    public LuongKhoanTotal getLuongKhoanTotal() {
        return luongKhoanTotal;
    }

    public void setLuongKhoanTotal(LuongKhoanTotal luongKhoanTotal) {
        this.luongKhoanTotal = luongKhoanTotal;
    }

    public LuongKhoanTotal getLuongKhoanTotal2() {
        return luongKhoanTotal2;
    }

    public void setLuongKhoanTotal2(LuongKhoanTotal luongKhoanTotal2) {
        this.luongKhoanTotal2 = luongKhoanTotal2;
    }

}
