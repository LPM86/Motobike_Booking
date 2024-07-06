package model;

import java.util.Date;

public class Request {
    private int ID;
    private String name;
    private String phone;
    private String address;
    private Date receivedDate;
    private Date returnDate;
    private int totalAmount;
    private int statusId;
    private String statusName;

    // Constructors
    public Request() {
    }

    public Request(String name, String phone, String address, Date receivedDate, Date returnDate, int totalAmount, int statusId) {
        this.name = name;
        this.phone = phone;
        this.address = address;
        this.receivedDate = receivedDate;
        this.returnDate = returnDate;
        this.totalAmount = totalAmount;
        this.statusId = statusId;
    }
    
    

    public Request(String name, String phone, String address, Date receivedDate, Date returnDate, int totalAmount, int statusId, String statusName) {
        this.name = name;
        this.phone = phone;
        this.address = address;
        this.receivedDate = receivedDate;
        this.returnDate = returnDate;
        this.totalAmount = totalAmount;
        this.statusId = statusId;
        this.statusName = statusName;
    }

    public Request(int ID, String name, String phone, String address, Date receivedDate, Date returnDate, int totalAmount, int statusId, String statusName) {
        this.ID = ID;
        this.name = name;
        this.phone = phone;
        this.address = address;
        this.receivedDate = receivedDate;
        this.returnDate = returnDate;
        this.totalAmount = totalAmount;
        this.statusId = statusId;
        this.statusName = statusName;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getReceivedDate() {
        return receivedDate;
    }

    public void setReceivedDate(Date receivedDate) {
        this.receivedDate = receivedDate;
    }

    public Date getReturnDate() {
        return returnDate;
    }

    public void setReturnDate(Date returnDate) {
        this.returnDate = returnDate;
    }

    public int getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(int totalAmount) {
        this.totalAmount = totalAmount;
    }

    public int getStatusId() {
        return statusId;
    }

    public void setStatusId(int statusId) {
        this.statusId = statusId;
    }

    public String getStatusName() {
        return statusName;
    }

    public void setStatusName(String statusName) {
        this.statusName = statusName;
    }

    @Override
    public String toString() {
        return "Request{" + "ID=" + ID + ", name=" + name + ", phone=" + phone + ", address=" + address + ", receivedDate=" + receivedDate + ", returnDate=" + returnDate + ", totalAmount=" + totalAmount + ", statusId=" + statusId + ", statusName=" + statusName + '}';
    }

    
   
    
    
}

