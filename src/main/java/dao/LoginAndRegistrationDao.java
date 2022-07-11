package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import connection.Connect_MySQL;
import model.Customer;

public class LoginAndRegistrationDao {
    String addAccount="insert into case_study_md3.customer (userName,passWord,fullname,birthday,idCart,homeTown,phoneNumber,email) value (?,?,?,?,?,?,?,?)";
    String loginAccount= "select userName,passWord from case_study_md3.Customer where userName=? and passWord=? ";

    Connect_MySQL connect_mySQL = new Connect_MySQL();

    public boolean addAccount(String userName,String passWord,String fullName,String birthday,String idCard,String homeTown,String phoneNumber,String email){
        try (Connection connection = connect_mySQL.getConnection()){
            PreparedStatement statement=connection.prepareStatement(addAccount);
            statement.setString(1,userName);
            statement.setString(2,passWord);
            statement.setString(3,fullName);
            statement.setString(4,birthday);
            statement.setString(5,idCard);
            statement.setString(6,homeTown);
            statement.setString(7,phoneNumber);
            statement.setString(8,email);

            return statement.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public boolean getAllCustomer(String userName,String passWord){
        try(Connection connection= connect_mySQL.getConnection()) {
            PreparedStatement statement=connection.prepareStatement(loginAccount);
            statement.setString(1,userName);
            statement.setString(2,passWord);
            ResultSet resultSet=statement.executeQuery();
            resultSet.next();
            String name=resultSet.getString("userName");
            if (name!=null){
                return true;
            } return false;
        } catch (SQLException e) {
            return false;
        }
    }
}
