package com.controller.main;

import java.io.IOException;
import java.io.PrintWriter;
import javax.json.JsonObject;
import javax.json.JsonValue;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "getanalisegeral", urlPatterns = {"/getanalisegeral"})
public class getanalisegeral extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        
        String jsonTemplate = "{\n" +
"  \"cols\": [\n" +
"        {\"id\":\"\",\"label\":\"Topping\",\"pattern\":\"\",\"type\":\"string\"},\n" +
"        {\"id\":\"\",\"label\":\"Slices\",\"pattern\":\"\",\"type\":\"number\"}\n" +
"      ],\n" +
"  \"rows\": [\n" +
"        {\"c\":[{\"v\":\"Mushrooms\",\"f\":null},{\"v\":3,\"f\":null}]},\n" +
"        {\"c\":[{\"v\":\"Onions\",\"f\":null},{\"v\":1,\"f\":null}]},\n" +
"        {\"c\":[{\"v\":\"Olives\",\"f\":null},{\"v\":1,\"f\":null}]},\n" +
"        {\"c\":[{\"v\":\"Zucchini\",\"f\":null},{\"v\":1,\"f\":null}]},\n" +
"        {\"c\":[{\"v\":\"Pepperoni\",\"f\":null},{\"v\":2,\"f\":null}]}\n" +
"      ]\n" +
"}";
        
        String myJson = "{"
                + "\"cols\" : [{\"label\":\"id\",\"type\":\"string\"},{\"label\":\"name\",\"type\":\"number\"}],"
                + "\"rows\" : [{\"c\":[{\"v\":\"id_1_cris\"},{\"v\":1}]},{\"c\":[{\"v\":\"id_2_cristiano\"},{\"v\":5}]}"
                + "]"
                + "}";
        
        String jsonTeste = "{\n" +
"  \"cols\": [\n" +
"        {\"label\":\"Topping\"},\n" +
"        {,\"label\":\"Slices\"}\n" +
"      ],\n" +
"  \"rows\": [\n" +
"        {\"c\":[{\"v\":\"Mushrooms\"},{\"v\":3}]},\n" +
"        {\"c\":[{\"v\":\"Onions\"},{\"v\":1}]},\n" +
"        {\"c\":[{\"v\":\"Olives\"},{\"v\":1}]},\n" +
"        {\"c\":[{\"v\":\"Zucchini\"},{\"v\":1}]},\n" +
"        {\"c\":[{\"v\":\"Pepperoni\"},{\"v\":2}]}\n" +
"      ]\n" +
"}";
        
        response.setContentType("application/json");
        response.getWriter().print(jsonTeste);
        response.getWriter().flush();
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
