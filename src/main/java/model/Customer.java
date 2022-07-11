package model;

public class Customer {
    private String userName;
    private String passWord;
    private String fullName;
    private String birthDay;
    private String idCard;
    private String homeTown;
    private String phoneNumber;
    private String email;
    private double wallet;
    
    public Customer() {
    }

    public Customer(String userName, String passWord, String fullName, String birthDay, String idCard, String homeTown, String phoneNumber, String email, double wallet) {
        this.userName = userName;
        this.passWord = passWord;
        this.fullName = fullName;
        this.birthDay = birthDay;
        this.idCard = idCard;
        this.homeTown = homeTown;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.wallet = wallet;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(String birthDay) {
        this.birthDay = birthDay;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public String getHomeTown() {
        return homeTown;
    }

    public void setHomeTown(String homeTown) {
        this.homeTown = homeTown;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public double getWallet() {
        return wallet;
    }

    public void setWallet(double wallet) {
        this.wallet = wallet;
    }
}
