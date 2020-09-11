
package sANDb;

import Data.ProdStats;
import Data.Product;
import static Include.Common.getProdStats;
import Include.SpecialAlert;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Label;

/**
 * FXML Controller class
 *
 * @author ِAli Abu Saleh
 */
public class ProdStatController implements Initializable {

    
    @FXML private Label buyAverage,sellAverage,qteBuy,qteSell,profitLabel;
    
    SpecialAlert alert = new SpecialAlert();
    
    ProdStats stats = new ProdStats();
    
    public void setProduct(Product selected){
        
        this.stats = getProdStats(selected.getProdID());

      
        qteBuy.setText(String.valueOf(stats.getQteBuy()));
        qteSell.setText(String.valueOf(stats.getQteSell()));
        profitLabel.setText(String.valueOf(stats.getProfit()) + ".00 شيكل");
        
    }
    @Override
    public void initialize(URL url, ResourceBundle rb) {
             
        
    }    
    
}
