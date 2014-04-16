package com.baway.action;

/**
 * login operaion of login
 * 
 * @author wujinsong
 */
public class LoginAction {
    
    /**
     * the user's name
     */
    private String username;
    /**
     * the user's password
     */
    private String password;
    
    /**
     * get the user's name
     * 
     * @return
     */
    public String getUsername()
    {
        return username;
    }
    
    /**
     * set the user's name
     * 
     * @param username
     */
    public void setUserName(String username) {
        this.username = username;
    }
    
    /**
     * get the user's password
     * 
     * @return
     */
    public String getPassword() {
        return password;
    }
    
    /**
     * set the user's password
     * 
     * @param password
     */
    public void setPassword(String password) {
        this.password = password;
        
    }
    
    /**
     * the operation
     * 
     * @return
     * @throws Exception
     */
    public String execute() throws Exception {
        if ("wujinsong".equals(username))
            return "success";
        else
            return "error";
    }
}
