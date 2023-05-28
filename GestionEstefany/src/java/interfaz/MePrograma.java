/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package interfaz;

import java.util.List;
import model.Programa;

/**
 *
 * @author APRENDIZ
 */
public interface MePrograma {
    public Programa list (int codprograma);
    public List listarpro();
    public boolean Registrarpro (Programa pro);
    public boolean actualizarpro (Programa pro);
    public boolean eliminarpro (int codprograma);
}
