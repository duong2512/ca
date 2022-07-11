package dao;

import model.Apartment;

import java.sql.SQLException;
import java.util.List;

public interface CRUD<E> {
    public void insert(E e) throws SQLException;
    public E select(int id ,String name);
    public List<E> selectAll(String name);
    public boolean delete(int id, String name) throws SQLException;
    public boolean update(E e) throws SQLException;

}
