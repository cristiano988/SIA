package com.models;

import com.interfaces.methods.ServiceRequest;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class logout implements ServiceRequest{

    @Override
    public void doService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        HttpSession session = request.getSession(false);
        if(session != null)
            session.invalidate();
        request.getRequestDispatcher("index").forward(request, response);
        
    }
    
}
