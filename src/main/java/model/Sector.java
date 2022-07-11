package model;

public class Sector {
    private int idKV;
    private String province;
    private String district;
    private String  subDistrict;
    
    public Sector() {
    }

    public Sector(int idKV, String province, String district, String subDistrict) {
        this.idKV = idKV;
        this.province = province;
        this.district = district;
        this.subDistrict = subDistrict;
    }

    public int getIdKV() {
        return idKV;
    }

    public void setIdKV(int idKV) {
        this.idKV = idKV;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getSubDistrict() {
        return subDistrict;
    }

    public void setSubDistrict(String subDistrict) {
        this.subDistrict = subDistrict;
    }
}
