package com.pds_web_maven.entities;

import jakarta.persistence.Basic;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQueries;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import jakarta.xml.bind.annotation.XmlRootElement;

@Entity
@Table(name = "contact_info")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "contact_info.findAll", query = "SELECT c FROM contact_info c"),
    @NamedQuery(name = "contact_info.findByPID", query = "SELECT c FROM contact_info c WHERE c.p_id = :p_id")
})
public class contact_info {
    
    @Id
    @Basic(optional = false)
    @NotNull
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "contact_id")
    private Integer contactId;
    @Column(name = "p_id")
    private int p_id;
    @Size(max = 50)
    @Column(name = "res_house_no")
    private String resHouseNo;
    @Size(max = 50)
    @Column(name = "res_house_street")
    private String resHouseStreet;
    @Size(max = 50)
    @Column(name = "res_village")
    private String resVillage;
    @Size(max = 50)
    @Column(name = "res_bgy")
    private String resBgy;
    @Size(max = 50)
    @Column(name = "res_citymun")
    private String resCitymun;
    @Size(max = 50)
    @Column(name = "res_prov")
    private String resProv;
    @Size(max = 5)
    @Column(name = "res_zipcode")
    private String resZipcode;
    @Size(max = 50)
    @Column(name = "perm_house_no")
    private String permHouseNo;
    @Size(max = 50)
    @Column(name = "perm_house_street")
    private String permHouseStreet;
    @Size(max = 50)
    @Column(name = "perm_village")
    private String permVillage;
    @Size(max = 50)
    @Column(name = "perm_bgy")
    private String permBgy;
    @Size(max = 50)
    @Column(name = "perm_citymun")
    private String permCitymun;
    @Size(max = 50)
    @Column(name = "perm_prov")
    private String permProv;
    @Size(max = 5)
    @Column(name = "perm_zipcode")
    private String permZipcode;
    @Size(max = 20)
    @Column(name = "tel_no")
    private String telNo;
    @Size(max = 20)
    @Column(name = "mobile_no")
    private String mobileNo;
    @Size(max = 50)
    @Column(name = "email_address")
    private String emailAddress;

    public contact_info() {
    }
    
    public contact_info(Integer contactId) {
        this.contactId = contactId;
    }

    public contact_info(String contactId) {
        this.contactId = Integer.parseInt(contactId);
    }

//    public contact_info(Integer contactId, int p_id, String resHouseNo, String resHouseStreet, String resVillage, 
//                        String resBgy, String resCitymun, String resProv, String resZipcode, String permHouseNo, 
//                        String permHouseStreet, String permVillage, String permBgy, String permCitymun, String permProv, 
//                        String permZipcode, String telNo, String mobileNo, String emailAddress) {
//        this.contactId = contactId;
//        this.p_id = p_id;
//        this.resHouseNo = resHouseNo;
//        this.resHouseStreet = resHouseStreet;
//        this.resVillage = resVillage;
//        this.resBgy = resBgy;
//        this.resCitymun = resCitymun;
//        this.resProv = resProv;
//        this.resZipcode = resZipcode;
//        this.permHouseNo = permHouseNo;
//        this.permHouseStreet = permHouseStreet;
//        this.permVillage = permVillage;
//        this.permBgy = permBgy;
//        this.permCitymun = permCitymun;
//        this.permProv = permProv;
//        this.permZipcode = permZipcode;
//        this.telNo = telNo;
//        this.mobileNo = mobileNo;
//        this.emailAddress = emailAddress;
//    }
    
    public contact_info(int p_id, String resHouseNo, String resHouseStreet, String resVillage, 
                        String resBgy, String resCitymun, String resProv, String resZipcode, String permHouseNo, 
                        String permHouseStreet, String permVillage, String permBgy, String permCitymun, String permProv, 
                        String permZipcode, String telNo, String mobileNo, String emailAddress) {
        this.p_id = p_id;
        this.resHouseNo = resHouseNo;
        this.resHouseStreet = resHouseStreet;
        this.resVillage = resVillage;
        this.resBgy = resBgy;
        this.resCitymun = resCitymun;
        this.resProv = resProv;
        this.resZipcode = resZipcode;
        this.permHouseNo = permHouseNo;
        this.permHouseStreet = permHouseStreet;
        this.permVillage = permVillage;
        this.permBgy = permBgy;
        this.permCitymun = permCitymun;
        this.permProv = permProv;
        this.permZipcode = permZipcode;
        this.telNo = telNo;
        this.mobileNo = mobileNo;
        this.emailAddress = emailAddress;
    }
    
//    public contact_info(String contactId, String p_id, String resHouseNo, String resHouseStreet, String resVillage, 
//                        String resBgy, String resCitymun, String resProv, String resZipcode, String permHouseNo, 
//                        String permHouseStreet, String permVillage, String permBgy, String permCitymun, String permProv, 
//                        String permZipcode, String telNo, String mobileNo, String emailAddress) {
//        this.contactId = Integer.parseInt(contactId);
//        this.p_id = Integer.parseInt(p_id);
//        this.resHouseNo = resHouseNo;
//        this.resHouseStreet = resHouseStreet;
//        this.resVillage = resVillage;
//        this.resBgy = resBgy;
//        this.resCitymun = resCitymun;
//        this.resProv = resProv;
//        this.resZipcode = resZipcode;
//        this.permHouseNo = permHouseNo;
//        this.permHouseStreet = permHouseStreet;
//        this.permVillage = permVillage;
//        this.permBgy = permBgy;
//        this.permCitymun = permCitymun;
//        this.permProv = permProv;
//        this.permZipcode = permZipcode;
//        this.telNo = telNo;
//        this.mobileNo = mobileNo;
//        this.emailAddress = emailAddress;
//    }
    
    public contact_info(String p_id, String resHouseNo, String resHouseStreet, String resVillage, 
                        String resBgy, String resCitymun, String resProv, String resZipcode, String permHouseNo, 
                        String permHouseStreet, String permVillage, String permBgy, String permCitymun, String permProv, 
                        String permZipcode, String telNo, String mobileNo, String emailAddress) {
        this.p_id = Integer.parseInt(p_id);
        this.resHouseNo = resHouseNo;
        this.resHouseStreet = resHouseStreet;
        this.resVillage = resVillage;
        this.resBgy = resBgy;
        this.resCitymun = resCitymun;
        this.resProv = resProv;
        this.resZipcode = resZipcode;
        this.permHouseNo = permHouseNo;
        this.permHouseStreet = permHouseStreet;
        this.permVillage = permVillage;
        this.permBgy = permBgy;
        this.permCitymun = permCitymun;
        this.permProv = permProv;
        this.permZipcode = permZipcode;
        this.telNo = telNo;
        this.mobileNo = mobileNo;
        this.emailAddress = emailAddress;
    }
    
    public Integer getContactId() {
        return contactId;
    }

    public void setContactId(Integer contactId) {
        this.contactId = contactId;
    }
    
    public int getP_id() {
        return p_id;
    }
    
    public void setP_id(int p_id) {
        this.p_id = p_id;
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
}
