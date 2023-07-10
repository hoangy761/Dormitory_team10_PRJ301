/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ass.log;

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
public class LogDAO {

    public boolean addLog(LogDTO log) throws SQLException {
        boolean result = false;
        Connection conn = null;
        PreparedStatement pstm = null;

        try {

            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = " INSERT INTO LOG(userId, roomId, price, bDay )  VALUES (?, ?, ?, ?)";

                pstm = conn.prepareStatement(sql);
                pstm.setString(1, log.getUserId());
                pstm.setString(2, log.getRoomId());
                pstm.setInt(3, log.getPrice());
                pstm.setString(4, log.getbDay());

                int value = pstm.executeUpdate();

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

    public List<LogDTO> getListRegist(String status, String role, String userId) throws SQLException {
        List<LogDTO> listRegist = new ArrayList<>();
        Connection conn = null;
        PreparedStatement pstm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {

                if (role.equals("MN")) {
                    String sql = "SELECT logId, userId, roomId, price, bDay, status "
                            + " FROM Log "
                            + " where status  = ? ";

                    pstm = conn.prepareStatement(sql);
                    pstm.setString(1, status);
                } else {
                    String sql = "SELECT logId, userId, roomId, price, bDay, status "
                            + " FROM Log "
                            + " where userId = ?";

                    pstm = conn.prepareStatement(sql);
                    pstm.setString(1, userId);
                }
                rs = pstm.executeQuery();

                while (rs.next()) {
                    int logId = rs.getInt("logId");
                    userId = rs.getString("userId");
                    String roomId = rs.getString("roomId");
                    int price = rs.getInt("price");
                    String bDay = rs.getString("bDay");
                    String status_new = rs.getString("status");
                    listRegist.add(new LogDTO(logId, userId, roomId, price, bDay, status_new));
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

        return listRegist;
    }

    public boolean updateStatusLog(String status, String logId) throws SQLException {
        boolean result = false;
        Connection conn = null;
        PreparedStatement pstm = null;

        try {

            //   BookDTO(bookId, title, author, category, description, pubyear, quantity, availQtt, status);
            conn = DBUtils.getConnection();
            if (conn != null) {
                int value;
                if (status.equals("DO")) {
                    String sql = " BEGIN TRANSACTION;\n"
                            + "Update Log  set Log.status = 'DO' from Log l , Room r "
                            + "where l.roomId = r.roomId And l.logId= ? "
                            + "Update Room  set Room.countSlot = countSlot + 1  from Log l , Room r "
                            + "where l.roomId = r.roomId And l.logId= ? "
                            + "COMMIT;";

                    pstm = conn.prepareStatement(sql);
                    pstm.setString(1, logId);
                    pstm.setString(2, logId);

                    value = pstm.executeUpdate();
                } else {
                    String sql = " UPDATE LOG "
                            + " SET status = ?  "
                            + " WHERE logId = ? ";

                    pstm = conn.prepareStatement(sql);
                    pstm.setString(1, status);
                    pstm.setString(2, logId);

                    value = pstm.executeUpdate();
                }

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

    public LogDTO checkExistRoom(String userId, String status) throws SQLException {
        LogDTO user = null;
        Connection conn = null;
        PreparedStatement pstm = null;
        ResultSet rs = null;

        try {
            conn = DBUtils.getConnection();
            if (conn != null) {

                String sql = "SELECT logId, roomId, price, bDay "
                        + " FROM Log "
                        + " where userId = ? AND status LIKE ? ";
                pstm = conn.prepareStatement(sql);

                pstm.setString(1, userId);
                pstm.setString(2, "%" + status + "%");
                rs = pstm.executeQuery();
                if (rs.next()) {
                    int logId = rs.getInt("logId");
                    String roomId = rs.getString("roomId");
                    int price = rs.getInt("price");
                    String bDay = rs.getString("bDay");
                    user = new LogDTO(logId, userId, roomId, price, bDay, status);
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

        return user;
    }

}
