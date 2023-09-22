class Category {
  String name;
  String imageAsset;

  Category({required this.name, required this.imageAsset});
}

var categoryList = [
  Category(name: "House", imageAsset: "images/categories/house.jpg"),
  Category(name: "Apartment", imageAsset: "images/categories/apartment.jpg"),
  Category(name: "Villa", imageAsset: "images/categories/villa.jpg"),
  Category(name: "Rooms", imageAsset: "images/categories/rooms.jpg"),
  Category(name: "Outdoor", imageAsset: "images/categories/outdoor.jpg")
];
