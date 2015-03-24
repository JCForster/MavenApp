package org.app;

public class Subscriber {

    private String userName;
    private String email;
    private Gender gender;
    private Boolean receiveNewsletter;
    private String password;

    public enum Frequency {
        HOURLY, DAILY, WEEKLY, MONTHLY, ANNUALLY
    }

    public enum Gender {
        MALE, FEMALE, NONE_GIVEN
    }

    public String getPassword() { return password; }

    public void setPassword(String password) { this.password = password; }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String name) {
        this.userName = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public Boolean getReceiveNewsletter() {
        return receiveNewsletter;
    }

    public void setReceiveNewsletter(Boolean receiveNewsletter) {
        this.receiveNewsletter = receiveNewsletter;
    }

    @Override
    public String toString() {
        return "Subscriber [name=" + userName + ", gender=" + gender
                + "password =" + password
                + ", receiveNewsletter=" + receiveNewsletter + "]";
    }

}