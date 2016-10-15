/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package P1;
import java.util.*;
/**
 *
 * @author Mat
 */  
public class LoginBean {  
private String uname,pass;
private Hashtable errors;
  
public boolean validate() {
    boolean status = true;
    if (uname.equals("")) {
        errors.put("uname", "Please enter your username");
        uname = "";
        status = false;
    }
    if (pass.equals("")) {
        errors.put("pass", "Please enter your password");
        pass = "";
        status = false;
    }
    return status;
}

public String getErrorMsg(String s) {
    String errorMsg =(String)errors.get(s.trim());
    return (errorMsg == null) ? "":errorMsg;
}

public LoginBean() {
    uname = "";
    pass = "";
    errors = new Hashtable();
}

public String getUname() {  
    return uname;  
}  
  
public void setUname(String uname) {  
    this.uname = uname;  
}  
  
public String getPass() {  
    return pass;  
}  
  
public void setPass(String pass) {  
    this.pass = pass;  
}  

public void setErrors(String key, String msg) {
    errors.put(key,msg);
 }
  
  
}  
