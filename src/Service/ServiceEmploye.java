package Service;

import Annotation.FonctionAnnot;
import Modele.Employe;
import Modele.Pv;
import base.BdTable;
import base.Connex;
import modeleview.ModelView;

import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.HashMap;

@FonctionAnnot(url = "ServiceEmploye")
public class ServiceEmploye {

    @FonctionAnnot(url = "login")
    public ModelView login(String username, String password, HttpSession session) throws Exception {
        ModelView valiny=new ModelView();
        Employe emp=new Employe();
        Employe employe=new Employe(username,password);
        HashMap hashMap=new HashMap();
        String vue="login.jsp";
        Connex connex=null;
        try {
            connex=new Connex();
            BdTable[] bdTables=emp.Find(connex.getConnexion(),employe);
            if(bdTables.length!=0)
            {
                Employe piv=(Employe)bdTables[0];
                session.setAttribute("Employe",piv);
                vue="ListPv.jsp";
                hashMap.put("Employe",piv);
                valiny.setVue(vue);
                valiny.setHash(hashMap);
                Pv pivV=new Pv();
                Pv pv=new Pv();
                pv.setIdemploye(employe.getId());
                BdTable[] listpv=pivV.Find(connex.getConnexion(),pv);
                hashMap.put("listpv",listpv);
                valiny.setHash(hashMap);
                valiny.setVue("index.jsp");
            }
        }
        catch (Exception e)
        {
            throw e;
        }
        finally {
            return valiny;
        }

    }


}
