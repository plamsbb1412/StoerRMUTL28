class CartModel {
  String id;
  String idStoer;
  String nameStoer;
  String idFood;
  String nameFood;
  String price;
  String amount;
  String sum;

  CartModel(
      {this.id,
      this.idStoer,
      this.nameStoer,
      this.idFood,
      this.nameFood,
      this.price,
      this.amount,
      this.sum});

  CartModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idStoer = json['idStoer'];
    nameStoer = json['nameStoer'];
    idFood = json['idFood'];
    nameFood = json['nameFood'];
    price = json['price'];
    amount = json['amount'];
    sum = json['sum'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['idStoer'] = this.idStoer;
    data['nameStoer'] = this.nameStoer;
    data['idFood'] = this.idFood;
    data['nameFood'] = this.nameFood;
    data['price'] = this.price;
    data['amount'] = this.amount;
    data['sum'] = this.sum;
    return data;
  }
}
