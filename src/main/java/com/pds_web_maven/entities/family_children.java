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
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import jakarta.xml.bind.annotation.XmlRootElement;
import java.time.ZoneId;
import java.time.LocalDate;
import java.util.Date;

@Entity
@Table(name = "family_children")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "family_children.findAll", query = "SELECT f FROM family_children f"),
    @NamedQuery(name = "family_children.findByPID", query = "SELECT f FROM family_children f WHERE f.p_id = :p_id")
})
public class family_children {
    
    @Id
    @Basic(optional = false)
    @NotNull
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "fam_ch_id")
    private Integer famChId;
    @Column(name = "p_id")
    private int p_id;
    @Size(max = 75)
    @Column(name = "child_fullname")
    private String childFullname;
    @Column(name = "child_dob")
    @Temporal(TemporalType.DATE)
    private Date childDob;

    public family_children() {
    }

    public family_children(Integer famChId) {
        this.famChId = famChId;
    }

    public family_children(String famChId) {
        this.famChId = Integer.parseInt(famChId);
    }

    public family_children(Integer famChId, int p_id, String childFullName, Date childDob) {
        this.famChId = famChId;
        this.p_id = p_id;
        this.childFullname = convertStrNull(childFullName);
        this.childDob = childDob;
    }
    
    public family_children(int p_id, String childFullName, Date childDob) {
        this.p_id = p_id;
        this.childFullname = convertStrNull(childFullName);
        this.childDob = childDob;
    }
    
    public family_children(String famChId, String p_id, String childFullName, String childDob) {
        this.famChId = Integer.parseInt(famChId);
        this.p_id = Integer.parseInt(p_id);
        this.childFullname = convertStrNull(childFullName);
        this.childDob = Date.from((LocalDate.parse(childDob))
                            .atStartOfDay(ZoneId.systemDefault())
                            .toInstant());
    }
    
    public family_children(String p_id, String childFullName, String childDob) {
        this.p_id = Integer.parseInt(p_id);
        this.childFullname = convertStrNull(childFullName);
        this.childDob = Date.from((LocalDate.parse(childDob))
                            .atStartOfDay(ZoneId.systemDefault())
                            .toInstant());
    }
    
    public family_children(int p_id, String childFullName, String childDob) {
        this.p_id = p_id;
        this.childFullname = convertStrNull(childFullName);
        this.childDob = Date.from((LocalDate.parse(childDob))
                            .atStartOfDay(ZoneId.systemDefault())
                            .toInstant());
    }

    public Integer getFamChId() {
        return famChId;
    }

    public void setFamChId(Integer famChId) {
        this.famChId = famChId;
    }

    public int getP_id() {
        return p_id;
    }
    public void setP_id(int p_id) {
        this.p_id = p_id;
    }
    
    public String getChildFullname() {
        return childFullname;
    }

    public void setChildFullname(String childFullname) {
        this.childFullname = childFullname;
    }

    public Date getChildDob() {
        return childDob;
    }

    public void setChildDob(Date childDob) {
        this.childDob = childDob;
    }
    
    public void setChildDob(String childDob) {
        this.childDob = Date.from((LocalDate.parse(childDob))
                            .atStartOfDay(ZoneId.systemDefault())
                            .toInstant());
    }

    public String convertStrNull(String attr){
        return attr == "null" | attr == "N/A" ? null : attr;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (famChId != null ? famChId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof family_children)) {
            return false;
        }
        family_children other = (family_children) object;
        if ((this.famChId == null && other.famChId != null) || (this.famChId != null && !this.famChId.equals(other.famChId))) {
            return false;
        }
        return true;
    }
    
    public String convertFam_ch_id(String fam_ch_id){
        return fam_ch_id == null ? "N/A" : String.valueOf(getFamChId());
    }
    
    public String convertPid(String p_id){
        return p_id == null ? "N/A" : String.valueOf(getP_id());
    }
    
    public String convertChild_fn(String c_fname){
        return c_fname == null ? "N/A" : String.valueOf(getChildFullname());
    }

    public String convertChild_dob(String dob){
        return dob == null ? "N/A" : String.valueOf(getChildDob());
    }
}
