/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.qlcv.customs;

import app.qlcv.customs.MemberInfoWorkspaceSummary;
import app.qlcv.customs.TeamAndMember;
import app.qlcv.customs.WorkspaceFunction;
import app.qlcv.customs.WorkspaceDashboard;
import app.qlcv.customs.WorkspaceSummary;
import app.qlcv.entities.TkUser;
import app.qlcv.entities.TkWorkspace;
import app.qlcv.entities.TkWsFolder;
import app.qlcv.entities.TkWsPeople;
import app.qlcv.entities.TkWsPeopleTeams;
import app.qlcv.entities.TkWsTask;
import app.qlcv.entities.TkWsTasklist;
import app.qlcv.entities.TkWsTeams;
import app.qlcv.utils.SystemMethod;
import app.qlcv.workspace.WorkspaceController;
import com.opensymphony.xwork2.ActionSupport;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author sonng
 */
public class WorkspaceFunction extends ActionSupport implements SessionAware, ServletRequestAware {

    private HttpServletRequest request;
    private Map<String, Object> session;
    private WorkspaceController workspaceController ;

    public WorkspaceFunction(){
        workspaceController = new WorkspaceController();
    }
    
    public WorkspaceSummary getWorkspaceSummary(int id,HttpServletRequest re) {

        WorkspaceSummary workspaceSummary = new WorkspaceSummary();

        List<TkWsTeams> lstTeams = new ArrayList<>();
        List<TkWsPeople> lstMember = new ArrayList<>();
        List<TkWsPeopleTeams> lstTeamsAndMember = new ArrayList<>();
        List<TkWsTasklist> lstTasklists = new ArrayList<>();
        List<TkWsTask> lstTasks = new ArrayList<>();
        List<TkWsFolder> lstFolders = new ArrayList<>();

        lstTeams = workspaceController.GetAllTeamsByWorkspaceId(id);
        lstMember = workspaceController.GetAllMemberByWorkspaceId(id);
        for (int i = 0; i < lstTeams.size(); i++) {
            List<TkWsPeopleTeams> lst = new ArrayList<>();
            lst = workspaceController.GetAllMemberAndTeamsByTeamsId(lstTeams.get(i).getId());
            lstTeamsAndMember.addAll(lst);
        }
        lstTasklists = workspaceController.GetAllTaskListByWorkspaceId(id);
        for (int i = 0; i < lstTasklists.size(); i++) {
            List<TkWsTask> lst = new ArrayList<>();
            lst = workspaceController.GetAllTaskTaskListId(lstTasklists.get(i).getId());
            lstTasks.addAll(lst);
        }
        lstFolders = workspaceController.GetAllFolderByWorkspaceId(id);

        int countFolder = 0;
        for (int i = 0; i < lstFolders.size(); i++) {
            if (lstFolders.get(i).getIsMilestones() != null
                    && "Y".equals(lstFolders.get(i).getIsMilestones())) {
                countFolder++;
            }
        }

        workspaceSummary.setTotalTeams(lstTeams.size());
        workspaceSummary.setTotalMember(lstMember.size());
        workspaceSummary.setTotalTask(lstTasks.size());
        workspaceSummary.setTotalTaskList(lstTasklists.size());
        workspaceSummary.setTotalMilestones(countFolder);
        return workspaceSummary;
    }

    public String GetCharTask(int workspaceId) {
        List<TkWsTask> lstTasks = new ArrayList<>();
        List<TkWsTasklist> lstTasklists = new ArrayList<>();
        lstTasklists = workspaceController.GetAllTaskListByWorkspaceId(workspaceId);
        for (int i = 0; i < lstTasklists.size(); i++) {
            List<TkWsTask> lst = new ArrayList<>();
            lst = workspaceController.GetAllTaskTaskListId(lstTasklists.get(i).getId());
            lstTasks.addAll(lst);
        }
        // bieu do 
        String bieudoTask = null;
        int countOpen = 0;
        int countInprocess = 0;
        int countClose = 0;
        int countCancel = 0;

        for (int i = 0; i < lstTasks.size(); i++) {
            TkWsTask get = lstTasks.get(i);
            if (get.getStatus().equals("OPEN")) {
                countOpen = countOpen++;
            }
            if (get.getStatus().equals("INPROCESS")) {
                countInprocess = countInprocess++;
            }
            if (get.getStatus().equals("CLOSE")) {
                countClose = countClose++;
            }
            if (get.getStatus().equals("CANCEL")) {
                countCancel = countCancel++;
            }
        }
        if (lstTasks.size() > 0) {
            int totalTask = lstTasks.size();
            String countOpenString;
            String countInprocessString;
            String countCloseString;
            String countCancelString;
            DecimalFormat df = new DecimalFormat("#.#");
            countOpenString = df.format(countOpen / totalTask);
            countInprocessString = df.format(countInprocess / totalTask);
            countCloseString = df.format(countClose / totalTask);
            countCancelString = df.format(countCancel / totalTask);
            bieudoTask = "{value: #value1#, name: 'Open'},{value: #value2#, name: 'Closed'},"
                    + "{value: #value3#, name: 'In-Process'},{value: #value4#, name: 'Cancel'}";
            bieudoTask.replaceAll("#value1#", countOpenString);
            bieudoTask.replaceAll("#value2#", countInprocessString);
            bieudoTask.replaceAll("#value3#", countCloseString);
            bieudoTask.replaceAll("#value4#", countCancelString);
        } else {
            bieudoTask = "{value: 0, name: 'Open'},{value: 0, name: 'Closed'},"
                    + "{value: 0, name: 'In-Process'},{value: 0, name: 'Cancel'}";
        }
        return bieudoTask;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        this.session = map;
    }

    @Override
    public void setServletRequest(HttpServletRequest hsr) {
        this.request = hsr;
    }

    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }

    public WorkspaceController getWorkspaceController() {
        return workspaceController;
    }

    public void setWorkspaceController(WorkspaceController workspaceController) {
        this.workspaceController = workspaceController;
    }
    
}
