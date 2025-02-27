package com.doctor.Model;

public class user {
    private int id;
    private String name;
    private String email;
    private String mot_de_passe;
    private String phone;
    private String role;

 public user(int id, String name, String email, String mot_de_passe, String phone) {
     this.id = id;
     this.name = name;
     this.email = email;
     this.mot_de_passe = mot_de_passe;
     this.phone = phone;

 }

 public user(String name, String email, String mot_de_passe, String phone, String role) {
     this.name = name;
     this.email = email;
     this.mot_de_passe = mot_de_passe;
     this.phone = phone;
     this.role = role;
 }

 public int getId() {
     return id;
 }
 public void setId(int id) {
     this.id = id;
 }
 public String getName() {
     return name;
 }
 public void setName(String name) {
     this.name = name;
 }
 public String getEmail() {
     return email;
 }
 public void setEmail(String email) {
     this.email = email;
 }
 public String getMot_de_passe() {
     return mot_de_passe;
 }
 public void setMot_de_passe(String mot_de_passe) {
     this.mot_de_passe = mot_de_passe;
 }
 public String getPhone() {
     return phone;
 }
 public void setPhone(String phone) {
     this.phone = phone;
 }
    public String getRole() { return role; }
    public void setRole(String role) { this.role = role; }
}

