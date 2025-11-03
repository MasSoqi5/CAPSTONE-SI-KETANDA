/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Nuno
 */
public class Distribusi {
    private int idDistribusi;
    private int idDistributor;
    private String wilayah;
    private String komoditas;
    private int jumlah;
    private String tanggal;

    public int getIdDistribusi() { return idDistribusi; }
    public void setIdDistribusi(int idDistribusi) { this.idDistribusi = idDistribusi; }

    public int getIdDistributor() { return idDistributor; }
    public void setIdDistributor(int idDistributor) { this.idDistributor = idDistributor; }

    public String getWilayah() { return wilayah; }
    public void setWilayah(String wilayah) { this.wilayah = wilayah; }

    public String getKomoditas() { return komoditas; }
    public void setKomoditas(String komoditas) { this.komoditas = komoditas; }

    public int getJumlah() { return jumlah; }
    public void setJumlah(int jumlah) { this.jumlah = jumlah; }

    public String getTanggal() { return tanggal; }
    public void setTanggal(String tanggal) { this.tanggal = tanggal; }
}
