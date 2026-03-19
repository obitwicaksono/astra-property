import 'package:flutter/material.dart';
import 'package:astra_property/models/list_property.dart';

class ListProp extends StatelessWidget {
  final ListPropertyModel list;
  final VoidCallback? onTap;
  const ListProp({
    super.key,
    required this.list,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.house),
      title: Text(list.cluster),
      subtitle: Text(list.tipe),
      trailing: Text(list.harga),
      onTap: onTap,
    );
  }
}
