//package com.pds_web_maven.entities;
//
//import jakarta.persistence.Basic;
//import jakarta.persistence.Column;
//import jakarta.persistence.Entity;
//import jakarta.persistence.Id;
//import jakarta.persistence.NamedQueries;
//import jakarta.persistence.NamedQuery;
//import jakarta.persistence.Table;
//import jakarta.persistence.Temporal;
//import jakarta.persistence.TemporalType;
//import jakarta.validation.constraints.NotNull;
//import jakarta.validation.constraints.Size;
//import jakarta.xml.bind.annotation.XmlRootElement;
//import java.io.Serializable;
//import java.util.Date;
//
//@Entity
//@Table(name = "personal_info")
//@NamedQueries({
//    @NamedQuery(name = "personal_info.findAll", query = "SELECT p FROM personal_info p"),
//    @NamedQuery(name = "personal_info.findByPId", query = "SELECT p FROM personal_info p WHERE p.pId = :pId"),
//    @NamedQuery(name = "personal_info.findByLName", query = "SELECT p FROM personal_info p WHERE p.lName = :lName"),
//    @NamedQuery(name = "personal_info.findByFName", query = "SELECT p FROM personal_info p WHERE p.fName = :fName"),
//    @NamedQuery(name = "personal_info.findByMName", query = "SELECT p FROM personal_info p WHERE p.mName = :mName"),
//    @NamedQuery(name = "personal_info.findByDob", query = "SELECT p FROM personal_info p WHERE p.dob = :dob"),
//    @NamedQuery(name = "personal_info.findByPob", query = "SELECT p FROM personal_info p WHERE p.pob = :pob"),
//    @NamedQuery(name = "personal_info.findByHeight", query = "SELECT p FROM personal_info p WHERE p.height = :height"),
//    @NamedQuery(name = "personal_info.findByWeight", query = "SELECT p FROM personal_info p WHERE p.weight = :weight"),
//    @NamedQuery(name = "personal_info.findByBloodType", query = "SELECT p FROM personal_info p WHERE p.bloodType = :bloodType"),
//    @NamedQuery(name = "personal_info.findByGsisNo", query = "SELECT p FROM personal_info p WHERE p.gsisNo = :gsisNo"),
//    @NamedQuery(name = "personal_info.findByPagibigId", query = "SELECT p FROM personal_info p WHERE p.pagibigId = :pagibigId"),
//    @NamedQuery(name = "personal_info.findByPhilhealthId", query = "SELECT p FROM personal_info p WHERE p.philhealthId = :philhealthId"),
//    @NamedQuery(name = "personal_info.findBySssNo", query = "SELECT p FROM personal_info p WHERE p.sssNo = :sssNo"),
//    @NamedQuery(name = "personal_info.findByTin", query = "SELECT p FROM personal_info p WHERE p.tin = :tin"),
//    @NamedQuery(name = "personal_info.findByAgencyEmpno", query = "SELECT p FROM personal_info p WHERE p.agencyEmpno = :agencyEmpno")})
//public class personal_info {
//
//    private static final long serialVersionUID = 1L;
//    @Id
//    @Column(name = "p_id")
//    private Integer pId;
//    @Size(max = 255)
//    @Column(name = "l_name")
//    private String lName;
//    @Size(max = 255)
//    @Column(name = "f_name")
//    private String fName;
//    @Size(max = 255)
//    @Column(name = "m_name")
//    private String mName;
//    @Column(name = "dob")
//    @Temporal(TemporalType.DATE)
//    private Date dob;
//    @Size(max = 255)
//    @Column(name = "pob")
//    private String pob;
//    @Column(name = "height")
//    private Integer height;
//    @Column(name = "weight")
//    private Integer weight;
//    @Size(max = 255)
//    @Column(name = "blood_type")
//    private String bloodType;
//    @Size(max = 255)
//    @Column(name = "gsis_no")
//    private String gsisNo;
//    @Size(max = 255)
//    @Column(name = "pagibig_id")
//    private String pagibigId;
//    @Size(max = 255)
//    @Column(name = "philhealth_id")
//    private String philhealthId;
//    @Size(max = 255)
//    @Column(name = "sss_no")
//    private String sssNo;
//    @Size(max = 255)
//    @Column(name = "tin")
//    private String tin;
//    @Size(max = 255)
//    @Column(name = "agency_empno")
//    private String agencyEmpno;
//
//    public personal_info() {
//    }
//
//    public personal_info(Integer pId) {
//        this.pId = pId;
//    }
//
//    public Integer getPId() {
//        return pId;
//    }
//
//    public void setPId(Integer pId) {
//        this.pId = pId;
//    }
//
//    public String getLName() {
//        return lName;
//    }
//
//    public void setLName(String lName) {
//        this.lName = lName;
//    }
//
//    public String getFName() {
//        return fName;
//    }
//
//    public void setFName(String fName) {
//        this.fName = fName;
//    }
//
//    public String getMName() {
//        return mName;
//    }
//
//    public void setMName(String mName) {
//        this.mName = mName;
//    }
//
//    public Date getDob() {
//        return dob;
//    }
//
//    public void setDob(Date dob) {
//        this.dob = dob;
//    }
//
//    public String getPob() {
//        return pob;
//    }
//
//    public void setPob(String pob) {
//        this.pob = pob;
//    }
//
//    public Integer getHeight() {
//        return height;
//    }
//
//    public void setHeight(Integer height) {
//        this.height = height;
//    }
//
//    public Integer getWeight() {
//        return weight;
//    }
//
//    public void setWeight(Integer weight) {
//        this.weight = weight;
//    }
//
//    public String getBloodType() {
//        return bloodType;
//    }
//
//    public void setBloodType(String bloodType) {
//        this.bloodType = bloodType;
//    }
//
//    public String getGsisNo() {
//        return gsisNo;
//    }
//
//    public void setGsisNo(String gsisNo) {
//        this.gsisNo = gsisNo;
//    }
//
//    public String getPagibigId() {
//        return pagibigId;
//    }
//
//    public void setPagibigId(String pagibigId) {
//        this.pagibigId = pagibigId;
//    }
//
//    public String getPhilhealthId() {
//        return philhealthId;
//    }
//
//    public void setPhilhealthId(String philhealthId) {
//        this.philhealthId = philhealthId;
//    }
//
//    public String getSssNo() {
//        return sssNo;
//    }
//
//    public void setSssNo(String sssNo) {
//        this.sssNo = sssNo;
//    }
//
//    public String getTin() {
//        return tin;
//    }
//
//    public void setTin(String tin) {
//        this.tin = tin;
//    }
//
//    public String getAgencyEmpno() {
//        return agencyEmpno;
//    }
//
//    public void setAgencyEmpno(String agencyEmpno) {
//        this.agencyEmpno = agencyEmpno;
//    }
//
//    @Override
//    public int hashCode() {
//        int hash = 0;
//        hash += (pId != null ? pId.hashCode() : 0);
//        return hash;
//    }
//
//    @Override
//    public boolean equals(Object object) {
//        // TODO: Warning - this method won't work in the case the id fields are not set
//        if (!(object instanceof personal_info)) {
//            return false;
//        }
//        personal_info other = (personal_info) object;
//        if ((this.pId == null && other.pId != null) || (this.pId != null && !this.pId.equals(other.pId))) {
//            return false;
//        }
//        return true;
//    }
//
//    @Override
//    public String toString() {
//        return "com.pds_web_maven.entities.personal_info[ pId=" + pId + " ]";
//    }
//    
//}
