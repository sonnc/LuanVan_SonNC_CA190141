/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.qlcv.user;

import app.qlcv.customs.HomeCaculate;
import app.qlcv.customs.TkWsTaskCustom;
import app.qlcv.utils.ReadPropertiesFile;
import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;
import app.qlcv.entities.*;
import app.qlcv.sys.CodeValueController;
import app.qlcv.utils.SystemMethod;
import app.qlcv.workspace.TaskController;
import java.util.Properties;

/**
 *
 * @author sonng
 */
public class UserAction extends ActionSupport implements SessionAware, ServletRequestAware {

    private HttpServletRequest request;
    private Map<String, Object> session;
    private File myFile;
    private UserController userController;
    private CodeValueController codeValueController;
    private List<TkWsTaskCustom> lstTaskCustoms;
    private TaskController taskController;
    private SystemMethod systemMethod;

    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }

    public UserAction() {
        userController = new UserController();
        codeValueController = new CodeValueController();
        taskController = new TaskController();
        systemMethod = new SystemMethod();
    }

    @Override
    public void setSession(Map<String, Object> map) {
        this.session = map;
    }

    @Override
    public void setServletRequest(HttpServletRequest hsr) {
        this.request = hsr;
    }

    public String UserLogin() {
        String userName = request.getParameter("userName");
        String userPassword = request.getParameter("userPassword");
        ReadPropertiesFile prop = new ReadPropertiesFile();
        List<TkUser> lstUser = new ArrayList();
        lstUser = userController.userLogin(userName, userPassword);
        if (lstUser != null && lstUser.size() == 1) {
            TkUser user = lstUser.get(0);
            SysCodeValue syscode = codeValueController.getCodeValueById(user.getRoleId());
            Properties properties = prop.ReadFile(user.getLangPreference());
            if ("ACTIVE".equals(user.getStatus())) {
                session.put("properties", properties);
                session.put("user", user);
                session.put("role", syscode);
                getDataHome();
                return SUCCESS;
            } else {
                addActionMessage(properties.getProperty("cdsac"));
                return INPUT;
            }
        } else {
            addActionMessage("Tài khoản hoặc mật khẩu không đúng.");
            return INPUT;
        }
    }

    public void getDataHome() {
        TkUser user = (TkUser) session.get("user");
        HomeCaculate caculate = new HomeCaculate();
        String dataOld = caculate.getOldData(user.getId());
        String dataNew = caculate.getNewData(user.getId());
        List<String> dataSuccess = caculate.getSuccessTask(user.getId());
        String dataSuccess1 = dataSuccess.get(0).toString();
        String dataSuccess2 = dataSuccess.get(1).toString();
        List<String> dataTreHan = caculate.getDueDateTask(user.getId());
        String dataTreHan1 = dataTreHan.get(0).toString();
        String dataTreHan2 = dataTreHan.get(1).toString();
        lstTaskCustoms = new ArrayList<>();
        List<TkWsTask> lstTask = new ArrayList<>();
        lstTask = taskController.GetAllTaskByUserId(user.getId(), "OPEN");
        for (int i = 0; i < lstTask.size(); i++) {
            TkWsTask get = lstTask.get(i);
            TkWsTaskCustom taskCustom = new TkWsTaskCustom();
            taskCustom = systemMethod.mergeTaskWithUser(get);
            lstTaskCustoms.add(taskCustom);

        }

        session.put("dataOld", dataOld);
        session.put("dataNew", dataNew);
        session.put("dataSuccess1", dataSuccess1);
        session.put("dataSuccess2", dataSuccess2);
        session.put("dataTreHan1", dataTreHan1);
        session.put("dataTreHan2", dataTreHan2);

    }

    public String getDataHomeValue() {
        getDataHome();
        return SUCCESS;
    }

    public String UserLogout() {
        session.clear();
        return SUCCESS;
    }

    public List<TkWsTaskCustom> getLstTaskCustoms() {
        return lstTaskCustoms;
    }

    public void setLstTaskCustoms(List<TkWsTaskCustom> lstTaskCustoms) {
        this.lstTaskCustoms = lstTaskCustoms;
    }
    
    

}
