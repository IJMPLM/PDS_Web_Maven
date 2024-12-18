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
@Table(name = "family_background")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "family_background.findAll", query = "SELECT f FROM family_background f"),
    @NamedQuery(name = "family_background.findByPID", query = "SELECT f FROM family_background f WHERE f.p_id = :p_id")
})
public class family_background {

    @Id
    @Basic(optional = false)
    @NotNull
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "fam_bg_id")
    private Integer famBgId;
    @Column(name = "p_id")
    private int p_id;
    @Size(max = 50)
    @Column(name = "spouse_lname")
    private String spouseLname;
    @Size(max = 50)
    @Column(name = "spouse_fname")
    private String spouseFname;
    @Size(max = 50)
    @Column(name = "spouse_mname")
    private String spouseMname;
    @Size(max = 10)
    @Column(name = "spouse_extname")
    private String spouseExtname;
    @Size(max = 50)
    @Column(name = "spouse_occupation")
    private String spouseOccupation;
    @Size(max = 50)
    @Column(name = "spouse_employer")
    private String spouseEmployer;
    @Size(max = 50)
    @Column(name = "spouse_emp_address")
    private String spouseEmpAddress;
    @Size(max = 50)
    @Column(name = "father_lname")
    private String fatherLname;
    @Size(max = 50)
    @Column(name = "father_fname")
    private String fatherFname;
    @Size(max = 50)
    @Column(name = "father_mname")
    private String fatherMname;
    @Size(max = 10)
    @Column(name = "father_extname")
    private String fatherExtname;
    @Size(max = 50)
    @Column(name = "mother_mn_lname")
    private String motherMnLname;
    @Size(max = 50)
    @Column(name = "mother_mn_fname")
    private String motherMnFname;
    @Size(max = 50)
    @Column(name = "mother_mn_mname")
    private String motherMnMname;

    public family_background() {
    }
    
    public family_background(Integer famBgId) {
        this.famBgId = famBgId;
    }
    
    public family_background(String famBgId) {
        this.famBgId = Integer.parseInt(famBgId);
    }

    public family_background(Integer famBgId, int p_id, String spouseLname, String spouseFname, 
                             String spouseMname, String spouseExtname, String spouseOccupation, String spouseEmployer, String spouseEmpAddress, 
                             String fatherLname, String fatherFname, String fatherMname, String fatherExtname, String motherMnLname, 
                             String motherMnFname, String motherMnMname) {
        this.famBgId = famBgId;
        this.p_id = p_id;
        this.spouseLname = spouseLname;
        this.spouseFname = spouseFname;
        this.spouseMname = spouseMname;
        this.spouseExtname = spouseExtname;
        this.spouseOccupation = spouseOccupation;
        this.spouseEmployer = spouseEmployer;
        this.spouseEmpAddress = spouseEmpAddress;
        this.fatherLname = fatherLname;
        this.fatherFname = fatherFname;
        this.fatherMname = fatherMname;
        this.fatherExtname = fatherExtname;
        this.motherMnLname = motherMnLname;
        this.motherMnFname = motherMnFname;
        this.motherMnMname = motherMnMname;
    }
    
    public family_background(int p_id, String spouseLname, String spouseFname, 
                             String spouseMname, String spouseExtname, String spouseOccupation, String spouseEmployer, String spouseEmpAddress, 
                             String fatherLname, String fatherFname, String fatherMname, String fatherExtname, String motherMnLname, 
                             String motherMnFname, String motherMnMname) {
        this.p_id = p_id;
        this.spouseLname = spouseLname;
        this.spouseFname = spouseFname;
        this.spouseMname = spouseMname;
        this.spouseExtname = spouseExtname;
        this.spouseOccupation = spouseOccupation;
        this.spouseEmployer = spouseEmployer;
        this.spouseEmpAddress = spouseEmpAddress;
        this.fatherLname = fatherLname;
        this.fatherFname = fatherFname;
        this.fatherMname = fatherMname;
        this.fatherExtname = fatherExtname;
        this.motherMnLname = motherMnLname;
        this.motherMnFname = motherMnFname;
        this.motherMnMname = motherMnMname;
    }

    public family_background(String famBgId, String p_id, String spouseLname, String spouseFname, 
                             String spouseMname, String spouseExtname, String spouseOccupation, String spouseEmployer, String spouseEmpAddress, 
                             String fatherLname, String fatherFname, String fatherMname, String fatherExtname, String motherMnLname, 
                             String motherMnFname, String motherMnMname) {
        this.famBgId = Integer.parseInt(famBgId);
        this.p_id = Integer.parseInt(p_id);
        this.spouseLname = spouseLname;
        this.spouseFname = spouseFname;
        this.spouseMname = spouseMname;
        this.spouseExtname = spouseExtname;
        this.spouseOccupation = spouseOccupation;
        this.spouseEmployer = spouseEmployer;
        this.spouseEmpAddress = spouseEmpAddress;
        this.fatherLname = fatherLname;
        this.fatherFname = fatherFname;
        this.fatherMname = fatherMname;
        this.fatherExtname = fatherExtname;
        this.motherMnLname = motherMnLname;
        this.motherMnFname = motherMnFname;
        this.motherMnMname = motherMnMname;
    }

    public family_background(String p_id, String spouseLname, String spouseFname, 
                             String spouseMname, String spouseExtname, String spouseOccupation, String spouseEmployer, String spouseEmpAddress, 
                             String fatherLname, String fatherFname, String fatherMname, String fatherExtname, String motherMnLname, 
                             String motherMnFname, String motherMnMname) {
        this.p_id = Integer.parseInt(p_id);
        this.spouseLname = spouseLname;
        this.spouseFname = spouseFname;
        this.spouseMname = spouseMname;
        this.spouseExtname = spouseExtname;
        this.spouseOccupation = spouseOccupation;
        this.spouseEmployer = spouseEmployer;
        this.spouseEmpAddress = spouseEmpAddress;
        this.fatherLname = fatherLname;
        this.fatherFname = fatherFname;
        this.fatherMname = fatherMname;
        this.fatherExtname = fatherExtname;
        this.motherMnLname = motherMnLname;
        this.motherMnFname = motherMnFname;
        this.motherMnMname = motherMnMname;
    }

    public Integer getFamBgId() {
        return famBgId;
    }
    public void setFamBgId(Integer famBgId) {
        this.famBgId = famBgId;
    }
    
    public int getP_id() {
        return p_id;
    }
    public void setP_id(int p_id) {
        this.p_id = p_id;
    }

    public String getSpouseLname() {
        return spouseLname;
    }

    public void setSpouseLname(String spouseLname) {
        this.spouseLname = spouseLname;
    }

    public String getSpouseFname() {
        return spouseFname;
    }

    public void setSpouseFname(String spouseFname) {
        this.spouseFname = spouseFname;
    }

    public String getSpouseMname() {
        return spouseMname;
    }

    public void setSpouseMname(String spouseMname) {
        this.spouseMname = spouseMname;
    }
    
    public String getSpouseExtname() {
        return spouseExtname;
    }
    
    public void setSpouseExtname(String spouseExtname) {
        this.spouseExtname = spouseExtname;
    }

    public String getSpouseOccupation() {
        return spouseOccupation;
    }

    public void setSpouseOccupation(String spouseOccupation) {
        this.spouseOccupation = spouseOccupation;
    }

    public String getSpouseEmployer() {
        return spouseEmployer;
    }

    public void setSpouseEmployer(String spouseEmployer) {
        this.spouseEmployer = spouseEmployer;
    }

    public String getSpouseEmpAddress() {
        return spouseEmpAddress;
    }

    public void setSpouseEmpAddress(String spouseEmpAddress) {
        this.spouseEmpAddress = spouseEmpAddress;
    }

    public String getFatherLname() {
        return fatherLname;
    }

    public void setFatherLname(String fatherLname) {
        this.fatherLname = fatherLname;
    }

    public String getFatherFname() {
        return fatherFname;
    }

    public void setFatherFname(String fatherFname) {
        this.fatherFname = fatherFname;
    }

    public String getFatherMname() {
        return fatherMname;
    }

    public void setFatherMname(String fatherMname) {
        this.fatherMname = fatherMname;
    }
    
    public String getFatherExtname() {
        return fatherExtname;
    }
    
    public void setFatherExtname(String fatherExtname) {
        this.fatherExtname = fatherExtname;
    }

    public String getMotherMnLname() {
        return motherMnLname;
    }

    public void setMotherMnLname(String motherMnLname) {
        this.motherMnLname = motherMnLname;
    }

    public String getMotherMnFname() {
        return motherMnFname;
    }

    public void setMotherMnFname(String motherMnFname) {
        this.motherMnFname = motherMnFname;
    }

    public String getMotherMnMname() {
        return motherMnMname;
    }

    public void setMotherMnMname(String motherMnMname) {
        this.motherMnMname = motherMnMname;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (famBgId != null ? famBgId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof family_background)) {
            return false;
        }
        family_background other = (family_background) object;
        if ((this.famBgId == null && other.famBgId != null) || (this.famBgId != null && !this.famBgId.equals(other.famBgId))) {
            return false;
        }
        return true;
    }
    
    public String convertSpouseFN(String spouse_lname){
        return spouse_lname == null ? "N/A" : getSpouseLname() + ", " + getSpouseFname() + " " + getSpouseMname();
    }
    
    public String convertSpouceOccu(String spouse_occu){
        return spouse_occu == null ? "N/A" : getSpouseOccupation(); 
    }
    
    public String convertEmployer(String spouse_emp){
        return spouse_emp == null ? "N/A" : getSpouseEmployer();
    }
    
    public String convertEmpAddr(String spouse_empaddr){
        return spouse_empaddr == null ? "N/A" : getSpouseEmpAddress();
    }

    public String convertFatherFN(String father_lname){
        return father_lname == null ? "N/A" : getFatherLname() + ", " + getFatherFname() + " " + getFatherMname();
    }
    
    public String convertMotherFN(String Mother_lname){
        return Mother_lname == null ? "N/A" : getMotherMnLname() + ", " + getMotherMnFname() + " " + getMotherMnMname();
    }
}
