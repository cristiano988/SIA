package com.models;

import com.interfaces.methods.ServiceRequest;
import com.models.data.User;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sia.database.ConnectionFactory;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;

public class signin implements ServiceRequest{

    @Override
    public void doService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email;
        String password;
        
        email = request.getParameter("email");
        password = request.getParameter("password");
        
        Connection conn = ConnectionFactory.getConnection("root", "");
        
        if(conn == null)
        {
            System.out.println("Login Error");
            
        }else{
            String sql = "select checkUser(?,?)";
            try {
                CallableStatement stm = conn.prepareCall(sql);
                stm.setString(1, email);
                stm.setString(2, password);
                ResultSet result = stm.executeQuery();
                
                if(result.first())
                {
                    int exists = result.getInt(1);
                    switch(exists)
                    {
                        case 0:
                            request.getRequestDispatcher("login").forward(request, response);
                            break;
                        case 1:
                            sql = "select getUserName(?)";
                            stm = conn.prepareCall(sql);
                            stm.setString(1, email);
                            result = stm.executeQuery();
                            if(result.first())
                            {
                                HttpSession session = request.getSession(true);
                                User user = new User(result.getString(1),email);
                                session.setAttribute("user", user);
                            }
                            request.getRequestDispatcher("index").forward(request, response);
                            break;
                        default:
                            request.getRequestDispatcher("login").forward(request, response);
                            break;
                    }
                }
                
            } catch (SQLException ex) {
                Logger.getLogger(signin.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
    
}
