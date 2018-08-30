import 'dart:convert' show json;

class ChartsResp {
  int code;
  int default_;
  int subcode;
  String message;
  ChartsData data;

  ChartsResp.fromParams(
      {this.code, this.default_, this.subcode, this.message, this.data});

  factory ChartsResp(jsonStr) => jsonStr == null
      ? null
      : jsonStr is String
          ? new ChartsResp.fromJson(json.decode(jsonStr))
          : new ChartsResp.fromJson(jsonStr);

  ChartsResp.fromJson(jsonRes) {
    code = jsonRes['code'];
    default_ = jsonRes['default'];
    subcode = jsonRes['subcode'];
    message = jsonRes['message'];
    data = jsonRes['data'] == null
        ? null
        : new ChartsData.fromJson(jsonRes['data']);
  }

  @override
  String toString() {
    return '{"code": $code,"default": $default_,"subcode": $subcode,"message": ${message != null ? '${json.encode(message)}' : 'null'},"data": $data}';
  }
}

class ChartsData {
  List<Top> topList;

  ChartsData.fromParams({this.topList});

  ChartsData.fromJson(jsonRes) {
    topList = jsonRes['topList'] == null ? null : [];

    for (var topListItem in topList == null ? [] : jsonRes['topList']) {
      topList.add(topListItem == null ? null : new Top.fromJson(topListItem));
    }
  }

  @override
  String toString() {
    return '{"topList": $topList}';
  }
}

class Top {
  int id;
  int listenCount;
  int type;
  String picUrl;
  String topTitle;
  List<Song> songList;

  Top.fromParams(
      {this.id,
      this.listenCount,
      this.type,
      this.picUrl,
      this.topTitle,
      this.songList});

  Top.fromJson(jsonRes) {
    id = jsonRes['id'];
    listenCount = jsonRes['listenCount'];
    type = jsonRes['type'];
    picUrl = jsonRes['picUrl'];
    topTitle = jsonRes['topTitle'];
    songList = jsonRes['songList'] == null ? null : [];

    for (var songListItem in songList == null ? [] : jsonRes['songList']) {
      songList
          .add(songListItem == null ? null : new Song.fromJson(songListItem));
    }
  }

  @override
  String toString() {
    return '{"id": $id,"listenCount": $listenCount,"type": $type,"picUrl": ${picUrl != null ? '${json.encode(picUrl)}' : 'null'},"topTitle": ${topTitle != null ? '${json.encode(topTitle)}' : 'null'},"songList": $songList}';
  }
}

class Song {
  String singername;
  String songname;

  Song.fromParams({this.singername, this.songname});

  Song.fromJson(jsonRes) {
    singername = jsonRes['singername'];
    songname = jsonRes['songname'];
  }

  @override
  String toString() {
    return '{"singername": ${singername != null ? '${json.encode(singername)}' : 'null'},"songname": ${songname != null ? '${json.encode(songname)}' : 'null'}}';
  }
}
