/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ass.room;

/**
 *
 * @author PC
 */
public class RoomDTO {
    private String roomId;
    private String img;
    private int countSlot;
    private String status;
    private String evaluate;

    public RoomDTO() {
    }

    public RoomDTO(String roomId, String img, int countSlot, String status, String evaluate) {
        this.roomId = roomId;
        this.img = img;
        this.countSlot = countSlot;
        this.status = status;
        this.evaluate = evaluate;
    }

    

    public String getRoomId() {
        return roomId;
    }

    public void setRoomId(String roomId) {
        this.roomId = roomId;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getCountSlot() {
        return countSlot;
    }

    public void setCountSlot(int countSlot) {
        this.countSlot = countSlot;
    }

    

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getEvaluate() {
        return evaluate;
    }

    public void setEvaluate(String evaluate) {
        this.evaluate = evaluate;
    }
    
}
