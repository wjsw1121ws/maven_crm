package com.wcc.crm.service.impl;

import com.wcc.crm.dao.ICustomerDao;
import com.wcc.crm.service.ICustomerService;

/**
 * @Description:
 * @ClassName: CustomerServiceImpl
 * @Auther: changchun_wu
 * @Date: 2018/11/21 0:33
 * @Version: 1.0
 **/
public class CustomerServiceImpl implements ICustomerService {
    private ICustomerDao customerDao;

    public void setCustomerDao(ICustomerDao customerDao) {
        this.customerDao = customerDao;
    }
}
