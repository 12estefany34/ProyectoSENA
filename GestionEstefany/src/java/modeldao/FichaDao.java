/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modeldao;

import config.Conexion;
import interfaz.MeFicha;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import model.Ficha;



/**
 *
 * @author APRENDIZ
 */
public class FichaDao implements MeFicha
{
    Ficha fi= new Ficha();
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
   

    @Override
    public Ficha list(int id) {
        String sql = "select * from ficha where idficha="+id;
       try{
        con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next())
            {
             fi.setIdficha(rs.getInt("idficha"));
             fi.setCodficha(rs.getInt("codficha"));
             fi.setCantapre(rs.getInt("cantapre"));
             fi.setCodprod(rs.getInt("codprod"));
             fi.setCodapre(rs.getInt("codapre"));
            }
           
       }catch(Exception e)
       {
          JOptionPane.showMessageDialog(null,"No puede traer la informacion");
       }
       return fi;
    }
    

    @Override
    public List listasFichas() {
         ArrayList<Ficha> lista = new ArrayList<Ficha>();
        String sql = "select * from ficha";
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next())
            {
                Ficha fi = new Ficha();
                
                fi.setCodficha(rs.getInt("codficha"));
                fi.setCantapre(rs.getInt("cantapre"));
                fi.setCodprod(rs.getInt("codprod"));
                fi.setCodapre(rs.getInt("codapre"));
                lista.add(fi);
               
            }
        }catch(Exception e)
            
        {
            JOptionPane.showMessageDialog(null,"No puede traer la informacion"+e.getMessage());
        }
        return lista;
    }

    

    @Override
    public boolean registroficha(Ficha fi) {
        String sql="insert into ficha(codficha,cantapre,codprod,codapre)values('"+fi.getCodficha()+"','"+fi.getCantapre()+"','"+fi.getCodprod()+"','"+fi.getCodapre()+"')";
        try{
           con=cn.getConnection();
           ps=con.prepareStatement(sql);
           ps.executeUpdate();
           
          JOptionPane.showMessageDialog(null,"Ficha registrada");
        }catch(Exception e)
        {
           JOptionPane.showMessageDialog(null,"Ficha no registrado");
        }
        return false;
    }

    @Override
    public boolean actualizarficha(Ficha fi) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean eliminarficha(int idficha) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
   
}
