class ListPropertyModel {
  final String cluster;
  final String tipe;
  final String harga;

  ListPropertyModel({
    required this.cluster,
    required this.tipe,
    required this.harga,
  });

  static List<ListPropertyModel> getListProperty() {
    List<ListPropertyModel> listProperty = [];

    listProperty.add(
      ListPropertyModel(
        cluster: "Cluster Sakura",
        tipe: "Type 36",
        harga: "Rp350.000.000",
      ),
    );

    listProperty.add(
      ListPropertyModel(
        cluster: "Cluster Maple",
        tipe: "Type 45",
        harga: "Rp420.000.000",
      ),
    );

    listProperty.add(
      ListPropertyModel(
        cluster: "Cluster Emerald",
        tipe: "Type 60",
        harga: "Rp550.000.000",
      ),
    );

    listProperty.add(
      ListPropertyModel(
        cluster: "Cluster Lavender",
        tipe: "Type 70",
        harga: "Rp650.000.000",
      ),
    );

    listProperty.add(
      ListPropertyModel(
        cluster: "Cluster Magnolia",
        tipe: "Type 90",
        harga: "Rp820.000.000",
      ),
    );

    listProperty.add(
      ListPropertyModel(
        cluster: "Cluster Pine",
        tipe: "Type 36",
        harga: "Rp330.000.000",
      ),
    );

    listProperty.add(
      ListPropertyModel(
        cluster: "Cluster Oakwood",
        tipe: "Type 50",
        harga: "Rp470.000.000",
      ),
    );

    listProperty.add(
      ListPropertyModel(
        cluster: "Cluster Dahlia",
        tipe: "Type 65",
        harga: "Rp590.000.000",
      ),
    );

    listProperty.add(
      ListPropertyModel(
        cluster: "Cluster Orchid",
        tipe: "Type 80",
        harga: "Rp720.000.000",
      ),
    );

    listProperty.add(
      ListPropertyModel(
        cluster: "Cluster Gardenia",
        tipe: "Type 100",
        harga: "Rp950.000.000",
      ),
    );
    return listProperty;
  }
}
