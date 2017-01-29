package com.models;

import com.interfaces.methods.ServiceRequest;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class processboot implements ServiceRequest{

    @Override
    public void doService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String op1 = (String)request.getAttribute("op1");
        String op2 = (String)request.getAttribute("op2");
        
        System.out.println(op1);
        System.out.println(op2);
        
        request.getRequestDispatcher("index").forward(request, response);
    }
    
}
