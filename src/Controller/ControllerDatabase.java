/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import Model.Distribusi;
import Model.Panen;
import Model.Pemerintah;
import Model.Transaksi;
import Model.User;
import java.sql.*;
import java.util.ArrayList;
import Model.*;
/**
 *
 * @author Nuno
 */
public class ControllerDatabase {
    private Connection conn = KoneksiDatabase.getConnection();

    // login 
    public User login(String username, String password) {
        try {
            String sql = "SELECT * FROM user WHERE username=? AND password=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                User u = new User();
                u.setIdUser(rs.getInt("id_user"));
                u.setUsername(rs.getString("username"));
                u.setPassword(rs.getString("password"));
                u.setRole(rs.getString("role"));
                return u;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean register(User u) {
        try {
            String sql = "INSERT INTO user (username, password, role) VALUES (?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, u.getUsername());
            ps.setString(2, u.getPassword());
            ps.setString(3, u.getRole());
            ps.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // petani
    public void tambahPanen(Panen p) {
        try {
            String sql = "INSERT INTO panen (id_petani, komoditas, jumlah, harga, tanggal) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, p.getIdPetani());
            ps.setString(2, p.getKomoditas());
            ps.setInt(3, p.getJumlah());
            ps.setDouble(4, p.getHarga());
            ps.setString(5, p.getTanggal());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public ArrayList<Panen> getAllPanen() {
        ArrayList<Panen> list = new ArrayList<>();
        try {
            Statement s = conn.createStatement();
            ResultSet rs = s.executeQuery("SELECT * FROM panen");
            while (rs.next()) {
                Panen p = new Panen();
                p.setIdPanen(rs.getInt("id_panen"));
                p.setIdPetani(rs.getInt("id_petani"));
                p.setKomoditas(rs.getString("komoditas"));
                p.setJumlah(rs.getInt("jumlah"));
                p.setHarga(rs.getDouble("harga"));
                p.setTanggal(rs.getString("tanggal"));
                list.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public void kirimKeluhan(Petani p) {
        try {
            String sql = "UPDATE petani SET keluhan=? WHERE id_petani=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, p.getKeluhan());
            ps.setInt(2, p.getIdPetani());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // pemerintah
    public ArrayList<Pemerintah> getDataWilayah() {
        ArrayList<Pemerintah> list = new ArrayList<>();
        try {
            Statement s = conn.createStatement();
            ResultSet rs = s.executeQuery("SELECT * FROM pemerintah");
            while (rs.next()) {
                Pemerintah p = new Pemerintah();
                p.setIdPemerintah(rs.getInt("id_pemerintah"));
                p.setNama(rs.getString("nama"));
                p.setWilayah(rs.getString("wilayah"));
                p.setJabatan(rs.getString("jabatan"));
                list.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public void updateKomoditas(String wilayah, int stokBaru) {
        try {
            String sql = "UPDATE pemerintah SET stok_pangan=? WHERE wilayah=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, stokBaru);
            ps.setString(2, wilayah);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // distribusi
    public void tambahDistribusi(Distribusi d) {
        try {
            String sql = "INSERT INTO distribusi (id_distributor, wilayah, komoditas, jumlah, tanggal) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, d.getIdDistributor());
            ps.setString(2, d.getWilayah());
            ps.setString(3, d.getKomoditas());
            ps.setInt(4, d.getJumlah());
            ps.setString(5, d.getTanggal());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public ArrayList<Distribusi> getRiwayatDistribusi() {
        ArrayList<Distribusi> list = new ArrayList<>();
        try {
            Statement s = conn.createStatement();
            ResultSet rs = s.executeQuery("SELECT * FROM distribusi");
            while (rs.next()) {
                Distribusi d = new Distribusi();
                d.setIdDistribusi(rs.getInt("id_distribusi"));
                d.setIdDistributor(rs.getInt("id_distributor"));
                d.setWilayah(rs.getString("wilayah"));
                d.setKomoditas(rs.getString("komoditas"));
                d.setJumlah(rs.getInt("jumlah"));
                d.setTanggal(rs.getString("tanggal"));
                list.add(d);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    // cutomer
    public void beliKomoditas(Transaksi t) {
        try {
            String sql = "INSERT INTO transaksi (id_customer, komoditas, jumlah, total_harga, tanggal) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, t.getIdCustomer());
            ps.setString(2, t.getKomoditas());
            ps.setInt(3, t.getJumlah());
            ps.setDouble(4, t.getTotalHarga());
            ps.setString(5, t.getTanggal());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public ArrayList<Transaksi> getRiwayatTransaksi(int idCustomer) {
        ArrayList<Transaksi> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM transaksi WHERE id_customer=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, idCustomer);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Transaksi t = new Transaksi();
                t.setIdTransaksi(rs.getInt("id_transaksi"));
                t.setIdCustomer(rs.getInt("id_customer"));
                t.setKomoditas(rs.getString("komoditas"));
                t.setJumlah(rs.getInt("jumlah"));
                t.setTotalHarga(rs.getDouble("total_harga"));
                t.setTanggal(rs.getString("tanggal"));
                list.add(t);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    // admin
    public ArrayList<User> getAllUser() {
        ArrayList<User> list = new ArrayList<>();
        try {
            Statement s = conn.createStatement();
            ResultSet rs = s.executeQuery("SELECT * FROM user");
            while (rs.next()) {
                User u = new User();
                u.setIdUser(rs.getInt("id_user"));
                u.setUsername(rs.getString("username"));
                u.setPassword(rs.getString("password"));
                u.setRole(rs.getString("role"));
                list.add(u);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public void tambahUser(User u) {
        try {
            String sql = "INSERT INTO user (username, password, role) VALUES (?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, u.getUsername());
            ps.setString(2, u.getPassword());
            ps.setString(3, u.getRole());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void hapusUser(int idUser) {
        try {
            String sql = "DELETE FROM user WHERE id_user=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, idUser);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Connection getConnection() {
        return conn;
    }
}
