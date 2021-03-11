/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.qlcv.workspace;

import app.qlcv.customs.MemberInfoWorkspaceSummary;
import app.qlcv.customs.TeamAndMember;
import app.qlcv.customs.TkWsTaskListCustom;
import app.qlcv.entities.*;
import app.qlcv.utils.HibernateUtil;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author sonng
 */
public class TaskController {

    Session session;
    Transaction transaction;

    public TaskController() {
        session = HibernateUtil.getSessionFactory().openSession();
    }

    public String updateTask(TkWsTask task) {
        TkWorkspace tw = new TkWorkspace();
        String error = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            session.update(task);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            StringWriter errors = new StringWriter();
            e.printStackTrace(new PrintWriter(errors));
            error = errors.toString();
        } finally {
            session.close();
        }
        return error;

    }

    public List<TkWsTask> GetAllTaskByUserId(int userId, String status) {
        List<TkWsTask> lstTasks = new ArrayList<>();
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            String q = "FROM TkWsTask a where a.assigneeUserId=:userId ";
            if(!"all".equals(status)){
                q =q+"and status ='"+status.toUpperCase()+"'";
            }
            if("DELAY".equals(status)){
                q =q+" and a.status NOT IN ('CLOSE','CANCEL') and a.dueDate < sysdate()";
            }
            Query query = session.createQuery(q);
            query.setParameter("userId", userId);
            lstTasks = query.list();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return lstTasks;
    }

}
