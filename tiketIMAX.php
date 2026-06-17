<?php
// TiketIMAX.php
require_once 'Tiket.php';

class TiketIMAX extends Tiket {
    private $kacamata3dId;
    private $efekGerakFitur;

    public function __construct($data) {
        parent::__construct($data);
        $this->kacamata3dId = $data['kacamata_3d_id'] ?? null;
        $this->efekGerakFitur = $data['efek_gerak_fitur'] ?? 'None';
    }

    // Fungsi khusus untuk mengambil semua data tiket IMAX dari database
    public static function getTiketIMAX($db) {
        $query = "SELECT * FROM tabel_tiket WHERE jenis_studio = 'IMAX'";
        $stmt = $db->prepare($query);
        $stmt->execute();
        
        $daftar = [];
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $daftar[] = new self($row);
        }
        return $daftar;
    }

    // [Tahap 5] Overriding: Dikenakan biaya tambahan flat Rp 35.000
    public function hitungTotalHarga() {
        return ($this->jumlah_kursi * $this->hargaDasarTiket) + 35000;
    }

    public function tampilkanInfoFasilitas() {
        $status3d = $this->kacamata3dId ? "Ya (ID: {$this->kacamata3dId})" : "Tidak";
        return "Studio IMAX | Kacamata 3D: {$status3d} | Fitur Gerak: {$this->efekGerakFitur}";
    }
}
?>