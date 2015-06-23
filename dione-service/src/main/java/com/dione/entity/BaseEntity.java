package com.dione.entity;


import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;

import org.hibernate.annotations.Type;
import org.joda.time.DateTime;

/**
 * Entity implementation class for Entity: BaseEntity
 */

@MappedSuperclass
public class BaseEntity implements Serializable {

    private static final long serialVersionUID = 1L;

    @Type(type = "org.joda.time.contrib.hibernate.PersistentDateTime")
    @Column(name = "created_at")
    private DateTime createdAt;

    @Type(type = "org.joda.time.contrib.hibernate.PersistentDateTime")
    @Column(name = "update_at")
    private DateTime updatedAt;

    public BaseEntity() {
        super();
    }

    /**
     * This method creates current date & time when the object is persisted.
     */
    @PrePersist
    protected void OnCreate() {
        updatedAt = new DateTime();
        createdAt = new DateTime();
    }

    /**
     * This method creates current date & time when the object is updated.
     */
    @PreUpdate
    protected void OnUpdate() {
        updatedAt = new DateTime();
    }

    /**
     * @return the createdAt
     */
    public DateTime getCreatedAt() {
        return createdAt;
    }

    /**
     * @param createdAt the createdAt to set
     */
    public void setCreatedAt(DateTime createdAt) {
        this.createdAt = createdAt;
    }

    /**
     * @return the updatedAt
     */
    public DateTime getUpdatedAt() {
        return updatedAt;
    }

    /**
     * @param updatedAt the updatedAt to set
     */
    public void setUpdatedAt(DateTime updatedAt) {
        this.updatedAt = updatedAt;
    }
}
