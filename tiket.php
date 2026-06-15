<?php
// Tiket.php

abstract class Tiket {
    // Atribut Terenkapsulasi (Protected)
    protected $id_tiket;
    protected $nama_film;
    protected $jadwal_tayang;
    protected $jumlah_kursi;
    protected $hargaDasarTiket; // Mapping dari kolom 'harga_dasar_tiket'

    // Constructor untuk memetakan data dari kolom tabel database
    public function __construct($data) {
        $this->id_tiket = $data['id_tiket'] ?? null;
        $this->nama_film = $data['nama_film'] ?? null;
        $this->jadwal_tayang = $data['jadwal_tayang'] ?? null;
        $this->jumlah_kursi = $data['jumlah_kursi'] ?? 0;
        $this->hargaDasarTiket = $data['harga_dasar_tiket'] ?? 0;
    }

    // Getter (Opsional, agar kelas luar bisa membaca data jika diperlukan)
    public function getIdTiket() { return $this->id_tiket; }
    public function getNamaFilm() { return $this->nama_film; }
    public function getJadwalTayang() { return $this->jadwal_tayang; }
    public function getJumlahKursi() { return $this->jumlah_kursi; }
    public function getHargaDasarTiket() { return $this->hargaDasarTiket; }

    // ====== ABSTRACT METHODS ======
    // Wajib diimplementasikan/diisi oleh kelas anak (Reguler, IMAX, Velvet)
    
    abstract public function hitungTotalHarga();
    abstract public function tampilkanInfoFasilitas();
}
?>