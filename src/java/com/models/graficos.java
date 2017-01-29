package com.models;

import com.interfaces.methods.ServiceRequest;
import com.models.data.Importancias;
import com.models.data.ItemInterno;
import com.models.data.User;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class graficos implements ServiceRequest{

    @Override
    public void doService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        HttpSession session = (HttpSession)request.getSession();
        if(session.getAttribute("user") == null)
            request.getRequestDispatcher("login").forward(request, response);
        
        List<ItemInterno> forcasInternas = (ArrayList<ItemInterno>)session.getAttribute("forcasInternas");
        List<ItemInterno> oportunidadesExternas = (ArrayList<ItemInterno>)session.getAttribute("oportunidadesExternas");
        List<ItemInterno> fraquezasInternas = (ArrayList<ItemInterno>)session.getAttribute("fraquezasInternas");
        List<ItemInterno> ameacasExternas = (ArrayList<ItemInterno>)session.getAttribute("ameacasExternas");
        
        float forcas = 0.0f;
        float oportunidades = 0.0f;
        float fraquezas = 0.0f;
        float ameacas = 0.0f;
        
        for(ItemInterno forca : forcasInternas)
            forcas = forcas += forca.getPontuacao();
        for(ItemInterno oportunidade : oportunidadesExternas)
            oportunidades += oportunidade.getPontuacao();
        for(ItemInterno fraqueza : fraquezasInternas)
            fraquezas += fraqueza.getPontuacao();
        for(ItemInterno ameaca : ameacasExternas)
            ameacas += ameaca.getPontuacao();
        
        session.setAttribute("forcas", forcas);
        session.setAttribute("oportunidades", oportunidades);
        session.setAttribute("fraquezas", fraquezas);
        session.setAttribute("ameacas", ameacas);
        
        session.setAttribute("forcasImportancias", countNum(forcasInternas));
        session.setAttribute("oportunidadesImportancias", countNum(oportunidadesExternas));
        session.setAttribute("fraquezasImportancias", countNum(fraquezasInternas));
        session.setAttribute("ameacasImportancias", countNum(ameacasExternas));
        
        
        request.getRequestDispatcher("/views/content/private/graficos.jsp").forward(request, response);
    }
    
    private Importancias countNum(List<ItemInterno> items)
    {
        Importancias importancia;
        int totalmenteSemImportancia = 0;
        int poucaImportancia = 0;
        int importante = 0;
        int muitoImportante = 0;
        int totalmenteImportante = 0;
        
        for(ItemInterno item : items)
        {
            switch(item.getImportancia())
            {
                case "Totalmente sem importancia":
                    totalmenteSemImportancia++;
                    break;
                case "Pouca Importancia":
                    poucaImportancia++;
                    break;
                case "Importante":
                    importante++;
                    break;
                case "Muito Importante":
                    muitoImportante++;
                    break;
                case "Totalmente Importante":
                    totalmenteImportante++;
                    break;
                default:
                    break;
            }
        }
        
        importancia = new Importancias(totalmenteSemImportancia,poucaImportancia,importante,muitoImportante,totalmenteImportante);
        return importancia;
    }
    
}
