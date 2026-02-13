class BankAccount {
  int _balance = 500;
  int get balance => this._balance;
  set balance(int balance) {
    if (balance > 0)
      this._balance = balance;
    else
      print('Invalid balance');
  }
}

void main() {
  BankAccount acc = BankAccount();
  acc.balance = 200;
  print(acc.balance);
  acc.balance = -100;
  
}
