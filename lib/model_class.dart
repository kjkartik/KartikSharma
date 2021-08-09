

 class Modeljson{
  var productName;
  var productID;
  var category;
  var price;
     Modeljson({
    this. productID,
    this. productName,
    this. category,
    this. price,
 });


factory Modeljson.fromJson(Map<String,dynamic>json)=>Modeljson(

    productName:  json["productName"] as String,
    productID:  json["productId"] as int,
    category: json["category"] as String,
    price : json["price"] as int
);
     Map<String, dynamic> toJson()=>{
       "productID": productID,
       "category": category,
       "price": price,
       "productName": productName,
     };

}

