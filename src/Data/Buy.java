package Data;

import static Include.Common.getConnection;
import static Include.Common.getProductByName;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Ali Gh Abu Saleh
 */
public class Buy {
    
    private SimpleIntegerProperty buyID ;
    private SimpleIntegerProperty buyQte ;
    private SimpleIntegerProperty buyPrice ;
    private SimpleIntegerProperty buyTotalPrice;
    private SimpleStringProperty buyDate ;
    private SimpleStringProperty product ;
    private SimpleStringProperty user;

    public Buy() {
        this.buyID = new SimpleIntegerProperty(0);
        this.buyQte = new SimpleIntegerProperty(0);
        this.buyPrice = new SimpleIntegerProperty(0);
        this.buyTotalPrice = new SimpleIntegerProperty(0);
        this.buyDate = new SimpleStringProperty("");
        this.product = new SimpleStringProperty("");
        this.user = new SimpleStringProperty("");
    }


    public int  getBuyID() {
        return buyID.getValue();
    }

    public void setBuyID(int buyID) {
        this.buyID = new SimpleIntegerProperty(buyID);
    }

    public int getBuyQte() {
        return buyQte.getValue();
    }

    public void setBuyQte(int buyQte) {
        this.buyQte = new SimpleIntegerProperty(buyQte);
    }

    public int getBuyPrice() {
        return buyPrice.getValue();
    }

    public void setBuyPrice(int buyPrice) {
        this.buyPrice = new SimpleIntegerProperty(buyPrice);
    }

    public String getProduct() {
        return product.getValue();
    }

    public void setProduct(String product) {
        this.product = new SimpleStringProperty(product);
    }

    public String getUser() {
        return user.getValue();
    }

    public void setUser(String user) {
        this.user = new SimpleStringProperty(user);
    }

    public String getBuyDate() {
        return buyDate.getValue();
    }

    public void setBuyDate(String buyDate) {
        this.buyDate = new SimpleStringProperty(buyDate);
    }

    public int getBuyTotalPrice() {
        return buyTotalPrice.getValue();
    }

    public void setBuyTotalPrice(int buyTotalPrice) {
        this.buyTotalPrice = new SimpleIntegerProperty(buyTotalPrice);
    }
    
    public void delete() throws SQLException{
        
                    try (Connection con = getConnection()) {
                        String query = "DELETE FROM buy WHERE buy_id = ?";
                        
                        PreparedStatement ps = con.prepareStatement(query);
                        
                        ps.setInt(1, this.getBuyID());
                        
                        ps.executeUpdate();
                        
                        query = "UPDATE product SET prod_quantity = prod_quantity - ? WHERE prod_id = ?";
                        
                        ps = con.prepareStatement(query);
                        
                        ps.setInt(2, getProductByName(this.getProduct()).getProdID());
                        ps.setInt(1, this.getBuyQte());
                        
                        ps.executeUpdate();
                    }
        
        
    }
    
    
    
    
    
}
