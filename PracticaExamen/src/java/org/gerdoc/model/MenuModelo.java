/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.gerdoc.model;

import java.io.Serializable;


public class MenuModelo  implements Serializable
{
    private String clase;
    private boolean arialCurrent;
    private String href;
    private String name;
    private boolean arialDisabled;

    public MenuModelo() 
    {
    }

    public MenuModelo(String clase, boolean arialCurrent, String href, String name, boolean arialDisabled) {
        this.clase = clase;
        this.arialCurrent = arialCurrent;
        this.href = href;
        this.name = name;
        this.arialDisabled = arialDisabled;
    }
    
    
    public String getClase() {
        return clase;
    }

    public void setClase(String clase) {
        this.clase = clase;
    }

    public boolean isArialCurrent() {
        return arialCurrent;
    }

    public void setArialCurrent(boolean arialCurrent) {
        this.arialCurrent = arialCurrent;
    }

    public String getHref() {
        return href;
    }

    public void setHref(String href) {
        this.href = href;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isArialDisabled() {
        return arialDisabled;
    }

    public void setArialDisabled(boolean arialDisabled) {
        this.arialDisabled = arialDisabled;
    }

}
