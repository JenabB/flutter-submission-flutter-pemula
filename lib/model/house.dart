class House {
  String name;
  String imageUrl;
  int price;
  String type;
  int bedrooms;
  int livingRooms;

  House(
      {required this.name,
      required this.imageUrl,
      required this.price,
      required this.type,
      required this.bedrooms,
      required this.livingRooms});
}

var houseList = [
  House(
      name: "Villa Kebun Karet",
      price: 1000,
      bedrooms: 3,
      livingRooms: 1,
      type: "Villa",
      imageUrl:
          "https://asset.kompas.com/crops/rYHmAv4mfDvUMQC6OekMqb7j6EU=/0x202:1080x922/750x500/data/photo/2022/09/08/6319c1acd3086.jpg"),
  House(
      name: "Apartment Selangor",
      price: 1300,
      bedrooms: 3,
      type: "Apartment",
      livingRooms: 1,
      imageUrl:
          "https://lh3.googleusercontent.com/NA1oJeGtxW6xTIFIRPYctXGF5FpuGVQ8gNJZVpauKUhDfdKdPva3DVPQ9i7UM5chWLiMoxHaPBTcI9tZES2h1L1uDRkTkhY44iCrPig=s3000"),
  House(
      name: "Austin Modern Home",
      price: 64000,
      type: "Home",
      bedrooms: 3,
      livingRooms: 1,
      imageUrl:
          "https://i0.wp.com/mads.media/wp-content/uploads/2022/12/Andrea_Calo_0250-1.jpg?fit=1500%2C1125&ssl=1"),
  House(
      name: "Home Layla Sapek",
      price: 5000,
      type: "Home",
      bedrooms: 3,
      livingRooms: 1,
      imageUrl:
          "https://hips.hearstapps.com/hmg-prod/images/screen-shot-2019-07-01-at-4-13-42-pm-1562012178.png?crop=1.00xw:0.891xh;0,0&resize=640:*"),
  House(
      name: "Jogjakarta Villa",
      price: 2000,
      type: "Villa",
      bedrooms: 3,
      livingRooms: 1,
      imageUrl:
          "https://www.anekawisata.com/wp-content/uploads/2020/11/villa-di-jogja.jpg"),
  House(
      name: "Badade Nagar Frozen",
      price: 10044,
      type: "Apartment",
      bedrooms: 3,
      livingRooms: 1,
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRByTDTGmL2MUH6nEriIbZAqiqDX05ch6W35h9ZNKsVBKb3bGsb25_j0FZN4aU3tm4GIgU&usqp=CAU"),
  House(
      name: "BQ Luxury Hotel",
      price: 1700,
      type: "Villa",
      bedrooms: 3,
      livingRooms: 1,
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQz7Jr_5LXJIBt3zQEb4_96Pb7EW8Cb2-8IQ6a3vihcDKNL2zw7NK6kZsQtpZMkNfVpsc4&usqp=CAU"),
  House(
      name: "Milan Pizza Domino",
      price: 21000,
      type: "rooms",
      bedrooms: 3,
      livingRooms: 1,
      imageUrl:
          "https://cf.bstatic.com/xdata/images/hotel/max1024x768/186088385.jpg?k=1319a04a655384b59af9987bfcc904a7db2c6bd6649829de7601adc224647f46&o=&hp=1")
];
