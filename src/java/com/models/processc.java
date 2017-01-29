package com.models;

import com.interfaces.methods.ServiceRequest;
import com.models.data.ItemInterno;
import com.models.data.Tecnica;
import com.models.data.User;
import com.sia.database.ConnectionFactory;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class processc implements ServiceRequest{

    @Override
    public void doService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        
        List<ItemInterno> forcasInternas = (ArrayList<ItemInterno>)session.getAttribute("forcasInternas");
        List<ItemInterno> oportunidadesExternas = (ArrayList<ItemInterno>)session.getAttribute("oportunidadesExternas");
        List<ItemInterno> fraquezasInternas = (ArrayList<ItemInterno>)session.getAttribute("fraquezasInternas");
        List<ItemInterno> ameacasExternas = (ArrayList<ItemInterno>)session.getAttribute("ameacasExternas");
        List<Tecnica> forcasxOportunidades = new ArrayList<Tecnica>();
        List<Tecnica> forcasxAmeacas = new ArrayList<Tecnica>();
        List<Tecnica> fraquezasxOportunidades = new ArrayList<Tecnica>();
        List<Tecnica> fraquezasxAmeacas = new ArrayList<Tecnica>();
        
        int user_id;
        int id  = 0;
        User user = (User)session.getAttribute("user");
        String sql = "SELECT id FROM users WHERE username = '" + user.getUsername() + "'";
        Connection conn = ConnectionFactory.getConnection("root", "");
        PreparedStatement stm = null;
        ResultSet result = null;
        try {
            stm = conn.prepareStatement(sql);
            result = stm.executeQuery();
            if(result.first())
            {
                user_id = result.getInt("id");
                sql = "INSERT INTO analis(id_user) VALUES(" + user_id + ");";
                stm = conn.prepareStatement(sql);
                stm.execute();
            }
                sql = "SELECT MAX(id) FROM analis";
                stm = conn.prepareStatement(sql);
                result = stm.executeQuery();
                if(result.first())
                {
                    id = result.getInt("MAX(id)");
                }
        } catch (SQLException ex) {
            Logger.getLogger(processc.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        //Forcas x  Oportunidades
        for(ItemInterno item : forcasInternas)
        {
            String oportunity = (String)request.getParameter("oportunidades1" + item.getItem());
            String texto = (String)request.getParameter("forcaxoptext" + item.getItem());
            String status = (String)request.getParameter("forcaxopselect" + item.getItem());
            forcasxOportunidades.add(new Tecnica(item.getItem(),oportunity,texto,status));
            sql = "INSERT INTO forcasxoportunidades(id_analis,forca,oportunidade,texto,status) VALUES(" + id + ",'" + item.getItem() + "','"
                    + oportunity + "','" + texto + "','" + status + "')";
            try {
                stm = conn.prepareStatement(sql);
                stm.execute();
            } catch (SQLException ex) {
                Logger.getLogger(processc.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        //Forcas x  Ameaças
        for(ItemInterno item : forcasInternas)
        {
            String ameaca = (String)request.getParameter("ameacas1" + item.getItem());
            String text = (String)request.getParameter("forcaxameacatext" + item.getItem());
            String status = (String)request.getParameter("forcaxameacaselect" + item.getItem());
            forcasxAmeacas.add(new Tecnica(item.getItem(),ameaca,text,status));
            sql = "INSERT INTO forcasxameacas(id_analis,forca,ameaca,texto,status) VALUES(" + id + ",'" + item.getItem() + "','"
                    + ameaca + "','" + text + "','" + status + "')";
            try {
                stm = conn.prepareStatement(sql);
                stm.execute();
            } catch (SQLException ex) {
                Logger.getLogger(processc.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        //Fraquezas x  Oportunidades
        for(ItemInterno item : fraquezasInternas)
        {
            String oportunidade = (String)request.getParameter("oportunidades2" + item.getItem());
            String text = (String)request.getParameter("fraquezaxoportunidadetext" + item.getItem());
            String status = (String)request.getParameter("fraquezaxoportunidadeselect" + item.getItem());
            fraquezasxOportunidades.add(new Tecnica(item.getItem(),oportunidade,text,status));
            sql = "INSERT INTO fraquezasxoportunidades(id_analis,fraquezas,oportunidades,texto,status) VALUES(" + id + ",'" + item.getItem() + "','"
                    + oportunidade + "','" + text + "','" + status + "')";
            try {
                stm = conn.prepareStatement(sql);
                stm.execute();
            } catch (SQLException ex) {
                Logger.getLogger(processc.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        //Fraquezas x  Ameaças
        for(ItemInterno item : fraquezasInternas)
        {
            String ameaca = (String)request.getParameter("ameacas2" + item.getItem());
            String text = (String)request.getParameter("fraquezaxameacatext" + item.getItem());
            String status = (String)request.getParameter("fraquezaxameacaselect" + item.getItem());
            fraquezasxAmeacas.add(new Tecnica(item.getItem(),ameaca,text,status));
            sql = "INSERT INTO fraquezasxameacas(id_analis,fraquezas,ameacas,texto,status) VALUES(" + id + ",'" + item.getItem() + "','"
                    + ameaca + "','" + text + "','" + status + "')";
            try {
                stm = conn.prepareStatement(sql);
                stm.execute();
            } catch (SQLException ex) {
                Logger.getLogger(processc.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        request.getRequestDispatcher("index").forward(request, response);
    }
    
}
