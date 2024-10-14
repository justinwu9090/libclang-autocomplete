// header.hpp

class MyClass
{
public:
  MyClass();
  ~MyClass();
  int field;
  virtual void method(int x, float y) const = 0;

  static const int static_field;
  static int static_method();
};