class Booking {
  final String title;
  final String image;
  final String date;
  final String price;
  final BookingStatus? status;

  Booking({
    required this.title,
    required this.image,
    required this.date,
    required this.price,
    this.status,
  });
}

enum BookingStatus { active, completed }

var bookings = [
  Booking(
    title: 'Faldy Tower Lot',
    image: 'assets/images/photo.png',
    date: '19-10-2023 • 10:15 AM',
    price: 'Rp. 20.000',
    status: BookingStatus.active,
  ),
  Booking(
    title: 'Bintang Tower Lot',
    image: 'assets/images/senayan.png',
    date: '19-10-2023 • 10:15 AM',
    price: 'Rp. 20.000',
    status: BookingStatus.completed,
  ),
  Booking(
    title: 'Bandung Tower Lot',
    image: 'assets/images/mart.png',
    date: '19-10-2023 • 10:15 AM',
    price: 'Rp. 20.000',
    status: BookingStatus.active,
  ),
];
