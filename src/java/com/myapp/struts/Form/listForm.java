/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.struts.Form;

import com.myapp.struts.Modelo.usuario;
import java.util.ArrayList;
import java.util.List;

public class listForm extends org.apache.struts.action.ActionForm {

    private List<usuario> list;

    public listForm() {
        super();
        list = new ArrayList();
    }

    public listForm(List<usuario> list) {
        this.list = list;
    }

    public List<usuario> getList() {
        return list;
    }

    public void setList(List<usuario> list) {
        this.list = list;
    }

}
