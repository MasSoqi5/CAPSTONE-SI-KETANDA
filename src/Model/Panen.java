/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Nuno
 */
public class Panen {
    private int idPanen;
    private int idPetani;
    private String komoditas;
    private int jumlah;
    private double harga;
    private String tanggal;

    public int getIdPanen() { return idPanen; }
    public void setIdPanen(int idPanen) { this.idPanen = idPanen; }

    public int getIdPetani() { return idPetani; }
    public void setIdPetani(int idPetani) { this.idPetani = idPetani; }

    public String getKomoditas() { return komoditas; }
    public void setKomoditas(String komoditas) { this.komoditas = komoditas; }

    public int getJumlah() { return jumlah; }
    public void setJumlah(int jumlah) { this.jumlah = jumlah; }

    public double getHarga() { return harga; }
    public void setHarga(double harga) { this.harga = harga; }

    public String getTanggal() { return tanggal; }
    public void setTanggal(String tanggal) { this.tanggal = tanggal; }
}
