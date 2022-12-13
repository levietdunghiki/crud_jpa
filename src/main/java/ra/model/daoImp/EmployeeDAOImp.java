package ra.model.daoImp;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ra.model.dao.EmployeeDAO;
import ra.model.entity.Employee;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.sql.SQLException;
import java.util.List;
@Transactional
@Repository
public class EmployeeDAOImp implements EmployeeDAO {
    @PersistenceContext
    EntityManager entityManager;
    @Override
    public List<Employee> findAll() {

        TypedQuery<Employee> query = entityManager.createQuery("select e from Employee e", Employee.class);
        return query.getResultList();
    }

    @Override
    public Employee findById(int id) {
        TypedQuery<Employee> query = entityManager.createQuery("select e from Employee e where e.id=:id", Employee.class);
        query.setParameter("id",id);
        return query.getSingleResult();
    }

    @Override
    public void save(Employee employee) {
            entityManager.persist(employee);
    }

    @Override
    @Transactional(rollbackFor = {SQLException.class})
    public void update(Employee employee) {
        entityManager.merge(employee);
    }

    @Override
    @Transactional(rollbackFor = {SQLException.class})
    public void delete(int id) {
        Employee employee = findById(id);
        entityManager.remove(employee);
    }
}
