package dao;

import connection.Connect_MySQL;
import model.Apartment;
import model.Customer;
import model.Sector;

import java.sql.Connection;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static java.sql.DriverManager.getConnection;

public class ApartmentDAO implements CRUD<Apartment> {
    Connect_MySQL connect_mySQL = new Connect_MySQL();

    CustomerDAO customerDAO = new CustomerDAO();

    SectorDAO sectorDAO = new SectorDAO();
//    classify like concat('%',?,'%')


    private static final String INSERT_APARTMENT_SQL = "INSERT INTO CASE_STUDY_MD3.apartment (idCH, address, price, area, picture, status, description, datePost, classify, idKV) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";

    private static final String SELECT_APARTMENT_BY_ID = "select * from CASE_STUDY_MD3.customer as ctm join CASE_STUDY_MD3.apartment as a on ctm.userName=a.userName join CASE_STUDY_MD3.sector as s on s.idKV = a.idKV where idCH =?";

    private static final String SELECT_ALL_APARTMENT = "select * from CASE_STUDY_MD3.customer as ctm join CASE_STUDY_MD3.apartment as a on ctm.userName=a.userName join CASE_STUDY_MD3.sector as s on s.idKV = a.idKV where 1 > 0";

    private static final String DELETE_APARTMENT_SQL = "delete from CASE_STUDY_MD3.apartment where idCH = ?;";

    private static final String UPDATE_APARTMENT_SQL = "update CASE_STUDY_MD3.apartment set address = ?,price= ?, area =?,picture= ?,status= ?,description= ?,datePost= ?,classify= ? where id > 0;";

    private static final String SELECT_APARTMENT_BY_PRICE = "select * from CASE_STUDY_MD3.apartment where price=?";

    private static final String SELECT_APARTMENT_BY_SECTOR = "select * from CASE_STUDY_MD3.apartment join CASE_STUDY_MD3.sector on apartment.idKV = sector.idKV where province= ?";

    private static final String SEARCH_APARTMENT_SQL = "select * from CASE_STUDY_MD3.customer as ctm join CASE_STUDY_MD3.apartment as a on ctm.userName=a.userName join CASE_STUDY_MD3.sector as s on s.idKV = a.idKV where classify like concat('%',?,'%') and price like concat('%',?,'%') and area like concat('%',?,'%') and province like concat('%',?,'%') and district like concat ('%',?,'%')";

