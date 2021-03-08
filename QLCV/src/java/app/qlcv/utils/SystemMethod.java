/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.qlcv.utils;

import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author sonng
 */
public class SystemMethod extends ActionSupport implements SessionAware, ServletRequestAware {

    private HttpServletRequest request;
    private Map<String, Object> session;

    public Date formatStringDateToSqlDate(String date) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date dateString = null;
        try {
            dateString = sdf.parse(date);
        } catch (ParseException ex) {
        }
        java.sql.Date sqlDate = new java.sql.Date(dateString.getTime());
        return sqlDate;
    }

    public Date getSysDateToSqlDate() {
        java.util.Date dateString = new java.util.Date();
        java.sql.Date sqlDate = new java.sql.Date(dateString.getTime());
        return sqlDate;
    }

    public String saveFiles(File myFile, String pathFile, String myFileFileName, HttpServletRequest re) {
        String path = null;
        String link = null;
        try {
            System.out.println(re.getSession().getServletContext().getRealPath("/"));
            path = re.getSession().getServletContext().getRealPath("/").concat(pathFile);
            File fileToCreate = new File(path, myFileFileName);
            FileUtils.copyFile(myFile, fileToCreate);
            link = pathFile + myFileFileName;
            System.out.println(path);
        } catch (Exception e) {
            return null;
        }
        return link;
    }
    
    public String dateToString(){
        java.util.Date date = new java.util.Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddhhmmsszzzz");
        String strDate = formatter.format(date);
        return strDate;
    }
    
    public Long dateToMiliSecond(){
        java.util.Date date = new java.util.Date();
        long timeMilli = date.getTime();
        return timeMilli;
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

}