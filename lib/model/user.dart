class User {
  String name;
  String avatar;
  String address;
  String email;
  String phone;

  User(
      {required this.name,
      required this.avatar,
      required this.address,
      required this.email,
      required this.phone});
}

var userDetails = User(
    name: "Ziva Magnolya",
    address: "Pagar Alam, Indonesia",
    avatar:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPbZxuvd6uVcPhfgpxFra5VswUeZSEfe7xYA&usqp=CAU",
    email: "ziva@gmail.com",
    phone: "+628098080");
