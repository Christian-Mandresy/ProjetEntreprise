package Modele;
import base.*;

import java.sql.Date;


public class Pv extends BdTable{
    int Id;
    int Idemploye;
    String Description;
    Date Datepublication;
    int Iddocument;

    public Pv() {
    }



    public Pv(int id, int idemploye, String description, Date datepublication, int iddocument) {
        Id = id;
        Idemploye = idemploye;
        Description = description;
        Datepublication = datepublication;
        Iddocument = iddocument;
    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public int getIdemploye() {
        return Idemploye;
    }

    public void setIdemploye(int idemploye) {
        Idemploye = idemploye;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public Date getDatepublication() {
        return Datepublication;
    }

    public void setDatepublication(Date datepublication) {
        Datepublication = datepublication;
    }

    public int getIddocument() {
        return Iddocument;
    }

    public void setIddocument(int iddocument) {
        Iddocument = iddocument;
    }
}
