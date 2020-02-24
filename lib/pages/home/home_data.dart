



List<String> getBodyDataImages() {
  List<String> bodyUrl = [];
  bodyUrl.add('assets/images/body/001.jpg');
  bodyUrl.add('assets/images/body/002.jpg');
  bodyUrl.add('assets/images/body/003.jpg');

  return bodyUrl;
}


List<Map<String, dynamic>> getProducts(){
  List<Map<String, dynamic>> allProducts = [];

  allProducts.add({"name":"鱼香肉丝", "id": "001", "price": "12"});
  allProducts.add({"name":"宫保鸡丁", "id": "002", "price": "14"});
  allProducts.add({"name":"红烧茄子", "id": "003", "price": "13"});
  allProducts.add({"name":"白斩鸡", "id": "004", "price": "16"});

  return allProducts;
}