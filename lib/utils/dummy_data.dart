import 'package:asad_project/data/model/bank_pilihan.dart';
import 'package:asad_project/data/model/berita.dart';
import 'package:asad_project/data/model/history_transaksi.dart';

List<Berita> dummyNews = [
  Berita(
    imgSrc: "./assets/images/berita1.png",
    title: "Program Pendidikan Standarisasi Da'i MUI Ke-36",
    date: "18/12/2024",
  ),
  Berita(
    imgSrc: "./assets/images/berita2.png",
    title: "PAyo Nyantri di Pondok Pesantren As’ad",
    date: "03/12/2024",
  ),

  Berita(
    imgSrc: "./assets/images/berita3.png",
    title: "Perayaan Hari Santri tampak berbeda",
    date: "31/10/2023",
  ),
];

// List lengkap berdasarkan data transaksi dari gambar
List<HistoryTransaksi> history = [
  HistoryTransaksi(
    jenis: "Penarikan",
    tanggal: "09 Mar 2022",
    pengeluaran: "Rp 300.000",
  ),
  HistoryTransaksi(
    jenis: "Setoran",
    tanggal: "09 Mar 2022",
    pengeluaran: "Rp 200.000",
  ),
  HistoryTransaksi(
    jenis: "Setoran",
    tanggal: "09 Mar 2022",
    pengeluaran: "Rp 500.000",
  ),
  HistoryTransaksi(
    jenis: "Penarikan",
    tanggal: "09 Mar 2022",
    pengeluaran: "Rp 100.000",
  ),
  HistoryTransaksi(
    jenis: "Penarikan",
    tanggal: "09 Mar 2022",
    pengeluaran: "Rp 150.000",
  ),
];

List<BankPilihan> bankPilihan = [
  BankPilihan(namaBank: "Bank BRI", minTransaksi: "100.000,00"),
  BankPilihan(namaBank: "Bank BCA", minTransaksi: "50.000,00"),
  BankPilihan(namaBank: "Bank BNI", minTransaksi: "50.000,00"),
];
