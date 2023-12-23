abstract class Test implements Tiger{
  static void show(){
    print('hello');
  }

}

class Tiger {
  show1() {
    // TODO: implement show
    throw UnimplementedError();
  }
}

  void main(){
    Test.show();
  }

