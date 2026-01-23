void main() {
  void main() {
    String path = '/';

    Map<String, String?> pages = {
      '/': 'Home Page',
      '/products': 'Products Page',
      '/profile': null,
    };

    switch (path) {
      case '/':
        print('home page');
        break;
      case '/products':
        print('product page');
        break;
      case '/profile':
        String profile = pages['profile'] ?? 'is equal null';
        print(profile);
        break;

      default:
        print('Not Found');
    }
  }
}
