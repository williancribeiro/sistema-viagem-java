/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package aplicacao;

import newpackage.Fiscal;
import DAO.FiscalDAO;

/**
 *
 * @author Natalia
 */
public class Main {
    public static void main(String[] args) {
        
        FiscalDAO fiscaldao = new FiscalDAO();
        
        Fiscal fiscal = new Fiscal();
        fiscal.setCpf(123456789);
        fiscal.setNome("Maria");
        
        fiscaldao.save(fiscal);
    }
}
