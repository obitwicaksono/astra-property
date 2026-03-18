import 'package:flutter/material.dart';
import 'package:astra_property/models/list_property.dart';

class DetailProp extends StatelessWidget {
  final String propertyId;
  const DetailProp({super.key, required this.propertyId});

  @override
  Widget build(BuildContext context) {
    final property = ListPropertyModel.getListProperty()
        .firstWhere(
          (p) => p.id == propertyId,
          orElse: () => ListPropertyModel(
            cluster: '',
            tipe: '',
            harga: '',
            id: '',
            description: '',
            address: '',
            bedrooms: 0,
            isAvailable: false,
          ),
        );

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(property.cluster),
            Text(property.tipe),
            Text(
              'Rp ${property.harga.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}',
              // Format harga berubah dinamis
              style: TextStyle(
                color: Colors.green,
                fontSize: 28,
              ),
            ),
            Text(property.description),
            Text(property.address),
            Text('Type ${property.bedrooms}'),
          ],
        ),
      ),
    );
  }
}
