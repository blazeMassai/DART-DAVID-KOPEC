class A {
  void silly() {
    print("A's Silly");
  }
}
class B extends A{
  void silly() {
    print("B's Silly");
  }
  void callASilly() {
    super.silly();
  }
}
void main() {
  B b = new B();
  b.callASilly(); // prints A's Silly
}