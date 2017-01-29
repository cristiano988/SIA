package com.models.data;

public class User {
    
    private String username;
    private String email;
    
    public User()
    {
        
    }
    
    public User(String username,String email)
    {
        setUsername(username);
        setEmail(email);
    }
    
    public void setUsername(String username)
    {
        this.username = username;
    }
    
    public void setEmail(String email)
    {
        this.email = email;
    }
    
    public String getUsername()
    {
        return this.username;
    }
    
    public String getEmail()
    {
        return this.email;
    }
}
