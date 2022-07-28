package model;

import java.time.LocalDate;

public class Customer {
    private String name;
    private LocalDate dayOfBirth;
    private String address;
    private String avatar;

    public Customer(String name, LocalDate dayOfBirth, String address, String avatar) {
        this.name = name;
        this.dayOfBirth = dayOfBirth;
        this.address = address;
        this.avatar = avatar;
    }

    public Customer() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public LocalDate getDayOfBirth() {
        return dayOfBirth;
    }

    public void setDayOfBirth(LocalDate dayOfBirth) {
        this.dayOfBirth = dayOfBirth;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }
}

