package com.models.data;

import java.io.Serializable;

public class ItemInterno implements Serializable{
    
    private String item;
    private String classificacao;
    private String importancia;
    private float pontuacao;
    
    public ItemInterno(String item,String classificacao,String importancia)
    {
        this.item = item;
        this.classificacao = classificacao;
        this.importancia = importancia;
    }
    
    public void setItem(String item){
        this.item = item;
    }
    
    public void setClassificacao(String classificacao){
        this.classificacao = classificacao;
    }
    
    public void setimportancia(String importancia)
    {
        this.importancia = importancia;
    }
    
    public String getItem(){
        return this.item;
    }
    
    public String getClassificacao(){
        return this.classificacao;
    }
    
    public String getImportancia(){
        return this.importancia;
    }
    
    public float getPontuacao(){
        return this.pontuacao;
    }
    
    public void calcPontuacao(){
        switch(importancia)
        {
            case "Totalmente sem importancia":
                pontuacao = 0.0f;
                break;
            case "Pouca Importancia":
                pontuacao = 2.5f;
                break;
            case "Importante":
                pontuacao = 5.0f;
                break;
            case "Muito Importante":
                pontuacao = 7.5f;
                break;
            case "Totalmente Importante":
                pontuacao = 10.0f;
                break;
            default:
                pontuacao = 0.0f;
                break;
        }
    }
    
    public void setPontuacao(float pontuacao){
        this.pontuacao = pontuacao;
    }
}
