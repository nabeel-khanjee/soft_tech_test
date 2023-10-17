class PaymentMethod {
  final String paymentImage;
  final String cardNumber;
  final String date;
  final String name;

  PaymentMethod(
      {required this.name,
      required this.paymentImage,
      required this.cardNumber,
      required this.date});
}
