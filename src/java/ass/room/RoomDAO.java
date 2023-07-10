/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ass.room;

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
public class RoomDAO {

     public List<RoomDTO> getListRoom() throws SQLException {
        List<RoomDTO> listRoom = new ArrayList<>();

        Connection conn = null;
        PreparedStatement pstm = null;
        ResultSet rs = null;

        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                
                    String sql = "SELECT  roomId,  img,  countSlot,  status,  evaluate "
                            + " FROM Room";
                    pstm = conn.prepareStatement(sql);
                

                rs = pstm.executeQuery();
                while (rs.next()) {
                    String roomId = rs.getString("roomId");
                    String img = rs.getString("img");
                    int countSlot = rs.getInt("countSlot");
                    String status = rs.getString("status");
                    String evaluate = rs.getString("evaluate");
                    listRoom.add(new RoomDTO(roomId, img, countSlot, status, evaluate));
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

        return listRoom;
    }
}
