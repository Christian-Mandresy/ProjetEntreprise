package Modele;
import base.*;

import java.sql.Date;

public class Evenement extends BdTable{
    int Id;
    int IdEmploye;
    int text;
    Date DatePublication;
    Date DateEvenement;
    int IdDocument;

    public Evenement(int id, int idEmploye, int text, Date datePublication, Date dateEvenement, int idDocument) {
        Id = id;
        IdEmploye = idEmploye;
        this.text = text;
        DatePublication = datePublication;
        DateEvenement = dateEvenement;
        IdDocument = idDocument;
    }

    public Evenement() {
    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public int getIdEmploye() {
        return IdEmploye;
    }

    public void setIdEmploye(int idEmploye) {
        IdEmploye = idEmploye;
    }

    public int getText() {
        return text;
    }

    public void setText(int text) {
        this.text = text;
    }

    public Date getDatePublication() {
        return DatePublication;
    }

    public void setDatePublication(Date datePublication) {
        DatePublication = datePublication;
    }

    public Date getDateEvenement() {
        return DateEvenement;
    }

    public void setDateEvenement(Date dateEvenement) {
        DateEvenement = dateEvenement;
    }

    public int getIdDocument() {
        return IdDocument;
    }

    public void setIdDocument(int idDocument) {
        IdDocument = idDocument;
    }
}
