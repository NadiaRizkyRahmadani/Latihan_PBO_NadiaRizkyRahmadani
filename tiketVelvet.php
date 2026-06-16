<?php
// TiketVelvet.php
require_once 'Tiket.php';

class TiketVelvet extends Tiket {
    private $bantalSelimutPack;
    private $layananButler;

    public function __construct($data) {
        parent::__construct($data);
        $this->bantalSelimutPack = $data['bantal_selimut_pack'] ?? 'None';
        $this->layananButler = $data['layanan_butler'] ?? 'Off';
    }

    // Fungsi khusus untuk mengambil semua data tiket Velvet dari database
    public static function getTiketVelvet($db) {
        $query = "SELECT * FROM tabel_tiket WHERE jenis_studio = 'Velvet'";
        $stmt = $db->prepare($query);
        $stmt->execute();
        
        $daftar = [];
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $daftar[] = new self($row);
        }
        return $daftar;
    }

    public function hitungTotalHarga() {
        $serviceCharge = 50000;
        return ($this->hargaDasarTiket * $this->jumlah_kursi) + $serviceCharge;
    }

    public function tampilkanInfoFasilitas() {
        return "Studio Velvet | Fasilitas: {$this->bantalSelimutPack} | Layanan Butler: {$this->layananButler}";
    }
}
?>