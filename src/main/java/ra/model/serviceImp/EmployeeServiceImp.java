package ra.model.serviceImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ra.model.daoImp.EmployeeDAOImp;
import ra.model.entity.Employee;
import ra.model.service.EmployeeService;

import java.util.List;
@Service
public class EmployeeServiceImp implements EmployeeService {
    @Autowired
    EmployeeDAOImp employeeDAOImp;
    @Override
    public List<Employee> findAll() {
        return employeeDAOImp.findAll();
    }

    @Override
    public Employee findById(int id) {
        return employeeDAOImp.findById(id);
    }

    @Override
    public void save(Employee employee) {
        employeeDAOImp.save(employee);
    }

    @Override
    public void update(Employee employee) {
        employeeDAOImp.update(employee);
    }

    @Override
    public void delete(int id) {
        employeeDAOImp.delete(id);
    }
}
