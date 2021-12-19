/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.struts.Action;

import com.myapp.struts.Form.listForm;
import com.myapp.struts.Modelo.usuario;
import com.myapp.struts.Modelo.usuarioDao;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class MostrarAction extends org.apache.struts.action.Action {

    private static final String MOSTRAR = "mostrar";

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        ActionForward forward = new ActionForward();
        listForm lista = (listForm) form;
        try {
            usuarioDao dao = new usuarioDao();
            List<usuario> list = dao.mostrar();
            lista.setList(list);
            forward = mapping.findForward(MOSTRAR);
        } catch (Exception e) {
            e.getMessage();
        }
        return forward;

    }
}