    Connection connection = connect_mySQL.getConnection();
    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }


    @Override
    public void insert(Apartment apartment) throws SQLException {
        try (Connection connection = connect_mySQL.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_APARTMENT_SQL)) {
            preparedStatement.setInt(1, apartment.getIdCH());
            preparedStatement.setString(2, apartment.getAddress());
            preparedStatement.setDouble(3, apartment.getPrice());
            preparedStatement.setDouble(4, apartment.getArea());
            preparedStatement.setString(5, apartment.getPicture());
            preparedStatement.setString(6, apartment.getStatus());
            preparedStatement.setString(7, apartment.getDescription());
            preparedStatement.setDate(8, apartment.getDatePost());
            preparedStatement.setString(9, apartment.getClassify());
            preparedStatement.setInt(10, apartment.getSector().getIdKV());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }
    public void addApartment(int idCH,String address,double price,double area,String picture,String status,String description,Date datePost,String classify,String username,int idkv){
        try (Connection connection = connect_mySQL.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_APARTMENT_SQL)) {
            preparedStatement.setInt(1,idCH);
            preparedStatement.setString(2,address);
            preparedStatement.setDouble(3,price);
            preparedStatement.setDouble(4,area);
            preparedStatement.setString(5,picture);
            preparedStatement.setString(6,status);
            preparedStatement.setString(7,description);
            preparedStatement.setDate(8,datePost);
            preparedStatement.setString(9,classify);
            preparedStatement.setString(10,username);
            preparedStatement.setInt(11,idkv);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public Apartment select(int idCH, String userName) {
        try (Connection connection = connect_mySQL.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(SELECT_APARTMENT_BY_ID);) {
            preparedStatement.setInt(1, idCH);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.next();
                String provinces= resultSet.getString(22);
                String districts=resultSet.getString(23);
                String subDistrict=resultSet.getString(24);
                int idKV=resultSet.getInt(21);
                int idCH1=resultSet.getInt(10);
                String address=resultSet.getString(11);
                double prices=resultSet.getDouble(12);
                double areas=resultSet.getDouble(13);
                String img=resultSet.getString(14);
                String status=resultSet.getString(15);
                String description=resultSet.getString(16);
                Date datepost=resultSet.getDate(17);
                String classifys=resultSet.getString(18);
                String user=resultSet.getString(1);
                String passWord=resultSet.getString(2);
                String fullName=resultSet.getString(3);
                String birthday=resultSet.getString(4);
                String idCard=resultSet.getString(5);
                String homeTown=resultSet.getString(6);
                String phoneNumber=resultSet.getString(7);
                String email=resultSet.getString(8);
                double wallet=resultSet.getDouble(9);
            return new Apartment(idCH1,address,prices,areas,img,status,description,datepost,classifys,new Customer(user,passWord,fullName,birthday,idCard,homeTown,phoneNumber,email,wallet),new Sector(idKV,provinces,districts,subDistrict));

        } catch (SQLException e) {
            printSQLException(e);
        }
        return null;
    }

    @Override
    public List<Apartment> selectAll(String string) {
        List<Apartment> apartments = new ArrayList<>();
        try (Connection connection = connect_mySQL.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_APARTMENT)) {
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                String provinces= resultSet.getString(22);
                String districts=resultSet.getString(23);
                String subDistrict=resultSet.getString(24);
                int idKV=resultSet.getInt(21);
                int idCH1=resultSet.getInt(10);
                String address=resultSet.getString(11);
                double prices=resultSet.getDouble(12);
                double areas=resultSet.getDouble(13);
                String img=resultSet.getString(14);
                String status=resultSet.getString(15);
                String description=resultSet.getString(16);
                Date datepost=resultSet.getDate(17);
                String classifys=resultSet.getString(18);
                String user=resultSet.getString(1);
                String passWord=resultSet.getString(2);
                String fullName=resultSet.getString(3);
                String birthday=resultSet.getString(4);
                String idCard=resultSet.getString(5);
                String homeTown=resultSet.getString(6);
                String phoneNumber=resultSet.getString(7);
                String email=resultSet.getString(8);
                double wallet=resultSet.getDouble(9);
                apartments.add(new Apartment(idCH1,address,prices,areas,img,status,description,datepost,classifys,new Customer(user,passWord,fullName,birthday,idCard,homeTown,phoneNumber,email,wallet),new Sector(idKV,provinces,districts,subDistrict)));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return apartments;
    }

    @Override
    public boolean delete(int idCH, String name) throws SQLException {
        try (Connection connection = connect_mySQL.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(DELETE_APARTMENT_SQL)) {
            preparedStatement.setInt(1, idCH);
            return preparedStatement.execute();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean update(Apartment apartment) throws SQLException {
        try (Connection connection = connect_mySQL.getConnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_APARTMENT_SQL);
            preparedStatement.setString(1, apartment.getAddress());
            preparedStatement.setDouble(2, apartment.getPrice());
            preparedStatement.setDouble(3, apartment.getArea());
            preparedStatement.setString(4, apartment.getPicture());
            preparedStatement.setString(5, apartment.getStatus());
            preparedStatement.setString(6, apartment.getDescription());
            preparedStatement.setDate(7, apartment.getDatePost());
            preparedStatement.setString(8, apartment.getClassify());
            return preparedStatement.execute();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return false;
        }
    }

    public List selectApartmentByPrice(Double price){
        List<Apartment> apartments = new ArrayList<>();
        try (Connection connection = connect_mySQL.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(SELECT_APARTMENT_BY_PRICE)) {
            preparedStatement.setDouble(1, price);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int idKV = resultSet.getInt("idCH");
                String address = resultSet.getString("address");
                double price1 = resultSet.getDouble("price");
                double area = resultSet.getDouble("area");
                String picture = resultSet.getString("picture");
                String status = resultSet.getString("status");
                String description = resultSet.getString("description");
                Date datePost = resultSet.getDate("datePost");
                String classifyApartment = resultSet.getString("classify");
                Customer customer = customerDAO.select(0, resultSet.getString("userName"));
                Sector sector = sectorDAO.select(resultSet.getInt("idKV"), "");

                apartments.add(new Apartment(idKV, address, price1, area, picture, status, description, datePost, classifyApartment, customer, sector));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return apartments;
    }

    public List selectApartmentBySectorProvince(String province ){
        List<Apartment> apartments = new ArrayList<>();
        try (Connection connection = connect_mySQL.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(SELECT_APARTMENT_BY_SECTOR)) {
            preparedStatement.setString(1, province);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int idCH = resultSet.getInt("idCH");
                String address = resultSet.getString("address");
                double price1 = resultSet.getDouble("price");
                double area = resultSet.getDouble("area");
                String picture = resultSet.getString("picture");
                String status = resultSet.getString("status");
                String description = resultSet.getString("description");
                Date datePost = resultSet.getDate("datePost");
                String classifyApartment = resultSet.getString("classify");
                Customer customer = customerDAO.select(0, resultSet.getString("userName"));
                Sector sector = sectorDAO.select(resultSet.getInt("idKV"), "");

                apartments.add(new Apartment(idCH, address, price1, area, picture, status, description, datePost, classifyApartment, customer, sector));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return apartments;
    }
    public List<Apartment> search(String classify,String price,String area, String province, String district){
        List<String> listseach= new ArrayList<>();
        List<Apartment> apartments=new ArrayList<>();
        listseach.add(classify);
        listseach.add(price);
        listseach.add(area);
        listseach.add(province);
        listseach.add(district);
        for (int i = 0; i < listseach.size(); i++) {
            if (listseach.get(i)==null){
                listseach.set(i,"");
            };
        }
        try (Connection connection = connect_mySQL.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(SEARCH_APARTMENT_SQL)){
            preparedStatement.setString(1,classify);
            preparedStatement.setString(2,price);
            preparedStatement.setString(3,area);
            preparedStatement.setString(4,province);
            preparedStatement.setString(5,district);
            ResultSet resultSet=preparedStatement.executeQuery();
            while (resultSet.next()){
                String provinces= resultSet.getString(22);
                String districts=resultSet.getString(23);
                String subDistrict=resultSet.getString(24);
                int idKV=resultSet.getInt(21);
                int idCH1=resultSet.getInt(10);
                String address=resultSet.getString(11);
                double prices=resultSet.getDouble(12);
                double areas=resultSet.getDouble(13);
                String img=resultSet.getString(14);
                String status=resultSet.getString(15);
                String description=resultSet.getString(16);
                Date datepost=resultSet.getDate(17);
                String classifys=resultSet.getString(18);
                String user=resultSet.getString(1);
                String passWord=resultSet.getString(2);
                String fullName=resultSet.getString(3);
                String birthday=resultSet.getString(4);
                String idCard=resultSet.getString(5);
                String homeTown=resultSet.getString(6);
                String phoneNumber=resultSet.getString(7);
                String email=resultSet.getString(8);
                double wallet=resultSet.getDouble(9);
                apartments.add(new Apartment(idCH1,address,prices,areas,img,status,description,datepost,classifys,new Customer(user,passWord,fullName,birthday,idCard,homeTown,phoneNumber,email,wallet),new Sector(idKV,provinces,districts,subDistrict)));
            }
        } catch (
                SQLException e) {
            throw new RuntimeException(e);
        }
        return apartments;
    }

}
