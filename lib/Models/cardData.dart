class CardData {
  final String dressName, dressColor, dressSize, dressImage;
  int dressPrice, quantity;

  CardData({
    required this.dressName,
    required this.dressColor,
    required this.dressSize,
    required this.dressPrice,
    required this.dressImage,
    required this.quantity,
  });
}

List<CardData> contents = [
  CardData(
    dressName: "Pullover",
    dressColor: "Black",
    dressSize: "L",
    dressPrice: 51,
    dressImage: "https://images.pexels.com/photos/1035692/pexels-photo-1035692.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", // Replace with actual image URL
    quantity: 1,
  ),
  CardData(
    dressName: "T-Shirt",
    dressColor: "Grey",
    dressSize: "L",
    dressPrice: 30,
    dressImage: "https://images.pexels.com/photos/3778180/pexels-photo-3778180.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", // Replace with actual image URL
    quantity: 1,
  ),
  CardData(
    dressName: "Sport Dress",
    dressColor: "Black",
    dressSize: "M",
    dressPrice: 43,
    dressImage: "https://images.pexels.com/photos/3653378/pexels-photo-3653378.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load", // Replace with actual image URL
    quantity: 1,
  ),
];
