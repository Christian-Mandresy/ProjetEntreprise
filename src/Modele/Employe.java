package Modele;
import base.*;

public class Employe extends BdTable{

    int Id;
    String Nom;
    String Prenom;
    int IdFonction;
    int IdDepartement;

    public Employe(int id, String nom, String prenom, int idFonction, int idDepartement) {
        Id = id;
        Nom = nom;
        Prenom = prenom;
        IdFonction = idFonction;
        IdDepartement = idDepartement;
    }

    public Employe() {
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

    public String getPrenom() {
        return Prenom;
    }

    public void setPrenom(String prenom) {
        Prenom = prenom;
    }

    public int getIdfonction() {
        return IdFonction;
    }

    public void setIdfonction(int idFonction) {
        IdFonction = idFonction;
    }

    public int getIddepartement() {
        return IdDepartement;
    }

    public void setIddepartement(int idDepartement) {
        IdDepartement = idDepartement;
    }
}
