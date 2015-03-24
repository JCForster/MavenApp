package org.app;

/**
 * Created by Joel on 24/03/2015.
 */
public class LoginToken {

    private String userName;
    private String password;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Subscriber [name=" + userName
                + "password =" + password
               + "]";
    }
}
