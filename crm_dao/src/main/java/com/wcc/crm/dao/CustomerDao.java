package com.wcc.crm.dao;

import com.wcc.crm.domain.Customer;
import org.hibernate.criterion.DetachedCriteria;

import java.util.List;

/**
 * @Description:
 * @ClassName: ICustomerDao
 * @Auther: changchun_wu
 * @Date: 2018/11/21 0:32
 * @Version: 1.0
 **/
public interface CustomerDao {
    List<Customer> findAll(DetachedCriteria criteria);
}
