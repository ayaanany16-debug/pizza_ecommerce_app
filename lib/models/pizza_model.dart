class PizzaModel {
  String title;
  int calory;
  double price;
  String image;
  String Time;
  double rating;
  int quantity;


  PizzaModel({
    required this.title,required this.calory,required this.price,required this.image,required this.Time,required this.rating, this.quantity=1
  });

  static List<PizzaModel> pizza=[
    PizzaModel(title: "Melting Cheese", calory: 44, price: 9.47, image: "assets/images/Pizza1.png", Time: '20 - 30 min', rating: 4.9),
    PizzaModel(title: "Pizza Capricciosa", calory: 54, price: 12.55, image: "assets/images/Pizza2.png", Time: '30 - 45 min', rating: 4.7)
  ];
}