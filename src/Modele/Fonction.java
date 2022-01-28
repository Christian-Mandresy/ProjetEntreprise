package Modele;

import base.*;

public class Fonction extends BdTable{
    int Id;
    String Nom;

    public Fonction(int id, String nom) {
        Id = id;
        Nom = nom;
    }

    public Fonction() {
    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public String getNom() {
        return Nom;
    }

    public void setNom(String nom) {
        Nom = nom;
    }
}
