import 'package:dizilerim/widgets/dizi_listesi/dizi_listesi.dart';
import 'package:dizilerim/models/dizi.dart';
import 'package:dizilerim/widgets/yeni_dizi.dart';
import 'package:flutter/material.dart';

class Dizilerim extends StatefulWidget {
  const Dizilerim({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DizilerimState();
  }
}

class _DizilerimState extends State<Dizilerim> {
  final List<Dizi> _diziler = [
    Dizi(
        isim: 'A',
        not: 'İyi',
        puan: 4,
        izlemeTarihi: DateTime.parse('2023-11-23'),
        kategori: Kategori.bilimKurgu),
    Dizi(
        isim: 'B',
        not: 'Ortalama',
        puan: 3,
        izlemeTarihi: DateTime.parse('2024-01-24'),
        kategori: Kategori.dram),
    Dizi(
        isim: 'C',
        not: 'Kötü',
        puan: 2,
        izlemeTarihi: DateTime.parse('2024-02-20'),
        kategori: Kategori.korku),
    Dizi(
        isim: 'D',
        not: 'Çok İyi',
        puan: 5,
        izlemeTarihi: DateTime.parse('2024-03-10'),
        kategori: Kategori.macera),
    Dizi(
        isim: 'E',
        not: 'Çok Kötü',
        puan: 1,
        izlemeTarihi: DateTime.parse('2024-04-01'),
        kategori: Kategori.polisiye),
  ];

  void _modalGoster() {
    showModalBottomSheet(
        context: context,
        builder: ((context) {
          return const YeniDizi();
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dizilerim'),
        actions: [IconButton(onPressed: _modalGoster, icon: const Icon(Icons.add))],
      ),
      body: Column(
        children: [
          const Text('Grafik'),
          Expanded(child: DiziListesi(diziler: _diziler)),
        ],
      ),
    );
  }
}
