
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'product.dart';


class Product
{
  String imageURL;
  String name;
  double price;
  double rating;

  Product({required this.name, required this.rating,  required this.imageURL, required this.price});
}

Product sampleProduct1 = Product(name: 'bag', rating: 4, imageURL: "https://www.pngmart.com/files/22/Handbag-PNG.png", price: 150);
Product sampleProduct2 = Product(name: 'bag2', rating: 3, imageURL: "https://www.nicepng.com/png/detail/951-9517748_dior-cruise-blue-patent-lady-dior-bag-designer.png", price: 200);
Product sampleProduct3 = Product(name: 'bag3', rating: 2, imageURL: "https://www.pngmart.com/files/15/Orange-Ladies-Handbag-PNG.png", price: 350);
Product sampleProduct4 = Product(name: 'bag4', rating: 5, imageURL: "https://www.cartier.com/variants/images/25372685655516962/img1/w400.jpg", price: 100);
Product sampleProduct5 = Product(name: 'bag5', rating: 4.5, imageURL: "https://www.pngitem.com/pimgs/m/194-1942574_transparent-purses-black-handbag-amal-clooney-bags-hd.png", price: 500);



class ProductCard extends StatelessWidget {
  Product product;

  ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Card(

        child: SizedBox(

          width: 190,
          height: 250,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    color: Colors.grey[100],

                    height: 140,
                    child: Image.network(product.imageURL,),
                  ),
                ),

                const SizedBox(height: 20,),

                Text(product.name, style: const TextStyle(fontSize: 15),),

                const SizedBox(height: 10,),


                RatingBarIndicator(
                  rating: product.rating,
                  itemCount: 5,
                  itemSize: 15.0,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, _) =>
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${product.price}", style: const TextStyle(fontSize: 15,),),
                    const Icon(Icons.shopping_cart, color: Colors.deepOrange,),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
  }
}
