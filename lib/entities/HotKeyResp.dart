import 'dart:convert' show json;

class HotKeyResp {
  int code;
  int subcode;
  HotKeyData data;

  HotKeyResp.fromParams({this.code, this.subcode, this.data});

  factory HotKeyResp(jsonStr) => jsonStr == null
      ? null
      : jsonStr is String
          ? new HotKeyResp.fromJson(json.decode(jsonStr))
          : new HotKeyResp.fromJson(jsonStr);

  HotKeyResp.fromJson(jsonRes) {
    code = jsonRes['code'];
    subcode = jsonRes['subcode'];
    data = jsonRes['data'] == null
        ? null
        : new HotKeyData.fromJson(jsonRes['data']);
  }

  @override
  String toString() {
    return '{"code": $code,"subcode": $subcode,"data": $data}';
  }
}

class HotKeyData {
  String special_key;
  String special_url;
  List<HotKeyItem> hotkey;

  HotKeyData.fromParams({this.special_key, this.special_url, this.hotkey});

  HotKeyData.fromJson(jsonRes) {
    special_key = jsonRes['special_key'];
    special_url = jsonRes['special_url'];
    hotkey = jsonRes['hotkey'] == null ? null : [];

    for (var hotkeyItem in hotkey == null ? [] : jsonRes['hotkey']) {
      hotkey
          .add(hotkeyItem == null ? null : new HotKeyItem.fromJson(hotkeyItem));
    }
  }

  @override
  String toString() {
    return '{"special_key": ${special_key != null ? '${json.encode(special_key)}' : 'null'},"special_url": ${special_url != null ? '${json.encode(special_url)}' : 'null'},"hotkey": $hotkey}';
  }
}

class HotKeyItem {
  int n;
  String k;

  HotKeyItem.fromParams({this.n, this.k});

  HotKeyItem.fromJson(jsonRes) {
    n = jsonRes['n'];
    k = jsonRes['k'];
  }

  @override
  String toString() {
    return '{"n": $n,"k": ${k != null ? '${json.encode(k)}' : 'null'}}';
  }
}
