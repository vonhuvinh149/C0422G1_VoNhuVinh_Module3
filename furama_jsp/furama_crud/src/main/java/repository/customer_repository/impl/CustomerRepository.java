package repository.customer_repository.impl;

import model.customer.Customer;
import model.customer.CustomerType;
import repository.BaseRepository;
import repository.customer_repository.IRepositoryCustomer;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements IRepositoryCustomer {
    private final String SELECT_ALL = "select * from khach_hang;";
    private final String CREATE_CUSTOMER = "InSERT INTO khach_hang (ma_loai_khach, ho_ten, ngay_sinh, gioi_tinh, so_cmnd, so_dien_thoai, email, dia_chi)" +
            "VaLUES" +
            "(?,?,?,?,?,?,?,?);";
    private final String DELETE_CUSTOMER = "call deleteCustomer(?);";
    private final String SHOW_CUSTOMER_TYPE = "select * from loai_khach";
    private final String UPDATE_CUSTOMER = "call update_customer(?,?,?,?,?,?,?,?,?);";
    private final String FIND_BY_ID = "select * from khach_hang where ma_khach_hang = ?;";
    private final String FIND_BY_NAME = "select * from khach_hang where ho_ten like" +"?"+";";

    @Override
    public void addCustomer(Customer customer) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(CREATE_CUSTOMER);
            preparedStatement.setInt(1, customer.getCustomerTypeId());
            preparedStatement.setString(2, customer.getCustomerName());
            preparedStatement.setString(3, customer.getCustomerBirth());
            preparedStatement.setBoolean(4, customer.isCustomerGender());
            preparedStatement.setString(5, customer.getCustomerIdCard());
            preparedStatement.setString(6, customer.getCustomerPhone());
            preparedStatement.setString(7, customer.getCustomerEmail());
            preparedStatement.setString(8, customer.getCustomerAddress());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteCustomer(int id) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            CallableStatement callableStatement = connection.prepareCall(DELETE_CUSTOMER);
            callableStatement.setInt(1, id);
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateCustomer(Customer customer) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            CallableStatement callableStatement = connection.prepareCall(UPDATE_CUSTOMER);
            callableStatement.setInt(1, customer.getCustomerTypeId());
            callableStatement.setString(2, customer.getCustomerName());
            callableStatement.setString(3, customer.getCustomerBirth());
            callableStatement.setBoolean(4, customer.isCustomerGender());
            callableStatement.setString(5, customer.getCustomerIdCard());
            callableStatement.setString(6, customer.getCustomerPhone());
            callableStatement.setString(7, customer.getCustomerEmail());
            callableStatement.setString(8, customer.getCustomerAddress());
            callableStatement.setInt(9, customer.getCustomerId());
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Customer> findAll() {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int customerId = resultSet.getInt("ma_khach_hang");
                int customerTypeId = resultSet.getInt("ma_loai_khach");
                String customerName = resultSet.getString("ho_ten");
                String customerBirth = resultSet.getString("ngay_sinh");
                boolean customerGender = resultSet.getBoolean("gioi_tinh");
                String customerIdCard = resultSet.getString("so_cmnd");
                String customerPhone = resultSet.getString("so_dien_thoai");
                String customerEmail = resultSet.getString("email");
                String customerAddress = resultSet.getString("dia_chi");
                customerList.add(new Customer(customerId, customerTypeId, customerName, customerBirth, customerGender, customerIdCard, customerPhone, customerEmail, customerAddress));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerList;
    }

    @Override
    public Customer findById(int id) {
        Connection connection = BaseRepository.getConnectDB();
        Customer customer = null;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_ID);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int customerId = resultSet.getInt("ma_khach_hang");
                int customerTypeId = resultSet.getInt("ma_loai_khach");
                String customerName = resultSet.getString("ho_ten");
                String customerBirth = resultSet.getString("ngay_sinh");
                boolean customerGender = resultSet.getBoolean("gioi_tinh");
                String customerIdCard = resultSet.getString("so_cmnd");
                String customerPhone = resultSet.getString("so_dien_thoai");
                String customerEmail = resultSet.getString("email");
                String customerAddress = resultSet.getString("dia_chi");
                customer = new Customer(customerId, customerTypeId, customerName, customerBirth, customerGender, customerIdCard, customerPhone, customerEmail, customerAddress);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customer;
    }

    @Override
    public List<CustomerType> showCustomerType() {
        List<CustomerType> customerTypeList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SHOW_CUSTOMER_TYPE);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int customerTypeCode = resultSet.getInt("ma_loai_khach");
                String customerTypeName = resultSet.getString("ten_loai_khach");
                customerTypeList.add(new CustomerType(customerTypeCode, customerTypeName));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerTypeList;
    }

    @Override
    public List<Customer> searchByName(String name) {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_NAME);
            preparedStatement.setString(1,"%"+ name + "%");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int customerId = resultSet.getInt("ma_khach_hang");
                int customerTypeId = resultSet.getInt("ma_loai_khach");
                String customerName = resultSet.getString("ho_ten");
                String customerBirth = resultSet.getString("ngay_sinh");
                boolean customerGender = resultSet.getBoolean("gioi_tinh");
                String customerIdCard = resultSet.getString("so_cmnd");
                String customerPhone = resultSet.getString("so_dien_thoai");
                String customerEmail = resultSet.getString("email");
                String customerAddress = resultSet.getString("dia_chi");
                customerList.add( new Customer(customerId, customerTypeId, customerName, customerBirth, customerGender, customerIdCard, customerPhone, customerEmail, customerAddress));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerList;
    }
}

