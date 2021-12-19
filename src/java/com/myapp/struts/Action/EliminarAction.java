/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.struts.Action;

import com.myapp.struts.Form.usuarioForm;
import com.myapp.struts.Modelo.usuarioDao;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class EliminarAction extends org.apache.struts.action.Action {

    private static final String ELIMINAR = "eliminar";

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        ActionForward forward = new ActionForward();
        usuarioForm usuario = (usuarioForm) form;
        try {
            usuarioDao dao = new usuarioDao();
            usuario = dao.eliminar(usuario);
            forward = mapping.findForward(ELIMINAR);
        } catch (Exception e) {
            e.getMessage();
        }
        return forward;

    }
}
