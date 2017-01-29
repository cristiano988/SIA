package com.models.data;

public class Importancias {
    
    private int totalmenteSemImportancia;
    private int poucaImportancia;
    private int importante;
    private int muitoImportante;
    private int totalmenteImportante;
    
    public Importancias(int totalmenteSemImportancia,
            int poucaImportancia, int importante, int muitoImportante, int totalmenteImportante)
    {
        this.totalmenteSemImportancia = totalmenteSemImportancia;
        this.poucaImportancia = poucaImportancia;
        this.importante = importante;
        this.muitoImportante = muitoImportante;
        this.totalmenteImportante = totalmenteImportante;
    }
    
    public int getTotalmenteSemImportancia(){
        return totalmenteSemImportancia;
    }
    
    public int getPoucaImportancia(){
        return poucaImportancia;
    }
    
    public int getImportante(){
        return importante;
    }
    
    public int getMuitoImportante(){
        return muitoImportante;
    }
    
    public int getTotalmenteImportante(){
        return totalmenteImportante;
    }
}
