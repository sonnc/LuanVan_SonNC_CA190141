/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.qlcv.user;

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

    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }
    
    public UserAction() {
        userController = new UserController();
        codeValueController = new CodeValueController();
    }
    
    @Override
    public void setSession(Map<String, Object> map) {
        this.session = map;
    }

    @Override
    public void setServletRequest(HttpServletRequest hsr) {
        this.request = hsr;
    }
    
    public String UserLogin(){
        String userName = request.getParameter("userName");
        String userPassword = request.getParameter("userPassword");
        ReadPropertiesFile prop = new ReadPropertiesFile();
        List<TkUser> lstUser = new ArrayList();
        lstUser = userController.userLogin(userName, userPassword);
        if (lstUser!=null && lstUser.size()==1) {
            TkUser user = lstUser.get(0);
            SysCodeValue syscode = codeValueController.getCodeValueById(user.getRoleId());
            Properties properties = prop.ReadFile(user.getLangPreference());
            if ("ACTIVE".equals(user.getStatus())) {
                session.put("properties", properties);
                session.put("user", user);
                session.put("role", syscode);
                return SUCCESS;
            } else {
                addActionMessage(properties.getProperty("cdsac"));
                return INPUT;
            }
        }else{
            addActionMessage("Tài khoản hoặc mật khẩu không đúng.");
            return INPUT;
        }
    }
    
    public String UserLogout(){
        session.clear();
        return SUCCESS;
    }
    
    
    
}
