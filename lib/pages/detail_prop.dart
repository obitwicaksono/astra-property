import 'package:flutter/material.dart';
import 'package:astra_property/models/list_property.dart';
import 'package:go_router/go_router.dart'; // Import GoRouter

class DetailProp extends StatelessWidget {
  final String propertyId;

  const DetailProp({super.key, required this.propertyId});

  @override
  Widget build(BuildContext context) {
    final property = ListPropertyModel.getListProperty()
        .firstWhere(
          (p) => p.id == propertyId,
          orElse: () => ListPropertyModel(
            cluster: 'Data Tidak Ditemukan',
            tipe: '-',
            harga: '0',
            id: '',
            description:
                'Maaf, properti yang Anda cari tidak tersedia.',
            address: '-',
            bedrooms: 0,
            isAvailable: false,
          ),
        );

    return Scaffold(
      appBar: AppBar(
        // 1. WARNA TIPIS (Contoh: Biru sangat muda atau Abu-abu terang)
        backgroundColor:
            Colors.blue[50], // Atau Colors.grey[100]
        // 2. WARNA IKON & TEKS (Agar kontras dengan background tipis)
        foregroundColor: Colors.black87,

        // 3. JUDUL
        title: Text(
          property.cluster,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,

        // 4. TOMBOL BACK KUSTOM (Opsional, jika ingin paksa ke '/')
        // Jika ingin perilaku back standar (kembali ke halaman sebelumnya),
        // Anda bisa menghapus bagian 'leading' ini.
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            // Navigasi eksplisit ke Home
            context.go('/');
          },
        ),

        elevation:
            0, // Menghilangkan bayangan agar lebih modern
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                property.cluster,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  property.tipe,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'Rp ${property.harga}',
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 32),
              const Text(
                'Deskripsi Properti',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                property.description,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 32),
              const Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.redAccent,
                    size: 24,
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Lokasi Properti',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const SizedBox(width: 32),
                  Expanded(
                    child: Text(
                      property.address,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
