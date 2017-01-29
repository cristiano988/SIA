package com.models;

import com.interfaces.methods.ServiceRequest;
import com.models.data.ItemInterno;
import com.models.data.User;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class eliminarfator implements ServiceRequest{

    @Override
    public void doService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        HttpSession session =  (HttpSession)request.getSession();
        
        User user = (User)session.getAttribute("user");
        ArrayList<ItemInterno> itemsInternos = (ArrayList<ItemInterno>)session.getAttribute("itemsInternos");
        ArrayList<ItemInterno> itemsExternos = (ArrayList<ItemInterno>)session.getAttribute("itemsExternos");
        
        if(user == null)
        {
            request.getRequestDispatcher("login").forward(request, response);
        }
        
        if(!itemsInternos.isEmpty())
        {
            for(ItemInterno item : itemsInternos)
            {
                String attribute = (String)request.getParameter(item.getItem());
                if(attribute != null)
                {
                    itemsInternos.remove(item);
                    break;
                }
            }
        }
        if(itemsExternos != null && !itemsExternos.isEmpty())
        {
            for(ItemInterno item : itemsExternos)
            {
                String attribute = (String)request.getParameter(item.getItem());
                if(attribute != null)
                {
                    itemsExternos.remove(item);
                    break;
                }
            }
        }
        
        session.setAttribute("itemsInternos", itemsInternos);
        session.setAttribute("itemsExternos", itemsExternos);
        
        request.getRequestDispatcher("novaanalise").forward(request, response);
    }
    
}
