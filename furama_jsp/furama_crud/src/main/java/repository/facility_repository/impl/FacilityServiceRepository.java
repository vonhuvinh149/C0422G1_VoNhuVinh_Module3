package repository.facility_repository.impl;

import model.facility.Facility;
import model.facility.FacilityType;
import model.facility.RentType;
import repository.BaseRepository;
import repository.facility_repository.IRepositoryFacility;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FacilityServiceRepository implements IRepositoryFacility {
    private final String SELECT_ALL_FACILITY = "select * from dich_vu;";
    private final String CREATE_FACILITY = "INSERT INTO dich_vu ( ten_dich_vu, dien_tich, chi_phi_thue, so_nguoi_toi_da, ma_kieu_thue, ma_loai_dich_vu, tieu_chuan_phong, mo_ta_tien_nghi_khac, dien_tich_ho_boi, so_tang, dich_vu_mien_phi_di_kem) \n" +
            "VALUES \n" +
            "(?, ?, ?, ?,?, ?,?, ?, ?, ?,?);";
    private final String SELECT_RENTTYPE = "select * from kieu_thue ;";
    private final String SELECT_FACILITY_TYPE = "select * from loai_dich_vu;";
    private final String DELETE_FACILITY = "call deleteFacility(?);";


    private final String UPDATE_FACILITY = "call update_facility(?,?,?,?,?,?,?,?,?,?,?,?);";
    private final String FIND_BY_ID_FACILITY = "select * from dich_vu where ma_dich_vu = ?;";

    @Override
    public List<Facility> findAllFacility() {
        List<Facility> facilityList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_FACILITY);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int facilityId = resultSet.getInt("ma_dich_vu");
                String facilityName = resultSet.getString("ten_dich_vu");
                int facilityArea = resultSet.getInt("dien_tich");
                double facilityPrice = resultSet.getDouble("chi_phi_thue");
                int maxPeople = resultSet.getInt("so_nguoi_toi_da");
                int rentTypeId = resultSet.getInt("ma_kieu_thue");
                int facilityTypeId = resultSet.getInt("ma_loai_dich_vu");
                String standardRoom = resultSet.getString("tieu_chuan_phong");
                String description = resultSet.getString("mo_ta_tien_nghi_khac");
                double poolArea = resultSet.getDouble("dien_tich_ho_boi");
                int numberFloors = resultSet.getInt("so_tang");
                String facilityFree = resultSet.getString("dich_vu_mien_phi_di_kem");
                facilityList.add(new Facility(facilityId, facilityName, facilityArea, facilityPrice, maxPeople, rentTypeId, facilityTypeId, standardRoom, description, poolArea, numberFloors, facilityFree));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return facilityList;
    }

    @Override
    public void addFacility(Facility facility) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(CREATE_FACILITY);
            preparedStatement.setString(1, facility.getFacilityName());
            preparedStatement.setInt(2, facility.getFacilityArea());
            preparedStatement.setDouble(3, facility.getFacilityCost());
            preparedStatement.setInt(4, facility.getFacilityMaxPeople());
            preparedStatement.setInt(5, facility.getRentTypeId());
            preparedStatement.setInt(6, facility.getFacilityTypeId());
            preparedStatement.setString(7, facility.getStandardRoom());
            preparedStatement.setString(8, facility.getDescription());
            preparedStatement.setDouble(9, facility.getPoolArea());
            preparedStatement.setInt(10, facility.getNumberOfFloor());
            preparedStatement.setString(11, facility.getFacilityFree());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteFacility(int id) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            CallableStatement callableStatement = connection.prepareCall(DELETE_FACILITY);
            callableStatement.setInt(1, id);
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateFacility(Facility facility) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            CallableStatement callableStatement = connection.prepareCall(UPDATE_FACILITY);
            callableStatement.setString(1, facility.getFacilityName());
            callableStatement.setInt(2, facility.getFacilityArea());
            callableStatement.setDouble(3, facility.getFacilityCost());
            callableStatement.setInt(4, facility.getFacilityMaxPeople());
            callableStatement.setInt(5, facility.getRentTypeId());
            callableStatement.setInt(6, facility.getFacilityTypeId());
            callableStatement.setString(7, facility.getStandardRoom());
            callableStatement.setString(8, facility.getDescription());
            callableStatement.setDouble(9, facility.getPoolArea());
            callableStatement.setInt(10, facility.getNumberOfFloor());
            callableStatement.setString(11, facility.getFacilityFree());
            callableStatement.setInt(12, facility.getFacilityId());
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Facility findByIdFacility(int id) {
        Connection connection = BaseRepository.getConnectDB();
        Facility facility = null;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_ID_FACILITY);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int facilityId = resultSet.getInt("ma_dich_vu");
                String facilityName = resultSet.getString("ten_dich_vu");
                int facilityArea = resultSet.getInt("dien_tich");
                double facilityPrice = resultSet.getDouble("chi_phi_thue");
                int maxPeople = resultSet.getInt("so_nguoi_toi_da");
                int rentTypeId = resultSet.getInt("ma_kieu_thue");
                int facilityTypeId = resultSet.getInt("ma_loai_dich_vu");
                String standardRoom = resultSet.getString("tieu_chuan_phong");
                String description = resultSet.getString("mo_ta_tien_nghi_khac");
                double poolArea = resultSet.getDouble("dien_tich_ho_boi");
                int numberFloors = resultSet.getInt("so_tang");
                String facilityFree = resultSet.getString("dich_vu_mien_phi_di_kem");
                facility = new Facility(facilityId, facilityName, facilityArea, facilityPrice, maxPeople, rentTypeId, facilityTypeId, standardRoom, description, poolArea, numberFloors, facilityFree);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return facility;
    }

    @Override
    public List<RentType> showRentFacility() {
        List<RentType> rentTypeList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_RENTTYPE);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("ma_kieu_thue");
                String name = resultSet.getString("ten_kieu_thue");
                rentTypeList.add(new RentType(id, name));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rentTypeList;
    }
    @Override
    public List<FacilityType> showFacilityType() {
        List<FacilityType> facilityTypeList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_FACILITY_TYPE);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("ma_loai_dich_vu");
                String name = resultSet.getString("ten_loai_dich_vu");
                facilityTypeList.add(new FacilityType(id, name));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return facilityTypeList;
    }
}
