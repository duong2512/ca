package dao;

import connection.Connect_MySQL;
import model.Apartment;
import model.Customer;
import model.Sector;

import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class SectorDAO implements CRUD<Sector> {
    Connect_MySQL connect_mySQL=new Connect_MySQL();


    private static final String INSERT_SECTOR_SQL = "INSERT INTO sector (idKV, province, district, subDistrict) VALUES (?, ?, ?, ?);";

    private static final String SELECT_SECTOR_BY_ID = "select * from sector where idKV =?";

    private static final String SELECT_ALL_SECTOR = "select * from sector where province like concat('%',?,'%')";

    private static final String UPDATE_SECTOR_SQL = "update sector set province = ?,district= ?, subDistrict =? where idKV > 0;";
    private static final String SEACH_IDKV_SQL= "select idkv form CASE_STUDY_MD3.sector where province like concat('%',?,'%') ";

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
    public void insert(Sector sector) throws SQLException{
        try (Connection connection = connect_mySQL.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_SECTOR_SQL)) {
            preparedStatement.setInt(1, sector.getIdKV());
            preparedStatement.setString(2, sector.getProvince());
            preparedStatement.setString(3, sector.getDistrict());
            preparedStatement.setString(4, sector.getSubDistrict());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    @Override
    public Sector select(int idKV, String userName) {
        Sector sector = null;
        try (Connection connection =  connect_mySQL.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(SELECT_SECTOR_BY_ID);) {
            preparedStatement.setInt(1, idKV);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                String province = rs.getString("province");
                String district = rs.getString("district");
                String subDistrict = rs.getString("subDistrict");
                sector = new Sector(idKV, province, district, subDistrict);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return sector;
    }

    @Override
    public List<Sector> selectAll(String province) {
        List<Sector> sectors = new ArrayList<>();
        try (Connection connection = connect_mySQL.getConnection();PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_SECTOR);) {
            preparedStatement.setString(1, province);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int idKV = resultSet.getInt("idKV");
                String provinceSector = resultSet.getString("province");
                String district = resultSet.getString("district");
                String subDistrict = resultSet.getString("subDistrict");
//                Apartment apartment = apartmentDAO.select(resultSet.getInt("idCH"), "");

                sectors.add(new Sector(idKV, provinceSector, district, subDistrict));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return sectors;
    }

    @Override
    public boolean delete(int id, String name) throws SQLException {
        return false;
    }

    @Override
    public boolean update(Sector sector) throws SQLException {
        try (Connection connection = connect_mySQL.getConnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_SECTOR_SQL);
            preparedStatement.setString(1, sector.getProvince());
            preparedStatement.setString(2, sector.getDistrict());
            preparedStatement.setString(3, sector.getSubDistrict());
            return preparedStatement.execute();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return false;
        }
    }
    public int findIDKV(String provine) {
        try (Connection connection = connect_mySQL.getConnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement(SEACH_IDKV_SQL);
            preparedStatement.setString(1, provine);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.next();
            int idKV = resultSet.getInt(1);
            return idKV;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
    public void addSector(){
        try (Connection connection = connect_mySQL.getConnection();PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_SECTOR);) {

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }}
    }
