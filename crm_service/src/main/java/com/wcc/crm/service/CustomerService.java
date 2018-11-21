package com.wcc.crm.service;

import com.wcc.crm.domain.Customer;
import org.hibernate.criterion.DetachedCriteria;

import java.util.List;

/**
 * @Description:
 * @ClassName: ICustomerService
 * @Auther: changchun_wu
 * @Date: 2018/11/21 0:33
 * @Version: 1.0
 **/
public interface CustomerService {
    List<Customer> findAll(DetachedCriteria criteria);
}
