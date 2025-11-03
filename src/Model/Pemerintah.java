/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Nuno
 */
public class Pemerintah extends User {
    private int idPemerintah;
    private String nama;
    private String wilayah;
    private String jabatan;

    public int getIdPemerintah() { return idPemerintah; }
    public void setIdPemerintah(int idPemerintah) { this.idPemerintah = idPemerintah; }

    public String getNama() { return nama; }
    public void setNama(String nama) { this.nama = nama; }

    public String getWilayah() { return wilayah; }
    public void setWilayah(String wilayah) { this.wilayah = wilayah; }

    public String getJabatan() { return jabatan; }
    public void setJabatan(String jabatan) { this.jabatan = jabatan; }
}
