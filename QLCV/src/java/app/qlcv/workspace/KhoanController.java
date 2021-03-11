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
public class KhoanController {

    Session session;
    Transaction transaction;

    public KhoanController() {
        session = HibernateUtil.getSessionFactory().openSession();
    }

    public List<LuongKhoan> getLuongKhoanByUserId(int userId) {
        List<LuongKhoan> luongkhoan = new ArrayList<>();
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            Query q = session.createQuery("FROM LuongKhoan WHERE userId=:userId");
            q.setParameter("userId", userId);
            luongkhoan = q.list();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return luongkhoan;
    }

    public void saveKhoan(List<LuongKhoan> luongKhoans) {
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            for (int i = 0; i < luongKhoans.size(); i++) {
                LuongKhoan get = luongKhoans.get(i);
                session.save(get);
            }
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }

    }
}
