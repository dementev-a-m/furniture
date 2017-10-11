package ru.dementev.furniture.entity;



import ru.dementev.furniture.entity.enums.ProductTypeEnum;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Arrays;

@Entity
@Table(name = "product")
public class Product implements Serializable{
    private long id;
    private byte[] photo;
    private String name;
    private double price;
    private ProductTypeEnum type;

    public Product() {
    }
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }
    @Column(name ="name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    @Column(name = "price")
    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Lob
    @Column(name = "photo")
    @Basic(fetch = FetchType.EAGER)
    public byte[] getPhoto() {
        return photo;
    }

    public void setPhoto(byte[] photo) {
        this.photo = photo;
    }
    @Column(name = "type")
    public ProductTypeEnum getType() {
        return type;
    }

    public void setType(ProductTypeEnum type) {
        this.type = type;
    }
}
