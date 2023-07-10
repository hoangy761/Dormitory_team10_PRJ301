/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ass.user;

import ass.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author PC
 */
public class UserDAO {

    public UserDTO checkLogin(String userId, String password) throws SQLException {
        UserDTO user = null;
        Connection conn = null;
        PreparedStatement pstm = null;
        ResultSet rs = null;

        try {

            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "SELECT  fullName,  email,  address,  tel,  birthDay,  status,  role, imgUser "
                        + " FROM Users "
                        + " WHERE userId = ? AND password = ?";
                pstm = conn.prepareStatement(sql);
                pstm.setString(1, userId);
                pstm.setString(2, password);

                rs = pstm.executeQuery();
                if (rs.next()) {
                    String fullName = rs.getString("fullName");
                    String email = rs.getString("email");
                    String address = rs.getString("address");
                    String tel = rs.getString("tel");
                    String birthDay = rs.getString("birthDay");
                    String status = rs.getString("status");
                    String role = rs.getString("role");
                    String imgUser = rs.getString("imgUser");
                    user = new UserDTO(userId, fullName, email, address, tel, birthDay, status, role, imgUser, password);
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (pstm != null) {
                pstm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return user;
    }

    public List<UserDTO> getListUser(String search) throws SQLException {
        List<UserDTO> listUser = new ArrayList<>();

        Connection conn = null;
        PreparedStatement pstm = null;
        ResultSet rs = null;

        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                if (search.equals("")) {
                    String sql = "SELECT  userId,  fullName,  email,  address,  tel,  birthDay,  status,  role, imgUser "
                            + " FROM Users";
                    pstm = conn.prepareStatement(sql);
                } else {
                    String sql = "SELECT  userId,  fullName,  email,  address,  tel,  birthDay,  status,  role, imgUser "
                            + " FROM Users"
                            + " WHERE userId like ? OR fullName like ? OR email like ? OR address like ? OR tel like ? "
                            + " OR birthDay like ? OR role like ? ";
                    pstm = conn.prepareStatement(sql);
                    pstm.setString(1, "%" + search + "%");
                    pstm.setString(2, "%" + search + "%");
                    pstm.setString(3, "%" + search + "%");
                    pstm.setString(4, "%" + search + "%");
                    pstm.setString(5, "%" + search + "%");
                    pstm.setString(6, "%" + search + "%");
                    pstm.setString(7, "%" + search + "%");
                }

                rs = pstm.executeQuery();
                while (rs.next()) {
                    String userId = rs.getString("userId");
                    String fullName = rs.getString("fullName");
                    String email = rs.getString("email");
                    String address = rs.getString("address");
                    String tel = rs.getString("tel");
                    String birthDay = rs.getString("birthDay");
                    String status = rs.getString("status");
                    String role = rs.getString("role");
                    String imgUser = rs.getString("imgUser");
                    listUser.add(new UserDTO(userId, fullName, email, address, tel, birthDay, status, role, imgUser, userId));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (pstm != null) {
                pstm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }

        return listUser;
    }

    public boolean updateStatusUser(String userId, String status) throws SQLException {
        boolean result = false;
        Connection conn = null;
        PreparedStatement pstm = null;

        try {

            //   BookDTO(bookId, title, author, category, description, pubyear, quantity, availQtt, status);
            conn = DBUtils.getConnection();
            if (conn != null) {
                int value;

                String sql = " UPDATE Users "
                        + " SET status = ?  "
                        + " WHERE userId = ? ";

                pstm = conn.prepareStatement(sql);
                pstm.setString(1, status);
                pstm.setString(2, userId);

                value = pstm.executeUpdate();

                result = value > 0 ? true : false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (pstm != null) {
                pstm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return result;
    }
}
