package modeldao;

import config.Conexion;
import interfaz.MeAprendiz;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import model.Aprendiz;


public class AprendizDao implements MeAprendiz{
Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Aprendiz usu=new Aprendiz();
    @Override
    public Aprendiz list(int ide) {
       String sql = "select * from aprendiz where id="+ide;
       try{
       con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next())
            {
             usu.setId(rs.getInt("id"));
             usu.setCodapred(rs.getInt("docuaprendiz"));
             usu.setNombreap(rs.getString("nomaprendiz"));
             usu.setApellidoap(rs.getString("apeaprendiz"));
             usu.setEmailap((rs.getString("emailaprendiz")));
             usu.setTeleap(rs.getInt("telaprendiz"));
            }
           
       }catch(Exception e)
       {
          JOptionPane.showMessageDialog(null,"No puede traer la informacion");
       }
       return usu;
    }

    @Override
    public List listadoA() {
        ArrayList<Aprendiz> lista = new ArrayList<Aprendiz>();
        String sql = "select * from aprendiz";
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next())
            {
                Aprendiz usu = new Aprendiz();
                usu.setId(rs.getInt("id"));
                usu.setCodapred(rs.getInt("docuaprendiz"));
                usu.setNombreap(rs.getString("nomaprendiz"));
                usu.setApellidoap(rs.getString("apeaprendiz"));
                usu.setEmailap(rs.getString("emailaprendiz"));
                usu.setTeleap(rs.getInt("telaprendiz"));
                lista.add(usu);
               
            }
        }catch(Exception e)
        {
        }
        return lista;
    }  
@Override
public boolean registraap(Aprendiz ap) {
       String sql="insert into aprendiz(docuaprendiz,nomaprendiz,apeaprendiz,emailaprendiz,telaprendiz)values('"+ap.getCodapred()+"','"+ap.getNombreap()+"','"+ap.getApellidoap()+"','"+ap.getEmailap()+"','"+ap.getTeleap()+"')";
        try{
          con=cn.getConnection();
          ps=con.prepareStatement(sql);
          ps.executeUpdate();
          JOptionPane.showMessageDialog(null,"Usuario registrado");
        }catch(Exception e)
        {
           JOptionPane.showMessageDialog(null,"Usuario ya esta registrado");
        }
        return false;
    }

    @Override
    public boolean actualizarap(Aprendiz ap) {
        String sql = "update aprendiz set docuaprendiz='"+ap.getCodapred()+"',nomaprendiz='"+ap.getNombreap()+"',apeaprendiz='"+ap.getApellidoap()+"',emailaprendiz='"+ap.getEmailap()+"',telaprendiz='"+ap.getTeleap()+"' where id="+ap.getId();
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }  catch (Exception e)  {
        }
        return false;  
   
    }

    @Override
    public boolean eliminarap(int id) {
        String sql="delete from aprendiz where id="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null,"Aprendiz eliminado");
           
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,"Aprendiz no se puede eliminar");
        }
        return false;
   
    }
   
   
}