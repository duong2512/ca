package controller;

import dao.ApartmentDAO;
import dao.SectorDAO;
import model.Apartment;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = "/showapartment")
public class ApartmentServlet extends HttpServlet {
    List<Apartment>apartments=new ArrayList<>();
    ApartmentDAO apartmentDAO = new ApartmentDAO();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action=req.getParameter("action");
        RequestDispatcher requestDispatcher = null;
        if (action==null){
            action="";
        }
        apartments=apartmentDAO.selectAll("a");

        switch (action){
            case "shownha":
                req.setAttribute("apartments",apartments);
                requestDispatcher = req.getRequestDispatcher("/showapartment.jsp");
                requestDispatcher.forward(req,resp);
                break;
            case "showchitiet":
                int idCH= Integer.parseInt(req.getParameter("idCH"));
                Apartment apartment = apartmentDAO.select(idCH,"id");
                req.setAttribute("apartment",apartment);
                requestDispatcher = req.getRequestDispatcher("/showchitiet.jsp");
                requestDispatcher.forward(req,resp);

        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action=req.getParameter("action");
        if (action==null){
            action="";
        }
//        switch (action){
//            case "create":
//                int userName= Integer.parseInt(req.getParameter("id"));
//                String province =req.getParameter("province");
//                String district =req.getParameter("district");
//                String subDistrict =req.getParameter("subDistrict");
//                String address =req.getParameter("address");
//                Double price = Double.valueOf(req.getParameter("price"));
//                Double area = Double.valueOf(req.getParameter("area"));
//                String picture = req.getParameter("picture");
//                String description=req.getParameter("description");
//                String status="Đang bán";
//                SectorDAO sectorDAO=new SectorDAO();
//                String classify;
//                apartmentDAO.addApartment(1,address,price,area,picture,status,description,,classify,userName,sectorDAO.findIDKV(province));
//        }
    }
}
