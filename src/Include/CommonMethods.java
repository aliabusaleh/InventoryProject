/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Include;

import java.io.IOException;
import javafx.event.ActionEvent;

/**
 *
 * @author Ali Gh Abu Saleh
 */
public interface CommonMethods {
    
    public void logOut(ActionEvent event)throws IOException;
    
    public boolean checkInputs();
    
}