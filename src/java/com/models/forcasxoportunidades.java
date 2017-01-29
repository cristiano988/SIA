package com.models;

import com.interfaces.methods.ServiceRequest;
import com.models.data.ItemInterno;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class forcasxoportunidades implements ServiceRequest{

    @Override
    public void doService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        HttpSession session = (HttpSession)request.getSession();
        
        if(session.getAttribute("user") == null)
            request.getRequestDispatcher("login").forward(request, response);
        
        request.getRequestDispatcher("/views/content/private/forcasxoportunidades.jsp").forward(request, response);
    }
    
}
