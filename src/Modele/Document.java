package Modele;
import base.*;

public class Document extends BdTable{
    int IdDocument;
    String NomDocument;
    String Path;

    public Document(int idDocument, String nomDocument, String path) {
        IdDocument = idDocument;
        NomDocument = nomDocument;
        Path = path;
    }

    public Document() {
    }

    public int getIddocument() {
        return IdDocument;
    }

    public void setIddocument(int idDocument) {
        IdDocument = idDocument;
    }

    public String getNomdocument() {
        return NomDocument;
    }

    public void setNomdocument(String nomDocument) {
        NomDocument = nomDocument;
    }

    public String getPath() {
        return Path;
    }

    public void setPath(String path) {
        Path = path;
    }
}
