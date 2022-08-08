package service.facility_service;

import model.facility.Facility;
import model.facility.FacilityType;
import model.facility.RentType;

import java.util.List;

public interface IFacility {
    List<Facility> findAllFacility();

    void addFacility(Facility facility);

    void deleteFacility(int id);

    void updateFacility(Facility facility);

    Facility findByIdFacility(int id);

    List<RentType> showRentFacility();

    List<FacilityType> showFacilityType();

}
