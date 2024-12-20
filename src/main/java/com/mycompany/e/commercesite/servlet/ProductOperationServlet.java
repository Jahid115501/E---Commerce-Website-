package com.mycompany.e.commercesite.servlet;

import com.mycompany.e.commercesite.dao.CategoryDao;
import com.mycompany.e.commercesite.dao.ProductDao;
import com.mycompany.e.commercesite.entites.Category;
import com.mycompany.e.commercesite.entites.Product;
import com.mycompany.e.commercesite.helper.FactoryProvider;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
public class ProductOperationServlet extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String op = request.getParameter("operation");
            
            if (op.trim().equals("addcategory")) {
                
                String title = request.getParameter("categoryTitle");
                String description = request.getParameter("categoryDescription");
                
                Category category = new Category();
                category.setCategoryTitle(title);
                category.setCategoryDescription(description);
                
                
                //category save in database
               CategoryDao categoryDao = new CategoryDao(FactoryProvider.getFactory());
               int catId = categoryDao.saveCategory(category);
               
                // Set success message in request
                 request.setAttribute("successMessage", "Category Saved Successfully!");
    
                 // Redirect back to the Admin page where the message will be displayed
                 request.getRequestDispatcher("message_cat.jsp").forward(request, response);

                
                
            } else if (op.trim().equals("addproduct")){
                
                String pName = request.getParameter("pName");
                String pDescp = request.getParameter("pDescp");
                int pPrice = Integer.parseInt(request.getParameter("pPrice"));
                int pDiscount = Integer.parseInt(request.getParameter("pDiscount"));
                int pQuantity = Integer.parseInt(request.getParameter("pQuantity"));
                int catId = Integer.parseInt(request.getParameter("catId"));
                
                Part part = request.getPart("pPhoto");
                
                Product p = new Product();
                
                p.setpName(pName);
                p.setpDescp(pDescp);
                p.setpPrice(pPrice);
                p.setpDiscount(pDiscount);
                p.setpQuantity(pQuantity);
                p.setpPhoto(part.getSubmittedFileName());
                
                
               //get category by id
               CategoryDao cdao = new CategoryDao(FactoryProvider.getFactory());
               Category category = cdao.getCategoryById(catId);
               
               p.setCategory(category);
               
               //product save...
                ProductDao pdao =new ProductDao(FactoryProvider.getFactory());
               pdao.saveProduct(p);
               
               
               String path = request.getRealPath("img") + File.separator +"products"+File.separator+part.getSubmittedFileName();
                System.out.println(path);
                
              try{
                FileOutputStream fos = new FileOutputStream(path);
                
                InputStream is = part.getInputStream();
                
                
                byte []data = new byte[is.available()];
                
                is.read(data);
                
                fos.write(data);
                fos.close();
                
              }catch(Exception e){
                  e.printStackTrace();
              }
               // Set success message in request
                 request.setAttribute("successMessage", "Product Saved Successfully!");
    
               // Redirect back to the Admin page where the message will be displayed
                 request.getRequestDispatcher("message_cat.jsp").forward(request, response);
                
                
            }
        }
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