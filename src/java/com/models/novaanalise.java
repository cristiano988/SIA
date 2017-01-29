package com.models;

import com.interfaces.methods.ServiceRequest;
import com.models.data.User;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class novaanalise implements ServiceRequest{

    @Override
    public void doService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        if((User)request.getSession().getAttribute("user") != null)
            request.getRequestDispatcher("views/content/private/novaanalise.jsp").forward(request, response);
        else
            request.getRequestDispatcher("login").forward(request, response);
    }
    
}
