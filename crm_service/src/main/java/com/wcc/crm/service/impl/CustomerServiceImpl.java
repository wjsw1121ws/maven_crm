package com.wcc.crm.service.impl;

import com.wcc.crm.dao.CustomerDao;
import com.wcc.crm.domain.Customer;
import com.wcc.crm.service.CustomerService;
import org.hibernate.criterion.DetachedCriteria;

import java.util.List;

/**
 * @Description:
 * @ClassName: CustomerServiceImpl
 * @Auther: changchun_wu
 * @Date: 2018/11/21 0:33
 * @Version: 1.0
 **/
public class CustomerServiceImpl implements CustomerService {
    private CustomerDao customerDao;
    public void setCustomerDao(CustomerDao customerDao) {
        this.customerDao = customerDao;
    }

    public List<Customer> findAll(DetachedCriteria criteria) {
        return customerDao.findAll(criteria);
    }
}
