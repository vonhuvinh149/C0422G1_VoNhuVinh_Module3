package service.facility_service.impl;

import model.facility.Facility;
import model.facility.FacilityType;
import model.facility.RentType;
import repository.facility_repository.IRepositoryFacility;
import repository.facility_repository.impl.FacilityServiceRepository;
import service.facility_service.IFacility;

import java.util.List;

public class FacilityService implements IFacility {
private static IRepositoryFacility repositoryFacility = new FacilityServiceRepository();
    @Override
    public List<Facility> findAllFacility() {
        return repositoryFacility.findAllFacility();
    }

    @Override
    public void addFacility(Facility facility) {
           repositoryFacility.addFacility(facility);
    }

    @Override
    public void deleteFacility(int id) {
    repositoryFacility.deleteFacility(id);
    }

    @Override
    public void updateFacility(Facility facility) {
          repositoryFacility.updateFacility(facility);
    }

    @Override
    public Facility findByIdFacility(int id) {
        return repositoryFacility.findByIdFacility(id);
    }

    @Override
    public List<RentType> showRentFacility() {
        return repositoryFacility.showRentFacility();
    }

    @Override
    public List<FacilityType> showFacilityType() {
        return repositoryFacility.showFacilityType();
    }
}
