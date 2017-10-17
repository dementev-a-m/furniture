package ru.dementev.furniture.entity;

import org.hibernate.annotations.Fetch;

import javax.persistence.*;

/**
 * Created by adementev on 16.10.2017.
 */
@Entity

public class Image {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private long id;
    @Lob
    @Column(name = "image")
    @Basic(fetch = FetchType.EAGER)
    private byte[] image;

    public Image() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }
}
