
package com.pds_web_maven.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "contact_info")
public class contact_info {

    @Id
    @Column(name = "contact_id")
    private Integer contactId;
    @Column(name = "res_house_no")
    private String resHouseNo;
    @Column(name = "res_house_street")
    private String resHouseStreet;
    @Column(name = "res_village")
    private String resVillage;
    @Column(name = "res_bgy")
    private String resBgy;
    @Column(name = "res_citymun")
    private String resCitymun;
    @Column(name = "res_prov")
    private String resProv;
    @Size(max = 5)
    @Column(name = "res_zipcode")
    private String resZipcode;
    @Column(name = "perm_house_no")
    private String permHouseNo;
    @Column(name = "perm_house_street")
    private String permHouseStreet;
    @Column(name = "perm_village")
    private String permVillage;
    @Column(name = "perm_bgy")
    private String permBgy;
    @Column(name = "perm_citymun")
    private String permCitymun;
    @Column(name = "perm_prov")
    private String permProv;
    @Column(name = "perm_zipcode")
    private String permZipcode;
    @Size(max = 20)
    @Column(name = "tel_no")
    private String telNo;
    @Size(max = 20)
    @Column(name = "mobile_no")
    private String mobileNo;
    @Column(name = "email_address")
    private String emailAddress;

    public contact_info() {
    }

    public contact_info(Integer contactId) {
        this.contactId = contactId;
    }

    public Integer getContactId() {
        return contactId;
    }

    public void setContactId(Integer contactId) {
        this.contactId = contactId;
    }

    public String getResHouseNo() {
        return resHouseNo;
    }

    public void setResHouseNo(String resHouseNo) {
        this.resHouseNo = resHouseNo;
    }

    public String getResHouseStreet() {
        return resHouseStreet;
    }

    public void setResHouseStreet(String resHouseStreet) {
        this.resHouseStreet = resHouseStreet;
    }

    public String getResVillage() {
        return resVillage;
    }

    public void setResVillage(String resVillage) {
        this.resVillage = resVillage;
    }

    public String getResBgy() {
        return resBgy;
    }

    public void setResBgy(String resBgy) {
        this.resBgy = resBgy;
    }

    public String getResCitymun() {
        return resCitymun;
    }

    public void setResCitymun(String resCitymun) {
        this.resCitymun = resCitymun;
    }

    public String getResProv() {
        return resProv;
    }

    public void setResProv(String resProv) {
        this.resProv = resProv;
    }

    public String getResZipcode() {
        return resZipcode;
    }

    public void setResZipcode(String resZipcode) {
        this.resZipcode = resZipcode;
    }

    public String getPermHouseNo() {
        return permHouseNo;
    }

    public void setPermHouseNo(String permHouseNo) {
        this.permHouseNo = permHouseNo;
    }

    public String getPermHouseStreet() {
        return permHouseStreet;
    }

    public void setPermHouseStreet(String permHouseStreet) {
        this.permHouseStreet = permHouseStreet;
    }

    public String getPermVillage() {
        return permVillage;
    }

    public void setPermVillage(String permVillage) {
        this.permVillage = permVillage;
    }

    public String getPermBgy() {
        return permBgy;
    }

    public void setPermBgy(String permBgy) {
        this.permBgy = permBgy;
    }

    public String getPermCitymun() {
        return permCitymun;
    }

    public void setPermCitymun(String permCitymun) {
        this.permCitymun = permCitymun;
    }

    public String getPermProv() {
        return permProv;
    }

    public void setPermProv(String permProv) {
        this.permProv = permProv;
    }

    public String getPermZipcode() {
        return permZipcode;
    }

    public void setPermZipcode(String permZipcode) {
        this.permZipcode = permZipcode;
    }

    public String getTelNo() {
        return telNo;
    }

    public void setTelNo(String telNo) {
        this.telNo = telNo;
    }

    public String getMobileNo() {
        return mobileNo;
    }

    public void setMobileNo(String mobileNo) {
        this.mobileNo = mobileNo;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (contactId != null ? contactId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof contact_info)) {
            return false;
        }
        contact_info other = (contact_info) object;
        if ((this.contactId == null && other.contactId != null) || (this.contactId != null && !this.contactId.equals(other.contactId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.pds_web_maven.entities.ContactInfo[ contactId=" + contactId + " ]";
    }
    
}
