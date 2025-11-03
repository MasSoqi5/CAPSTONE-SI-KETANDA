/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Nuno
 */
public class Distributor extends User {
    private int idDistributor;
    private String nama;
    private String wilayah;
    private String kontak;

    public int getIdDistributor() { return idDistributor; }
    public void setIdDistributor(int idDistributor) { this.idDistributor = idDistributor; }

    public String getNama() { return nama; }
    public void setNama(String nama) { this.nama = nama; }

    public String getWilayah() { return wilayah; }
    public void setWilayah(String wilayah) { this.wilayah = wilayah; }

    public String getKontak() { return kontak; }
    public void setKontak(String kontak) { this.kontak = kontak; }
}
