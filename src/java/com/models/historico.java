package com.models;

import com.interfaces.methods.ServiceRequest;
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

public class historico implements ServiceRequest{

    @Override
    public void doService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        
        if(user == null)
            request.getRequestDispatcher("login").forward(request, response);
        
        Connection conn = ConnectionFactory.getConnection("root", "");
        String sql = "SELECT id FROM users WHERE username = '" + user.getUsername() + "'";
        PreparedStatement stm = null;
        ResultSet result = null;
        int user_id = 0;
        int analis_id = 0;
        List<Tecnica> forcasxAmeacas = new ArrayList<Tecnica>();
        List<Tecnica> forcasxOportunidades = new ArrayList<Tecnica>();
        List<Tecnica> fraquezasxAmeacas = new ArrayList<Tecnica>();
        List<Tecnica> fraquezasxOportunidades = new ArrayList<Tecnica>();
        
        try {
            stm = conn.prepareStatement(sql);
            result = stm.executeQuery();
            if(result.first())
            {
                user_id = result.getInt("id");
            }
                sql = "SELECT id FROM analis WHERE analis.id_user = " + user_id;
                stm = conn.prepareStatement(sql);
                result = stm.executeQuery();
                if(result.first())
                {
                    analis_id = result.getInt("id");
                }
                sql = "SELECT * FROM forcasxameacas WHERE id_analis = " + analis_id + ";";
                stm = conn.prepareStatement(sql);
                result = stm.executeQuery();
                if(result.first())
                {
                    do{
                        forcasxAmeacas.add(new Tecnica(result.getString("forca"),result.getString("ameaca"),result.getString("texto"),result.getString("status")));
                    }while(result.next());
                }
                sql = "SELECT * FROM forcasxoportunidades WHERE id_analis = " + analis_id + ";";
                stm = conn.prepareStatement(sql);
                result = stm.executeQuery();
                if(result.first())
                {
                    do{
                        forcasxOportunidades.add(new Tecnica(result.getString("forca"),result.getString("oportunidade"),result.getString("texto"),result.getString("status")));
                    }while(result.next());
                }
                sql = "SELECT * FROM fraquezasxameacas WHERE id_analis = " + analis_id + ";";
                stm = conn.prepareStatement(sql);
                result = stm.executeQuery();
                if(result.first())
                {
                    do{
                        forcasxAmeacas.add(new Tecnica(result.getString("fraquezas"),result.getString("ameacas"),result.getString("texto"),result.getString("status")));
                    }while(result.next());
                }
                sql = "SELECT * FROM fraquezasxoportunidades WHERE id_analis = " + analis_id + ";";
                stm = conn.prepareStatement(sql);
                result = stm.executeQuery();
                if(result.first())
                {
                    do{
                        fraquezasxOportunidades.add(new Tecnica(result.getString("fraquezas"),result.getString("oportunidades"),result.getString("texto"),result.getString("status")));
                    }while(result.next());
                }
        } catch (SQLException ex) {
            Logger.getLogger(historico.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        session.setAttribute("forcasxAmeacas", forcasxAmeacas);
        session.setAttribute("forcasxOportunidades", forcasxOportunidades);
        session.setAttribute("fraquezasxAmeacas", fraquezasxAmeacas);
        session.setAttribute("fraquezasxOportunidades", fraquezasxOportunidades);
        
        request.getRequestDispatcher("views/content/private/historico.jsp").forward(request, response);
    }
    
}
