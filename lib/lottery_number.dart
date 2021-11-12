class lotterry {
  final int date;
  final int id;
  final String name;
  final int price;
  final String number;

  lotterry({
    required this.date,
    required this.id,
    required this.name,
    required this.price,
    required this.number,

  });


  @override
  String toString() {
    return '$name ราคา $price บาท';
  }
}