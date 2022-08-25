///网络请求结果
///泛型是最终实体类型，如果想要 List<T> 只需要指定 T 然后获取 list 对应的值即可
class HttpResult<T> {
  late int code;
  String? msg;

  ///解析成为实体类使用：与 list 互斥
  T? data;

  ///解析成为列表使用：与 data 互斥
  List<T>? list;

  bool get success => code == 0;

  HttpResult<T> covert(Map<String, dynamic> json) {
    HttpResult<T> entity = HttpResult<T>();
    dynamic data = json["data"];
    int code = json["errorCode"];
    String? msg = json['errorMsg'];

    if (data is List) {
      // entity.list = covertList<T>(data);
    } else {
      // entity.data = coverData<T>(data);
    }
    entity.code = code;
    entity.msg = msg;
    return entity;
  }
  // static List<M> covertList<M>(dynamic data){
  //   List<M> list = [];
  //   for(var item in data){
  //     list.add(json)
  //   }
  // }
}
