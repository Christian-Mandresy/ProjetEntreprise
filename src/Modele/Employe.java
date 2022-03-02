package Modele;
import base.*;

public class Employe extends BdTable{

    int Id;
    String Nom;
    String Prenom;
    int Idfonction;
    int Iddepartement;
    String Username;
    String Password;

    public Employe() {
    }

    public Employe(int id, String nom, String prenom, int idfonction, int iddepartement, String username, String password) {
        Id = id;
        Nom = nom;
        Prenom = prenom;
        Idfonction = idfonction;
        Iddepartement = iddepartement;
        Username = username;
        Password = password;
    }

    public Employe(String username, String password) {
        Username = username;
        Password = password;
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
        return Idfonction;
    }

    public void setIdfonction(int idfonction) {
        Idfonction = idfonction;
    }

    public int getIddepartement() {
        return Iddepartement;
    }

    public void setIddepartement(int iddepartement) {
        Iddepartement = iddepartement;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String username) {
        Username = username;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }
}
