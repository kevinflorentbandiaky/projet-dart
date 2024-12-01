
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2)); 
  return "Données reçues";
}


Future<int> calculAsync(int a, int b) async {
  await Future.delayed(Duration(seconds: 1));
  return a + b;
}
