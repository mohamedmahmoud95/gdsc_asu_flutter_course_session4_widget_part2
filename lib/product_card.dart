
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'product.dart';




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
