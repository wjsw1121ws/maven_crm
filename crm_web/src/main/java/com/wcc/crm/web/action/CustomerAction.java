package com.wcc.crm.web.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.wcc.crm.domain.Customer;
import com.wcc.crm.service.CustomerService;
import org.hibernate.criterion.DetachedCriteria;

import java.util.List;

/**
 * @Description:
 * @ClassName: CustomerAction
 * @Auther: changchun_wu
 * @Date: 2018/11/22 1:18
 * @Version: 1.0
 **/
public class CustomerAction extends ActionSupport implements ModelDriven<Customer> {
    private Customer customer = new Customer();
    @Override
    public Customer getModel() {
        return customer;
    }

    private CustomerService customerService;

    public void setCustomerService(CustomerService customerService) {
        this.customerService = customerService;
    }

    public String findAll(){
        DetachedCriteria criteria = DetachedCriteria.forClass(Customer.class);
        List<Customer> list = customerService.findAll(criteria);
        ActionContext.getContext().getValueStack().push(list);
        return "findAllSuccess";
    }

}
