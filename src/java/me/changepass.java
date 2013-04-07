/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package me;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author Mandeep
 */
public class changepass extends org.apache.struts.action.ActionForm {
    
    private String k1;
    private String k2;
    private String k3;

    public String getK3() {
        return k3;
    }

    public void setK3(String k3) {
        this.k3 = k3;
    }

    public String getK2() {
        return k2;
    }

    public void setK2(String k2) {
        this.k2 = k2;
    }

    public String getK1() {
        return k1;
    }

    public void setK1(String k1) {
        this.k1 = k1;
    }

}
