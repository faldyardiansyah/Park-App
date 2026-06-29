class Park {
  final String title;
  final String image;
  final String distance;
  final String price;
  final ParkType? type;
  final String? typeText;

  Park({
    required this.title,
    required this.image,
    required this.distance,
    required this.price,
    this.type,
    this.typeText,
  });
}

enum ParkType { discount, popular }

var parks = [
  Park(
    title: 'Faldy Park',
    image: 'assets/images/photo.png',
    distance: '1.2km',
    price: 'Rp. 20.000',
    type: ParkType.popular,
    typeText: 'Popular',
  ),
  Park(
    title: 'Bintang Park',
    image: 'assets/images/senayan.png',
    distance: '1.2km',
    price: 'Rp. 20.000',
    type: ParkType.discount,
    typeText: 'Off 50%',
  ),
  Park(
    title: 'Bandung Park',
    image: 'assets/images/mart.png',
    distance: '8.3km',
    price: 'Rp. 10.000',
    type: ParkType.popular,
    typeText: 'popular',
  ),
  Park(
    title: 'Mall Indramayu',
    image: 'assets/images/padisehat.jpg',
    distance: '8.3km',
    price: 'Rp. 5.000',
    type: ParkType.discount,
    typeText: 'Off 50%',
  ),
];
