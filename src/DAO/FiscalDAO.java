/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.awt.List;
import newpackage.Fiscal;
import java.sql.*;
import java.util.ArrayList;
import modelo.ModuloConexao;
//import visao.FormFiscal;

public class FiscalDAO {

    Connection conn;
    PreparedStatement pstm;
    PreparedStatement st;
    ResultSet rs;

    public void save(Fiscal fiscal) {

        String sql = "INSERT INTO fiscal(nome, cpf) VALUES (?,?)";

        try {
            conn = ModuloConexao.conectar();

            pstm = (PreparedStatement) conn.prepareStatement(sql);
            pstm.setString(1, fiscal.getNome());
            pstm.setInt(2, fiscal.getCpf());

            pstm.execute();

        } catch (Exception e) {

            e.printStackTrace();

        } finally {
            try {
                if (pstm != null) {
                    pstm.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

    }

    public Fiscal consultar(String matricula) {

        try {
            String sql = "SELECT * FROM fiscal";

            conn = ModuloConexao.conectar();
            pstm.setString(1, matricula);
            //pstm = null;
            rs = null;

            conn = ModuloConexao.conectar();
            pstm = (PreparedStatement) conn.prepareStatement(sql);
            rs = pstm.executeQuery();

            if (rs.next()) {

                Fiscal fs = new Fiscal();

                fs.setMatricula(rs.getString("matricula"));
                fs.setNome(rs.getString("nome"));
                fs.setCpf(rs.getInt("cpf"));

                return fs;

            } else {
                return null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public Fiscal deletar(String matricula) {

        String sql = "DELETE FROM fiscal WHERE matricula=?";
        conn = null;
        pstm = null;
        try {
            conn = ModuloConexao.conectar();
            pstm = (PreparedStatement) conn.prepareStatement(sql);
            pstm.setString(1, matricula);
            pstm.execute();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstm != null) {
                    pstm.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return null;

    }

    public void atualizar(Fiscal fiscal) {
        String sql = "UPDATE fiscal SET nome=?, cpf=?" + "WHERE id=?";
        conn = null;
        pstm = null;

        try {

            conn = ModuloConexao.conectar();
            pstm = (PreparedStatement) conn.prepareStatement(sql);
            pstm.setString(1, fiscal.getMatricula());
            pstm.setString(2, fiscal.getNome());
            pstm.setInt(3, fiscal.getCpf());

            pstm.execute();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstm != null) {
                    pstm.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }

        }

    }
}
