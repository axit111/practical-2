class Coupen {
  final int id;
  final String code;

  const Coupen({
    required this.id,
    required this.code,
  });

  factory Coupen.fromMap(Map<String, dynamic>? data) {
    return Coupen(
      id: data!['id'],
      code: data['code'],
    );
  }
}
