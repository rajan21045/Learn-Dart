/*
Real-Life Example of Encapsulation (Dart)
ATM System Example
Balance should not be directly accessible
User interacts only through deposit/withdraw methods 
*/

class ATM {
  double _balance = 0;

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited: $amount");
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print("Withdrawn: $amount");
    } else {
      print("Insufficient balance");
    }
  }

  double get balance => _balance;
}

void main() {
  ATM atm = ATM();
  atm.deposit(5000);
  atm.withdraw(2000);
  print("Balance: ${atm.balance}");
}


/*Explanation:
_balance is hidden (private)
Access is controlled through methods
This is encapsulation */