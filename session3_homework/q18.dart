void main() {
  Map<String, String?> envVariables = {'ENV': 'prod', 'VERSION': null};

  String environment= envVariables['ENV'] ?? 'prod';
  String version = envVariables['VERSION'] ?? '1.0.0';

  if (environment.toUpperCase() == 'PROD' && version == '1.0.0') {
    print('Prod ready');
  } else {
    print('Non-prod');
  }
}