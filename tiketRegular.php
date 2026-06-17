<?php
// TiketReguler.php
require_once 'Tiket.php';

class TiketReguler extends Tiket {
    private $tipeAudio;
    private $lokasiBaris;

    public function __construct($data) {
        parent::__construct($data); 
        $this->tipeAudio = $data['tipe_audio'] ?? 'Standard';
        $this->lokasiBaris = $data['lokasi_baris'] ?? '-';
    }

    // Fungsi khusus untuk mengambil semua data tiket Regular dari database
    public static function getTiketReguler($db) {
        $query = "SELECT * FROM tabel_tiket WHERE jenis_studio = 'Reguler'";
        $stmt = $db->prepare($query);
        $stmt->execute();
        
        $daftar = [];
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $daftar[] = new self($row);
        }
        return $daftar;
    }

    // [Tahap 5] Overriding: Tarif standar murni tanpa biaya tambahan
    public function hitungTotalHarga() {
        return $this->jumlah_kursi * $this->hargaDasarTiket;
    }

    public function tampilkanInfoFasilitas() {
        return "Studio Regular | Audio: {$this->tipeAudio} | Baris Kursi: {$this->lokasiBaris}";
    }
}
?>