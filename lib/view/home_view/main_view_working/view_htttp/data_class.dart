
class CData {
  String cId;
  String cAvatar;
  String cName;
  String cAlamat;
  String cEmail;
  String cPekerjaan;
  String cQuote;

  CData({
    required this.cId,
    required this.cAvatar,
    required this.cName,
    required this.cAlamat,
    required this.cEmail,
    required this.cPekerjaan,
    required this.cQuote,
  });

  factory CData.fromJson(Map<String, dynamic> json) {
    return CData(
      cId: json['id'],
      cAvatar: json['avatar'],
      cName: json['nama'],
      cAlamat: json['alamat'],
      cEmail: json['email'],
      cPekerjaan: json['pekerjaan'],
      cQuote: json['quote'],
    );
  }
}
