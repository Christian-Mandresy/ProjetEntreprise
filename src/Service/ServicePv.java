package Service;
import Annotation.FonctionAnnot;
import Modele.Document;
import Modele.Employe;
import Modele.Evenement;
import Modele.Pv;
import modeleview.ModelView;
import base.BdTable;
import base.Connex;
import java.sql.Date;
import java.sql.SQLException;
import java.util.HashMap;

@FonctionAnnot(url="tss")
public class ServicePv {

    @FonctionAnnot(url = "InsertPv")
    public ModelView InsertPv(int Id,int IdEmploye, String text, Date DatePublication, int IdDocument)throws Exception
    {
        Pv Proc=new Pv(Id,IdEmploye,text,DatePublication,IdDocument);
        HashMap hash=new HashMap();
        String vue="FormulaireInsert.jsp";
        ModelView mod=new ModelView();
        mod.setHash(hash);
        mod.setVue(vue);
        Connex co= null;
        try {
            co = new Connex();
        } catch (ClassNotFoundException e) {
            throw e;

        } catch (SQLException e) {
            throw e;
        }
        try {
            Proc.insertValues(co.getConnexion());
        } catch (Exception e) {
            throw e;
        }
        return mod;
    }

    @FonctionAnnot(url = "InsertEvenement")
    public ModelView InsertEvenement(int Id,int IdEmploye, int text, Date DatePublication,Date DateEvenement,int IdDocument)throws Exception
    {
        Evenement even=new Evenement(Id,IdEmploye,text,DatePublication,DateEvenement,IdDocument);
        HashMap hash=new HashMap();
        String vue="FormulaireEvenement.jsp";
        ModelView mod=new ModelView();
        mod.setHash(hash);
        mod.setVue(vue);
        Connex co= null;
        try {
            co = new Connex();
        } catch (ClassNotFoundException e) {
            throw e;

        } catch (SQLException e) {
            throw e;
        }
        try {
            even.insertValues(co.getConnexion());
        } catch (Exception e) {
            throw e;
        }
        return mod;
    }

    @FonctionAnnot(url = "RecherchePv")
    public ModelView RecherchePv(int IdEmploye, String text, Date DatePublication, int IdDocument)throws Exception
    {
        Pv Proc=new Pv();
        Proc.setIdemploye(IdEmploye);
        Proc.setDescription(text);
        if(DatePublication != null)
        {
            Proc.setDatepublication(DatePublication);
        }
        Proc.setIddocument(IdDocument);
        Pv payv=new Pv();
        BdTable[] val=new BdTable[1];
        HashMap hash=new HashMap();
        String vue="ListPv.jsp";
        hash.put("ListPv",val);
        Connex co= null;
        try {
            co = new Connex();
        } catch (ClassNotFoundException e) {
            throw e;

        } catch (SQLException e) {
            throw e;
        }
        try {
            BdTable[] valiny=payv.Find(co.getConnexion(),Proc);
            hash.put("ListPv",valiny);
        } catch (Exception e) {
            throw e;
        }
        ModelView mod=new ModelView();
        mod.setHash(hash);
        mod.setVue(vue);
        return mod;
    }

    @FonctionAnnot(url = "ListPv")
    public ModelView ListPv()throws Exception
    {
        Pv payv=new Pv();
        BdTable[] val=new BdTable[1];
        HashMap hash=new HashMap();
        String vue="ListPv.jsp";
        hash.put("ListPv",val);
        Connex co= null;
        try {
            co = new Connex();
        } catch (ClassNotFoundException e) {
            throw e;

        } catch (SQLException e) {
            throw e;
        }
        try {
            BdTable[] valiny=payv.Find(co.getConnexion(),payv);
            hash.put("ListPv",valiny);
        } catch (Exception e) {
            throw e;
        }
        ModelView mod=new ModelView();
        mod.setHash(hash);
        mod.setVue(vue);
        return mod;
    }


    @FonctionAnnot(url = "formRecherche")
    public ModelView formulaireRecherche() throws Exception {
        Document doc=new Document();
        Employe empl=new Employe();
        BdTable[] val=new BdTable[1];
        HashMap hash=new HashMap();
        String vue="RecherchePv.jsp";
        hash.put("ListDocument",val);
        Connex co= null;
        try {
            co = new Connex();
        } catch (ClassNotFoundException e) {
            throw e;

        } catch (SQLException e) {
            throw e;
        }
        try {
            BdTable[] valiny=doc.Find(co.getConnexion(),doc);
            BdTable[] ListEmpl=empl.Find(co.getConnexion(),empl);
            hash.put("ListDocument",valiny);
            hash.put("ListEmploye",ListEmpl);
        } catch (Exception e) {
            throw e;
        }
        ModelView mod=new ModelView();
        mod.setHash(hash);
        mod.setVue(vue);
        return mod;
    }


}
