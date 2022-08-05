class Productss {
  final String name;
  final double price;
  final String imageUrl;
  final String discount;
  final double oldprice;
  final String weight;

  const Productss({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.discount,
    required this.oldprice,
    required this.weight,
  });
  static const List<Productss> products = [
    Productss(
      name: 'Ghee',
      price: 455.3,
      imageUrl: 'lib/assets/asset/ghee3.jpeg',
      discount: '23',
      oldprice: 655,
      weight: '500',
    ),
    Productss(
      name: 'Honey',
      price: 355.3,
      imageUrl: 'lib/assets/asset/honey3.jpeg',
      discount: '25',
      oldprice: 655,
      weight: '500',
    ),
    Productss(
      name: 'Jaggary',
      price: 155,
      imageUrl: 'lib/assets/asset/ jagary3.jpeg',
      discount: '21',
      oldprice: 355,
      weight: '500',
    ),
    Productss(
      name: 'Sweets',
      price: 400.3,
      imageUrl: 'lib/assets/asset/sweet3.jpeg',
      discount: '20',
      oldprice: 555,
      weight: '500',
    ),
    Productss(
      name: 'Sattu',
      price: 55.3,
      imageUrl: 'lib/assets/asset/sattu4.jpeg',
      discount: '26',
      oldprice: 75,
      weight: '500',
    ),
    Productss(
      name: 'Pulses',
      price: 95.8,
      imageUrl: 'lib/assets/asset/dal2.png',
      discount: '15',
      oldprice: 155,
      weight: '500',
    ),
    Productss(
      name: 'Spice',
      price: 155.3,
      imageUrl: 'lib/assets/asset/spices3.jpeg',
      discount: '23',
      oldprice: 355,
      weight: '250',
    ),
  ];
}
