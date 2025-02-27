package com.doctor.Model;

public class Rendez_vous {
    private int id;
    private String date;
    private String time;

    public Rendez_vous(int id, String date, String time) {
        this.id = id;
        this.date = date;
        this.time = time;
    }
    public int getId() {

        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}
