/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Nuno
 */
public class Petani extends User {
    private int idPetani;
    private String nama;
    private String alamat;
    private String komoditas;
    private int jumlah;
    private double harga;
    private String keluhan;

    public int getIdPetani() { return idPetani; }
    public void setIdPetani(int idPetani) { this.idPetani = idPetani; }

    public String getNama() { return nama; }
    public void setNama(String nama) { this.nama = nama; }

    public String getAlamat() { return alamat; }
    public void setAlamat(String alamat) { this.alamat = alamat; }

    public String getKomoditas() { return komoditas; }
    public void setKomoditas(String komoditas) { this.komoditas = komoditas; }

    public int getJumlah() { return jumlah; }
    public void setJumlah(int jumlah) { this.jumlah = jumlah; }

    public double getHarga() { return harga; }
    public void setHarga(double harga) { this.harga = harga; }

    public String getKeluhan() { return keluhan; }
    public void setKeluhan(String keluhan) { this.keluhan = keluhan; }
}
