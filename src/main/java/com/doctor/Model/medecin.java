package com.doctor.Model;

public class medecin extends user{
    private String specialty;

    public medecin(int id, String name, String email, String mot_de_passe, String phone) {
        super(id, name, email, mot_de_passe, phone);
    }
    public String getSpecialty() {
        return specialty;
    }
    public void setSpecialty(String specialty) {
        this.specialty = specialty;
    }
}
