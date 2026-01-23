void main() {
  Map<String, dynamic> userPerson = {'name': 'Ahmed', 'phone': null};
  String? phone = userPerson['phone'];
  if (phone == null) print('no phone number provided');

  userPerson['phome'] = '01275026466';
  print(userPerson['phone']?.length);
}
