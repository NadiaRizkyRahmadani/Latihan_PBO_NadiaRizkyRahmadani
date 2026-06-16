<?php
// TiketReguler.php
require_once 'Tiket.php';

class TiketRegular extends Tiket {
    private $tipeAudio;
    private $lokasiBaris;

    public function __construct($data) {
        parent::__construct($data); 
        $this->tipeAudio = $data['tipe_audio'] ?? 'Standard';
        $this->lokasiBaris = $data['lokasi_baris'] ?? '-';
    }

    // Fungsi khusus untuk mengambil semua data tiket Regular dari database
    public static function getTiketRegular($db) {
        $query = "SELECT * FROM tabel_tiket WHERE jenis_studio = 'Regular'";
        $stmt = $db->prepare($query);
        $stmt->execute();
        
        $daftar = [];
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $daftar[] = new self($row); // 'self' merujuk ke kelas TiketRegular itu sendiri
        }
        return $daftar;
    }

    public function hitungTotalHarga() {
        return $this->hargaDasarTiket * $this->jumlah_kursi;
    }

    public function tampilkanInfoFasilitas() {
        return "Studio Regular | Audio: {$this->tipeAudio} | Baris Kursi: {$this->lokasiBaris}";
    }
}
?>