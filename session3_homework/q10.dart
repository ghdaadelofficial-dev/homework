void main() {
  Map<String, dynamic> countryCode = {
    'Egypt': 'EG',
    'Soria': 'ER',
    'Oman': 'OM',
    'Dobai': 'DB',
  };
  print(countryCode['Egypt']);
  countryCode['Qatar'] = 'QA';
  print(countryCode.length);
  if (countryCode.containsKey('JO')) {
    print(countryCode['JO']);
  } else
    print('Jordan missing');
}
