class PortalModel {
  int id;
  String name;
  String image;
  bool isOverSpend;

  PortalModel({
    this.id,
    this.name,
    this.image,
    this.isOverSpend = false,
  });
}
