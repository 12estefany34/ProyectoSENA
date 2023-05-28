/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modeldao;

import config.Conexion;
import interfaz.MePrograma;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import model.Programa;

/**
 *
 * @author APRENDIZ
 */
public class ProgramaDao implements MePrograma {
        Conexion cn = new Conexion();
        Programa po = new Programa(); 
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
    @Override
    public Programa list(int ide) {
         String sql = "select * from programa where codprograma="+ide;
       try{
       con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next())
            {
             po.setCodprograma(rs.getInt("codprograma"));
             po.setNombrepro(rs.getString("nombrepro"));
            }
            
       }catch(Exception e)
       {
          JOptionPane.showMessageDialog(null,"No puede traer la informacion");
       }
       return po;
    }

    @Override
    public List listarpro() {
        ArrayList<Programa> lista = new ArrayList<Programa>();
        String sql = "select * from Programa";
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next())
            {
                Programa po = new Programa();
                po.setCodprograma(rs.getInt("codprograma"));
                po.setNombrepro(rs.getString("Nombrepro"));
                lista.add(po);
                
            }
        }catch(Exception e)
        {
        }
        return lista;
    }

    @Override
    public boolean Registrarpro(Programa pro) {
        String sql= "insert into programa(codprograma,nombrepro)values('"+pro.getCodprograma()+"','"+pro.getNombrepro()+"')";
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null, "Programa registrado");
        }catch(Exception e)
        {
        JOptionPane.showMessageDialog(null, "Programa no registrado");

        } 
        return false;
    }

    @Override
    public boolean actualizarpro(Programa pro) {
        String sql = "update programa set codprograma='"+pro.getCodprograma()+"',nombrepro='"+pro.getNombrepro()+"'where codprograma="+pro.getCodprograma();
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }  catch (Exception e)  {
        }
        return false;  
    }

    @Override
    public boolean eliminarpro(int codprograma) {
         String sql="delete from programa where codprograma="+codprograma;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null,"Programa eliminado");
            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,"Programa no se puede eliminar");
        }
        return false;
    
    }
    
}
