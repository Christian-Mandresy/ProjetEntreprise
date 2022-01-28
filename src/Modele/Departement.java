package Modele;

import base.*;

public class Departement extends BdTable{
    int id;
    String Nom;

    public Departement() {
    }

    public Departement(int id, String nom) {
        this.id = id;
        Nom = nom;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return Nom;
    }

    public void setNom(String nom) {
        Nom = nom;
    }
}
