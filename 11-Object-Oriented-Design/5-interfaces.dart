
class A {
  void silly() {
    print("A's Silly");
  }
}
class B {
  void awesome() {
    print("B's Awesome");
  }
}
class C implements A, B {
  void silly() {
    print("C's Silly");
  }
  void awesome() {
    print("C's Awesome");
  }
}
class D extends B implements A {
  void silly() {
    print("D's Silly");
  }
}
void main() {
  A c = new C();
  c.silly(); // prints C's Silly
 // (c).awesome(); // does't run but generates warning; below is a correction
  (c as C).awesome(); // here we do  Casting
  D d = new D();
  d.awesome(); // prints B's Awesome
  d.silly(); // prints D's Silly
}