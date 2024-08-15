// ignore_for_file: public_member_api_docs, sort_constructors_first
class PhoneVerificationRespones {
  final String otp;
  final bool user;
  PhoneVerificationRespones({
    required this.otp,
    required this.user,
  });

  factory PhoneVerificationRespones.fromMap(Map<String, dynamic> map) {
    return PhoneVerificationRespones(
      otp: map['otp'] as String,
      user: map['user'] as bool,
    );
  }
}
