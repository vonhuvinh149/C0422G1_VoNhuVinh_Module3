package model.facility;

public class FacilityType {
    private int facilityTypeID;
    private String facilityTypeName;

    public FacilityType() {
    }

    public FacilityType(int serviceTypeId, String serviceTypeName) {
        this.facilityTypeID = serviceTypeId;
        this.facilityTypeName = serviceTypeName;
    }

    public int getFacilityTypeID() {
        return facilityTypeID;
    }

    public void setFacilityTypeID(int facilityTypeID) {
        this.facilityTypeID = facilityTypeID;
    }

    public String getFacilityTypeName() {
        return facilityTypeName;
    }

    public void setFacilityTypeName(String facilityTypeName) {
        this.facilityTypeName = facilityTypeName;
    }
}
