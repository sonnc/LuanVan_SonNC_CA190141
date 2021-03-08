/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.kpi;

import app.qlcv.customs.*;
import app.qlcv.entities.*;
import app.qlcv.utils.HibernateUtil;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author sonng
 */
public class AdminKpiController {

    Session session;
    Transaction transaction;

    public AdminKpiController() {
        session = HibernateUtil.getSessionFactory().openSession();
    }
    
    
    public List<TkUser> getAllUser() {
        List<TkUser> lstLogin = new ArrayList<>();
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            Query query = session.createQuery("FROM TkUser ");
            lstLogin = query.list();
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return lstLogin;
    }
    
    public TkUser getUserById(int userId) {
        TkUser  tkUser = new TkUser();
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            tkUser = (TkUser) session.get(TkUser.class, userId);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return tkUser;
    }
    
    
    public boolean deleteUser(TkUser user) {
        boolean success = true;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            session.update(user);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            success = false;
            e.printStackTrace();
        } finally {
            session.close();
        }
        return success;
    }
    
    
    
    
    
    public List<TkDepartment> getAllDepartments() {
        List<TkDepartment> lstTkDepartment = new ArrayList<>();
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            Query query = session.createQuery("FROM TkDepartment ");
            lstTkDepartment = query.list();
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return lstTkDepartment;
    }
    public List<TkRatingDateSetup> getAllKpiRatingDate() {
        List<TkRatingDateSetup> lstTkDepartment = new ArrayList<>();
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            Query query = session.createQuery("FROM TkRatingDateSetup order by id desc");
            lstTkDepartment = query.list();
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return lstTkDepartment;
    }
    
    public boolean createKpiRatingDate(TkRatingDateSetup tkRatingDateSetup) {
        boolean check = true;
        List<TkRatingDateSetup> lstTkRatingDateSetups = new ArrayList<>();
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            Query query = session.createQuery("FROM TkRatingDateSetup");
            lstTkRatingDateSetups = query.list();
            for (int i = 0; i < lstTkRatingDateSetups.size(); i++) {
                TkRatingDateSetup get = lstTkRatingDateSetups.get(i);
                if ("ACTIVE".equals(get.getStatus())) {
                    get.setStatus("INACTIVE");
                    session.update(get);
                }
                
            }
            session.save(tkRatingDateSetup);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            check = false;
            e.printStackTrace();
        } finally {
            session.close();
        }
        return check;
    }
    
    public TkDepartment getDepartmentsByID( int id) {
        TkDepartment department = new TkDepartment();
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            department = (TkDepartment) session.get(TkDepartment.class, id);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return department;
    }
    
    public List<TkUser> getAllUserByDepartmentId(int departmentId) {
        List<TkUser> lstTkUserLogin = new ArrayList<>();
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            Query query = session.createQuery("FROM TkUser where tkDepartment.id =:departmentId");
            query.setParameter("departmentId", departmentId);
            lstTkUserLogin = query.list();
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return lstTkUserLogin;
    }
    
    
    public boolean updateDepartment(TkDepartment department) {
        boolean success = true;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            session.update(department);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            success = false;
            e.printStackTrace();
        } finally {
            session.close();
        }
        return success;
    }
    
    public boolean saveDepartment(TkDepartment department) {
        boolean success = true;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            session.save(department);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            success = false;
            e.printStackTrace();
        } finally {
            session.close();
        }
        return success;
    }
    
    public List<TkKpiTypeSetting> getAllKpiTypeSetting() {
        List<TkKpiTypeSetting> lstKpiTypeSettings = new ArrayList<>();
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            Query query = session.createQuery("FROM TkKpiTypeSetting");
            lstKpiTypeSettings = query.list();
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return lstKpiTypeSettings;
    }
    
    public List<TkKpiItemSetting> viewKpiDetail(int id) {
        List<TkKpiItemSetting> lstKpiItemSettings = new ArrayList<>();
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            Query query = session.createQuery("FROM TkKpiItemSetting WHERE tkKpiTypeSetting.id=:id");
            query.setParameter("id", id);
            lstKpiItemSettings = query.list();
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return lstKpiItemSettings;
    }
    
    public boolean createGroupKPI(TkKpiTypeSetting tkKpiTypeSetting, List<TkKpiItemSetting> lstKpiItemSettings){
        boolean success = true;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            int tkKpiTypeId = (int) session.save(tkKpiTypeSetting);
            tkKpiTypeSetting.setId(tkKpiTypeId);
            for (TkKpiItemSetting lstKpiItemSetting : lstKpiItemSettings) {
                lstKpiItemSetting.setTkKpiTypeSetting(tkKpiTypeSetting);
                session.save(lstKpiItemSetting);
            }
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            success = false;
            e.printStackTrace();
        } finally {
            session.close();
        }
        return success;
    }
    
     public TkKpiTypeSetting getKpiTypeSettingById(int kpiID) {
         TkKpiTypeSetting kpiTypeSetting = new TkKpiTypeSetting();
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            kpiTypeSetting = (TkKpiTypeSetting) session.get(TkKpiTypeSetting.class, kpiID);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return kpiTypeSetting;
    }
    
    public boolean updateKpiTypeSeting(TkKpiTypeSetting tkKpiTypeSetting){
        boolean success = true;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            session.update(tkKpiTypeSetting);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            success = false;
            e.printStackTrace();
        } finally {
            session.close();
        }
        return success;
    }

}
