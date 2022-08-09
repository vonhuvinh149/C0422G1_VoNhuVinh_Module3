package repository.facility_repository;

import model.facility.Facility;
import model.facility.FacilityType;
import model.facility.RentType;

import java.util.List;

public interface IRepositoryFacility {
    List<Facility> findAllFacility();

    void addFacility(Facility facility);

    void deleteFacility(int id);

    void updateFacility(Facility facility);

    Facility findByIdFacility(int id);

    List<RentType> showRentFacility();
    List<FacilityType> showFacilityType();
    List<Facility> searchByName(String name);
}
