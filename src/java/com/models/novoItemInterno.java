package com.models;

import com.interfaces.methods.ServiceRequest;
import com.models.data.ItemInterno;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class novoItemInterno implements ServiceRequest{

    @Override
    public void doService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        HttpSession session = (HttpSession)request.getSession(false);
        ArrayList<ItemInterno> items = (ArrayList<ItemInterno>)session.getAttribute("itemsInternos");
        if(items == null)
            items = new ArrayList<>();
        
        String item = (String)request.getParameter("item");
        String classificacao = (String)request.getParameter("classificacao");
        String importancia  = (String)request.getParameter("importancia");
            
        if(!item.equals("") && classificacao != null && importancia != null)
        {
            if(items.isEmpty() || !item.equals(items.get(items.size()-1).getItem()))
            {
                ItemInterno itemInterno = new ItemInterno(item,classificacao,importancia);
                itemInterno.calcPontuacao();
                itemInterno.setPontuacao(itemInterno.getPontuacao());
                items.add(itemInterno);
                session.setAttribute("itemsInternos", items);
            }
        }
        
        request.getRequestDispatcher("novaanalise").forward(request, response);
    }
    
}
