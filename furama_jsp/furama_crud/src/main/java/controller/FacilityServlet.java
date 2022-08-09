package controller;

import model.facility.Facility;
import model.facility.FacilityType;
import model.facility.RentType;
import service.facility_service.IFacility;
import service.facility_service.impl.FacilityService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FacilityServlet", urlPatterns = "/facility")
public class FacilityServlet extends HttpServlet {
    private static IFacility facilityService = new FacilityService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showCreateFacility(request, response);
                break;
            case "delete":
                showDeleteFacility(request, response);
                break;
            case "update":
                showUpdateFacility(request, response);
                break;
            default:
                showListFacility(request, response);
        }
    }

    private void showListFacility(HttpServletRequest request, HttpServletResponse response) {
        List<Facility> facilityList = facilityService.findAllFacility();
        request.setAttribute("facilityList", facilityList);
        try {
            request.getRequestDispatcher("furama/facility/list_facility.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showUpdateFacility(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("facilityID"));
        List<RentType> rentTypeList = facilityService.showRentFacility();
        List<FacilityType> facilityList = facilityService.showFacilityType();
        Facility facility = facilityService.findByIdFacility(id);
        request.setAttribute("facility",facility);
        request.setAttribute("facilityList",facilityList);
        request.setAttribute("rentTypeList",rentTypeList);
        try {
            request.getRequestDispatcher("furama/facility/update.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showDeleteFacility(HttpServletRequest request, HttpServletResponse response) {
        int facilityId = Integer.parseInt(request.getParameter("facilityID"));
        facilityService.deleteFacility(facilityId);
        showListFacility(request, response);
    }

    private void showCreateFacility(HttpServletRequest request, HttpServletResponse response) {
        List<FacilityType> facilityTypeList = facilityService.showFacilityType();
        List<RentType> rentTypeList = facilityService.showRentFacility();
        request.setAttribute("rentTypeList",rentTypeList);
        request.setAttribute("facilityTypeList", facilityTypeList);
        try {
            request.getRequestDispatcher("furama/facility/add_facility.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                addFacility(request, response);
                break;
            case "update":
                updateFacility(request,response);
                break;
                case "search":
                showSearchFacility(request,response);
                break;
        }
    }

    private void showSearchFacility(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        List<Facility> facilityList = facilityService.searchByName(name);
        request.setAttribute("facilityList",facilityList);
        try {
            request.getRequestDispatcher("furama/facility/list_facility.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void updateFacility(HttpServletRequest request, HttpServletResponse response) {
        String facilityName = request.getParameter("facilityName");
        int facilityArea = Integer.parseInt(request.getParameter("facilityArea"));
        double facilityCost = Double.parseDouble(request.getParameter("facilityCost"));
        int facilityMaxPeople = Integer.parseInt(request.getParameter("facilityMaxPeople"));
        int rentTypeId = Integer.parseInt(request.getParameter("rentTypeId"));
        int facilityTypeId = Integer.parseInt(request.getParameter("facilityTypeId"));
        String standardRoom = request.getParameter("standardRoom");
        String description = request.getParameter("description");
        double poolArea = Double.parseDouble(request.getParameter("poolArea"));
        int numberOfFloor = Integer.parseInt(request.getParameter("numberOfFloor"));
        String facilityFree = request.getParameter("facilityFree");
        int facilityId = Integer.parseInt(request.getParameter("facilityId"));
        Facility facility = new Facility(facilityId,facilityName, facilityArea
                , facilityCost, facilityMaxPeople, rentTypeId, facilityTypeId, standardRoom, description, poolArea, numberOfFloor, facilityFree);
        facilityService.updateFacility(facility);
        showListFacility(request, response);
    }

    private void addFacility(HttpServletRequest request, HttpServletResponse response) {
        String facilityName = request.getParameter("facilityName");
        int facilityArea = Integer.parseInt(request.getParameter("facilityArea"));
        double facilityCost = Double.parseDouble(request.getParameter("facilityCost"));
        int facilityMaxPeople = Integer.parseInt(request.getParameter("facilityMaxPeople"));
        int rentTypeId = Integer.parseInt(request.getParameter("rentTypeId"));
        int facilityTypeId = Integer.parseInt(request.getParameter("facility_type"));
        String standardRoom = request.getParameter("standardRoom");
        String description = request.getParameter("description");
        double poolArea = Double.parseDouble(request.getParameter("poolArea"));
        int numberOfFloor = Integer.parseInt(request.getParameter("numberOfFloor"));
        String facilityFree = request.getParameter("facilityFree");
        Facility facility = new Facility(facilityName, facilityArea
                , facilityCost, facilityMaxPeople, rentTypeId, facilityTypeId, standardRoom, description, poolArea, numberOfFloor, facilityFree);
        facilityService.addFacility(facility);
        showListFacility(request, response);
    }
}
