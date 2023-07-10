/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ass.user;

/**
 *
 * @author PC
 */
public class UserDTO {
    private String userId;
    private String fullName;
    private String email;
    private String address;
    private String tel;
    private String birthDay;
    private String status;
    private String role;
    private String imgUser;
    private String password;

    public UserDTO() {
    }

    public UserDTO(String userId, String fullName, String email, String address, String tel, String birthDay, String status, String role, String imgUser, String password) {
        this.userId = userId;
        this.fullName = fullName;
        this.email = email;
        this.address = address;
        this.tel = tel;
        this.birthDay = birthDay;
        this.status = status;
        this.role = role;
        this.imgUser = imgUser;
        this.password = password;
    }

    
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(String birthDay) {
        this.birthDay = birthDay;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getImgUser() {
        return imgUser;
    }

    public void setImgUser(String imgUser) {
        this.imgUser = imgUser;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
}
