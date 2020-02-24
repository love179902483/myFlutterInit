// 这是产品的解析格式
class ProductType {
  bool _flag;
  List<Data> _data;
  String _msg;

  ProductType({bool flag, List<Data> data, String msg}) {
    this._flag = flag;
    this._data = data;
    this._msg = msg;
  }

  bool get flag => _flag;
  set flag(bool flag) => _flag = flag;
  List<Data> get data => _data;
  set data(List<Data> data) => _data = data;
  String get msg => _msg;
  set msg(String msg) => _msg = msg;

  ProductType.fromJson(Map<String, dynamic> json) {
    _flag = json['flag'];
    if (json['data'] != null) {
      _data = new List<Data>();
      json['data'].forEach((v) {
        _data.add(new Data.fromJson(v));
      });
    }
    _msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['flag'] = this._flag;
    if (this._data != null) {
      data['data'] = this._data.map((v) => v.toJson()).toList();
    }
    data['msg'] = this._msg;
    return data;
  }
}

class Data {
  String _des;
  int _id;

  Data({String des, int id}) {
    this._des = des;
    this._id = id;
  }

  String get des => _des;
  set des(String des) => _des = des;
  int get id => _id;
  set id(int id) => _id = id;

  Data.fromJson(Map<String, dynamic> json) {
    _des = json['des'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['des'] = this._des;
    data['id'] = this._id;
    return data;
  }
}
