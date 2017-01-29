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

public class matriz implements ServiceRequest{

    @Override
    public void doService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = (HttpSession)request.getSession();
        
        ArrayList<ItemInterno> itemsInternos = (ArrayList<ItemInterno>)session.getAttribute("itemsInternos");
        ArrayList<ItemInterno> itemsExternos = (ArrayList<ItemInterno>)session.getAttribute("itemsExternos");
        
        if(itemsInternos == null || itemsExternos == null || (User)session.getAttribute("user") == null)
            request.getRequestDispatcher("novaanalise").forward(request, response);
        
        ArrayList<ItemInterno> forcasInternas = new ArrayList<>();
        ArrayList<ItemInterno> fraquezasInternas = new ArrayList<>();
        ArrayList<ItemInterno> oportunidadesExternas = new ArrayList<>();
        ArrayList<ItemInterno> ameacasExternas = new ArrayList<>();
        
        for(ItemInterno item : itemsInternos)
        {
            if(item.getClassificacao().equalsIgnoreCase("Forca"))
                forcasInternas.add(item);
            else
                fraquezasInternas.add(item);
        }
        
        for(ItemInterno item : itemsExternos)
        {
            if(item.getClassificacao().equalsIgnoreCase("Oportunidade"))
                oportunidadesExternas.add(item);
            else
                ameacasExternas.add(item);
        }
        
        session.setAttribute("forcasInternas", forcasInternas);
        session.setAttribute("fraquezasInternas", fraquezasInternas);
        session.setAttribute("oportunidadesExternas", oportunidadesExternas);
        session.setAttribute("ameacasExternas", ameacasExternas);
        
        request.getRequestDispatcher("views/content/private/matriz.jsp").forward(request, response);
            
    }
    
}
