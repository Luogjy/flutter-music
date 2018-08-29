import 'dart:convert' show json;

class SingersResp {
  int code;
  int subcode;
  String message;
  SingersRespData data;

  SingersResp.fromParams({this.code, this.subcode, this.message, this.data});

  factory SingersResp(jsonStr) => jsonStr == null
      ? null
      : jsonStr is String
          ? new SingersResp.fromJson(json.decode(jsonStr))
          : new SingersResp.fromJson(jsonStr);

  SingersResp.fromJson(jsonRes) {
    code = jsonRes['code'];
    subcode = jsonRes['subcode'];
    message = jsonRes['message'];
    data = jsonRes['data'] == null
        ? null
        : new SingersRespData.fromJson(jsonRes['data']);
  }

  @override
  String toString() {
    return '{"code": $code,"subcode": $subcode,"message": ${message != null ? '${json.encode(message)}' : 'null'},"data": $data}';
  }
}

class SingersRespData {
  int per_page;
  int total;
  int total_page;
  List<Singer> list;

  SingersRespData.fromParams(
      {this.per_page, this.total, this.total_page, this.list});

  SingersRespData.fromJson(jsonRes) {
    per_page = jsonRes['per_page'];
    total = jsonRes['total'];
    total_page = jsonRes['total_page'];
    list = jsonRes['list'] == null ? null : [];

    for (var listItem in list == null ? [] : jsonRes['list']) {
      list.add(listItem == null ? null : new Singer.fromJson(listItem));
    }
  }

  @override
  String toString() {
    return '{"per_page": $per_page,"total": $total,"total_page": $total_page,"list": $list}';
  }
}

class Singer {
  Singer();
  bool isHead = false;
  String Farea;
  String Fattribute_3;
  String Fattribute_4;
  String Fgenre;
  String Findex;
  String Fother_name;
  String Fsinger_id;
  String Fsinger_mid;
  String Fsinger_name;
  String Fsinger_tag;
  String Fsort;
  String Ftrend;
  String Ftype;
  String voc;

  Singer.fromParams(
      {this.Farea,
      this.Fattribute_3,
      this.Fattribute_4,
      this.Fgenre,
      this.Findex,
      this.Fother_name,
      this.Fsinger_id,
      this.Fsinger_mid,
      this.Fsinger_name,
      this.Fsinger_tag,
      this.Fsort,
      this.Ftrend,
      this.Ftype,
      this.voc});

  Singer.fromJson(jsonRes) {
    Farea = jsonRes['Farea'];
    Fattribute_3 = jsonRes['Fattribute_3'];
    Fattribute_4 = jsonRes['Fattribute_4'];
    Fgenre = jsonRes['Fgenre'];
    Findex = jsonRes['Findex'];
    Fother_name = jsonRes['Fother_name'];
    Fsinger_id = jsonRes['Fsinger_id'];
    Fsinger_mid = jsonRes['Fsinger_mid'];
    Fsinger_name = jsonRes['Fsinger_name'];
    Fsinger_tag = jsonRes['Fsinger_tag'];
    Fsort = jsonRes['Fsort'];
    Ftrend = jsonRes['Ftrend'];
    Ftype = jsonRes['Ftype'];
    voc = jsonRes['voc'];
  }

  @override
  String toString() {
    return '{"Farea": ${Farea != null ? '${json.encode(Farea)}' : 'null'},"Fattribute_3": ${Fattribute_3 != null ? '${json.encode(Fattribute_3)}' : 'null'},"Fattribute_4": ${Fattribute_4 != null ? '${json.encode(Fattribute_4)}' : 'null'},"Fgenre": ${Fgenre != null ? '${json.encode(Fgenre)}' : 'null'},"Findex": ${Findex != null ? '${json.encode(Findex)}' : 'null'},"Fother_name": ${Fother_name != null ? '${json.encode(Fother_name)}' : 'null'},"Fsinger_id": ${Fsinger_id != null ? '${json.encode(Fsinger_id)}' : 'null'},"Fsinger_mid": ${Fsinger_mid != null ? '${json.encode(Fsinger_mid)}' : 'null'},"Fsinger_name": ${Fsinger_name != null ? '${json.encode(Fsinger_name)}' : 'null'},"Fsinger_tag": ${Fsinger_tag != null ? '${json.encode(Fsinger_tag)}' : 'null'},"Fsort": ${Fsort != null ? '${json.encode(Fsort)}' : 'null'},"Ftrend": ${Ftrend != null ? '${json.encode(Ftrend)}' : 'null'},"Ftype": ${Ftype != null ? '${json.encode(Ftype)}' : 'null'},"voc": ${voc != null ? '${json.encode(voc)}' : 'null'}}';
  }
}
