class CheckoutResponse {
  final bool success;
  final String reference;

  CheckoutResponse({required this.success, required this.reference});

  factory CheckoutResponse.fromJson(Map<String, dynamic> json) => CheckoutResponse(
        success: json['success'],
        reference: json['reference'],
      );

      factory CheckoutResponse.empty(){
        return CheckoutResponse(success: false, reference: '');
      }
}