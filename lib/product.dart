class Product
{
  String imageURL;
  String name;
  double price;
  double rating;

  Product({required this.name, required this.rating,  required this.imageURL, required this.price});
}

Product sampleProduct1 = Product(name: 'bag',  rating: 4,   imageURL: "https://www.pngmart.com/files/22/Handbag-PNG.png", price: 150);
Product sampleProduct2 = Product(name: 'bag2', rating: 3,   imageURL: "https://www.nicepng.com/png/detail/951-9517748_dior-cruise-blue-patent-lady-dior-bag-designer.png", price: 200);
Product sampleProduct3 = Product(name: 'bag3', rating: 2,   imageURL: "https://www.pngmart.com/files/15/Orange-Ladies-Handbag-PNG.png", price: 350);
Product sampleProduct4 = Product(name: 'bag4', rating: 5,   imageURL: "https://www.cartier.com/variants/images/25372685655516962/img1/w400.jpg", price: 100);
Product sampleProduct5 = Product(name: 'bag5', rating: 4.5, imageURL: "https://www.pngitem.com/pimgs/m/194-1942574_transparent-purses-black-handbag-amal-clooney-bags-hd.png", price: 500);

