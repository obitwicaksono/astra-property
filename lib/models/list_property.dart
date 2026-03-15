class ListPropertyModel {
  final String cluster;
  final String tipe;
  final String harga;
  final String id;

  final String description;
  final String address;
  final int bedrooms;
  final bool isAvailable;

  ListPropertyModel({
    required this.cluster,
    required this.tipe,
    required this.harga,
    required this.id,
    required this.description,
    required this.address,
    required this.bedrooms,
    required this.isAvailable,
  });

  static List<ListPropertyModel> getListProperty() {
    List<ListPropertyModel> listProperty = [];

    listProperty.add(
      ListPropertyModel(
        id: "P001",
        cluster: "Cluster Sakura",
        tipe: "Type 36",
        harga: "Rp350.000.000",
        description: "Rumah minimalis modern dengan taman kecil.",
        address: "Malang, Jawa Timur",
        bedrooms: 2,
        isAvailable: true,
      ),
    );

    listProperty.add(
      ListPropertyModel(
        id: "P002",
        cluster: "Cluster Maple",
        tipe: "Type 45",
        harga: "Rp420.000.000",
        description: "Rumah nyaman dekat fasilitas umum.",
        address: "Malang, Jawa Timur",
        bedrooms: 2,
        isAvailable: true,
      ),
    );

    listProperty.add(
      ListPropertyModel(
        id: "P003",
        cluster: "Cluster Emerald",
        tipe: "Type 60",
        harga: "Rp550.000.000",
        description: "Rumah luas dengan desain modern.",
        address: "Malang, Jawa Timur",
        bedrooms: 3,
        isAvailable: true,
      ),
    );

    listProperty.add(
      ListPropertyModel(
        id: "P004",
        cluster: "Cluster Lavender",
        tipe: "Type 70",
        harga: "Rp650.000.000",
        description: "Rumah keluarga dengan halaman luas.",
        address: "Malang, Jawa Timur",
        bedrooms: 3,
        isAvailable: false,
      ),
    );

    listProperty.add(
      ListPropertyModel(
        id: "P005",
        cluster: "Cluster Magnolia",
        tipe: "Type 90",
        harga: "Rp820.000.000",
        description: "Hunian premium dengan desain elegan.",
        address: "Malang, Jawa Timur",
        bedrooms: 4,
        isAvailable: true,
      ),
    );

    listProperty.add(
      ListPropertyModel(
        id: "P006",
        cluster: "Cluster Pine",
        tipe: "Type 36",
        harga: "Rp330.000.000",
        description: "Rumah sederhana cocok untuk keluarga kecil.",
        address: "Malang, Jawa Timur",
        bedrooms: 2,
        isAvailable: true,
      ),
    );

    listProperty.add(
      ListPropertyModel(
        id: "P007",
        cluster: "Cluster Oakwood",
        tipe: "Type 50",
        harga: "Rp470.000.000",
        description: "Rumah modern dengan ventilasi baik.",
        address: "Malang, Jawa Timur",
        bedrooms: 3,
        isAvailable: false,
      ),
    );

    listProperty.add(
      ListPropertyModel(
        id: "P008",
        cluster: "Cluster Dahlia",
        tipe: "Type 65",
        harga: "Rp590.000.000",
        description: "Rumah nyaman di lingkungan asri.",
        address: "Malang, Jawa Timur",
        bedrooms: 3,
        isAvailable: true,
      ),
    );

    listProperty.add(
      ListPropertyModel(
        id: "P009",
        cluster: "Cluster Orchid",
        tipe: "Type 80",
        harga: "Rp720.000.000",
        description: "Rumah luas dengan carport besar.",
        address: "Malang, Jawa Timur",
        bedrooms: 4,
        isAvailable: true,
      ),
    );

    listProperty.add(
      ListPropertyModel(
        id: "P010",
        cluster: "Cluster Gardenia",
        tipe: "Type 100",
        harga: "Rp950.000.000",
        description: "Hunian mewah dengan halaman luas.",
        address: "Malang, Jawa Timur",
        bedrooms: 4,
        isAvailable: false,
      ),
    );

    return listProperty;
  }
}
