package com.wcc.crm.dao.impl;

import com.wcc.crm.dao.CustomerDao;
import com.wcc.crm.domain.Customer;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import java.util.List;

/**
 * @Description:
 * @ClassName: CustomerDaoImpl
 * @Auther: changchun_wu
 * @Date: 2018/11/21 0:32
 * @Version: 1.0
 **/
public class CustomerDaoImpl extends HibernateDaoSupport implements CustomerDao {
    public List<Customer> findAll(DetachedCriteria criteria) {
        List<Customer> list = (List<Customer>) this.getHibernateTemplate().findByCriteria(criteria);
        return list;
    }
}
