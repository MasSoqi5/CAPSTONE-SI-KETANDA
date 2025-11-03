/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import java.sql.Connection;

/**
 *
 * @author Nuno
 */
public class TestDatabase {
    public static void main(String[] args) {
        Connection c = KoneksiDatabase.getConnection();
        if (c != null) {
            System.out.println("✅ Koneksi berhasil ke database!");
        } else {
            System.out.println("❌ Gagal koneksi.");
        }
    }
}