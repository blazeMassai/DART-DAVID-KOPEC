
class SodaCan {
  static double price=1.00;
  static double capacity= 350.0;

  bool dented=false;

  void drink()=>print('refreshing.');
  static double costPerMilli(){
    return price/capacity;
  }

}

void main() {
  SodaCan.price=2.00;
  SodaCan x = new SodaCan();
  print(SodaCan.costPerMilli());
  //x.costPerMilli(); // illegal, price can only be accessed through the class name not via instances
  //x.price=1.5;// illegal, instance method can't be used statically

}