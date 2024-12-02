package com.pds_web_maven.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQueries;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import java.util.Date;

@Entity
@Table(name="personal_info")
@NamedQueries({
    @NamedQuery(name = "personal_info.findAll", query = "SELECT p FROM personal_info p") // Order by p_id
})
public class personal_info {
    @Id
    @Column(name = "p_id")
    private Integer p_id; // Integer or int?
    @Column(name = "sex_id")
    private int sex_id;
    @Column(name = "cstat_id")
    private int cstat_id;
    @Column(name = "cit_id")
    private int cit_id;
    @Column(name = "cit_acq_id")
    private int cit_acq_id;
    @Column(name = "l_name")
    private String l_name;
    @Column(name = "f_name")
    private String f_name;
    @Column(name = "m_name")
    private String m_name;
    @Column(name = "dob")
    @Temporal(TemporalType.DATE)
    private Date dob;
    @Column(name = "pob")
    private String pob;
    @Column(name = "height")
    private Integer height;
    @Column(name = "weight")
    private Integer weight;
    @Column(name = "blood_type")
    private String blood_type;
    @Column(name = "gsis_no")
    private String gsis_no;
    @Column(name = "pagibig_id")
    private String pagibig_id;
    @Column(name = "philhealth_id")
    private String philhealth_Id;
    @Column(name = "sss_no")
    private String sss_no;
    @Column(name = "tin")
    private String tin;
    @Column(name = "agency_empno")
    private String agency_empno;

    public personal_info() {
    }

    public personal_info(Integer p_id) {
        this.p_id = p_id;
    }

    public Integer getp_id() {
        return p_id;
    }
    public void setp_id(Integer p_id) {
        this.p_id = p_id;
    }

    public int getSex_id() {
        return sex_id;
    }
    public void setSex_id(int sex_id) {
        this.sex_id = sex_id;
    }

    public int getCstat_id() {
        return cstat_id;
    }
    public void setCstat_id(int cstat_id) {
        this.cstat_id = cstat_id;
    }

    public int getCit_id() {
        return cit_id;
    }
    public void setCit_id(int cit_id) {
        this.cit_id = cit_id;
    }

    public int getCit_acq_id() {
        return cit_acq_id;
    }
    public void setCit_acq_id(int cit_acq_id) {
        this.cit_acq_id = cit_acq_id;
    }
    
    public String getl_name() {
        return l_name;
    }
    public void setl_name(String l_name) {
        this.l_name = l_name;
    }

    public String getf_name() {
        return f_name;
    }
    public void setf_name(String f_name) {
        this.f_name = f_name;
    }

    public String getm_name() {
        return m_name;
    }
    public void setm_name(String m_name) {
        this.m_name = m_name;
    }

    public Date getDob() {
        return dob;
    }
    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getPob() {
        return pob;
    }
    public void setPob(String pob) {
        this.pob = pob;
    }

    public Integer getHeight() {
        return height;
    }
    public void setHeight(Integer height) {
        this.height = height;
    }

    public Integer getWeight() {
        return weight;
    }
    public void setWeight(Integer weight) {
        this.weight = weight;
    }

    public String getblood_type() {
        return blood_type;
    }
    public void setblood_type(String blood_type) {
        this.blood_type = blood_type;
    }

    public String getgsis_no() {
        return gsis_no;
    }
    public void setgsis_no(String gsis_no) {
        this.gsis_no = gsis_no;
    }

    public String getPagibig_id() {
        return pagibig_id;
    }
    public void setPagibig_id(String pagibig_id) {
        this.pagibig_id = pagibig_id;
    }

    public String getPhilhealth_Id() {
        return philhealth_Id;
    }
    public void setPhilhealth_Id(String philhealth_Id) {
        this.philhealth_Id = philhealth_Id;
    }

    public String getSss_no() {
        return sss_no;
    }
    public void setSss_no(String sss_no) {
        this.sss_no = sss_no;
    }

    public String getTin() {
        return tin;
    }
    public void setTin(String tin) {
        this.tin = tin;
    }

    public String getAgency_empno() {
        return agency_empno;
    }
    public void setAgency_empno(String agency_empno) {
        this.agency_empno = agency_empno;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (p_id != null ? p_id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof personal_info)) {
            return false;
        }
        personal_info other = (personal_info) object;
        if ((this.p_id == null && other.p_id != null) || (this.p_id != null && !this.p_id.equals(other.p_id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.pds_web.entities.personal_info[ p_id=" + p_id + ", " + l_name + " ]";
    }
}
