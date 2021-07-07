class Cart_c {
  String id;
  String id_cart;
  String price;
  String title;
  String description;
  String foto;
  String username;
  String location_name;
  String halal;
  String is_sold_out;
  String item_condition;
  String weight;

  Cart_c({
    this.id,
    this.id_cart,
    this.price,
    this.title,
    this.description,
    this.foto,
    this.username,
    this.location_name,
    this.halal,
    this.is_sold_out,
    this.item_condition,
    this.weight,
  });

  @override
  String toString() {
    return 'Cart_c(id: $id, id_cart: $id_cart, price: $price, title: $title, description: $description, foto: $foto, '
        'username: $username, location_name: $location_name, halal: $halal, is_sold_out: $is_sold_out, item_condition: $item_condition, weight: $weight)';
  }

  factory Cart_c.fromJson(Map<String, dynamic> json) {
    // print("json masuk");
    // print(json[5]);
    // return(json);
    String is_Stock = "0";
    String img_Path =
        "https://i.pinimg.com/originals/65/25/a0/6525a08f1df98a2e3a545fe2ace4be47.jpg";
    if (json['default_photo']['img_path'].isEmpty == false) {
      img_Path =
      "https://ranting.twisdev.com/uploads/${json['default_photo']['img_path']}";
    }
    if(json['stock'].isEmpty == false){
      is_Stock = json['stock'];
    }
    return Cart_c(
      id: json["id"] as String,
      id_cart: json["id_cart"] as String,
      price: json["price"] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      foto: img_Path as String,
      username: json['added_user_name'] as String,
      location_name: json['location_name'] as String,
      halal: json['is_halal'] as String,
      is_sold_out: is_Stock as String,
      item_condition: json['condition_of_item']['name'] as String,
      weight: json['weight'] as String,
    );

  }
  //
  // Map<String, dynamic> toJson() {
  //   return {
  //     'id': id,
  //     'nama': nama,
  //     'kota': kota,
  //   };
  // }
}
