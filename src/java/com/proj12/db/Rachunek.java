/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proj12.db;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

/**
 *tyutyutyutyutyu
 * @author mateu
 */




import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.bean.SessionScoped;
import sun.rmi.runtime.Log;

@ManagedBean(name = "rachunek", eager = true)
@RequestScoped
public class Rachunek {

    int id;
    String numer_rachunku;
    String data_zalozenia;
    String czy_karta;
    String czy_krajowy;
    String czy_zagraniczny;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNumer_rachunku() {
        return numer_rachunku;
    }

    public void setNumer_rachunku(String numer_rachunku) {
        this.numer_rachunku = numer_rachunku;
    }

    public String getData_zalozenia() {
        return data_zalozenia;
    }

    public void setData_zalozenia(String data_zalozenia) {
        this.data_zalozenia = data_zalozenia;
    }

    public String getCzy_karta() {
        return czy_karta;
    }

    public void setCzy_karta(String czy_karta) {
        this.czy_karta = czy_karta;
    }

    public String isCzy_krajowy() {
        return czy_krajowy;
    }

    public void setCzy_krajowy(String czy_krajowy) {
        this.czy_krajowy = czy_krajowy;
    }

    public String getCzy_zagraniczny() {
        return czy_zagraniczny;
    }

    public void setCzy_zagraniczny(String czy_zagraniczny) {
        this.czy_zagraniczny = czy_zagraniczny;
    }
    
    /**
     * Creates a new instance of rachunek
     */
    public Rachunek() {
    }
    
}
