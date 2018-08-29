import 'dart:convert' show json;

class HotMusicResp {
  int code;
  int default_;
  int subcode;
  String message;
  Data data;

  HotMusicResp.fromParams(
      {this.code, this.default_, this.subcode, this.message, this.data});

  factory HotMusicResp(jsonStr) => jsonStr == null
      ? null
      : jsonStr is String
          ? new HotMusicResp.fromJson(json.decode(jsonStr))
          : new HotMusicResp.fromJson(jsonStr);

  HotMusicResp.fromJson(jsonRes) {
    code = jsonRes['code'];
    default_ = jsonRes['default'];
    subcode = jsonRes['subcode'];
    message = jsonRes['message'];
    data = jsonRes['data'] == null ? null : new Data.fromJson(jsonRes['data']);
  }

  @override
  String toString() {
    return '{"code": $code,"default": $default_,"subcode": $subcode,"message": ${message != null ? '${json.encode(message)}' : 'null'},"data": $data}';
  }
}

class Data {
  int categoryId;
  int ein;
  int sin;
  int sortId;
  int sum;
  int uin;
  List<HotMusicItemEntity> list;

  Data.fromParams(
      {this.categoryId,
      this.ein,
      this.sin,
      this.sortId,
      this.sum,
      this.uin,
      this.list});

  Data.fromJson(jsonRes) {
    categoryId = jsonRes['categoryId'];
    ein = jsonRes['ein'];
    sin = jsonRes['sin'];
    sortId = jsonRes['sortId'];
    sum = jsonRes['sum'];
    uin = jsonRes['uin'];
    list = jsonRes['list'] == null ? null : [];

    for (var listItem in list == null ? [] : jsonRes['list']) {
      list.add(
          listItem == null ? null : new HotMusicItemEntity.fromJson(listItem));
    }
  }

  @override
  String toString() {
    return '{"categoryId": $categoryId,"ein": $ein,"sin": $sin,"sortId": $sortId,"sum": $sum,"uin": $uin,"list": $list}';
  }
}

class HotMusicItemEntity {
  int listennum;
  int version;
  double score;
  String commit_time;
  String createtime;
  String dissid;
  String dissname;
  String imgurl;
  String introduction;
  Creator creator;

  HotMusicItemEntity.fromParams(
      {this.listennum,
      this.version,
      this.score,
      this.commit_time,
      this.createtime,
      this.dissid,
      this.dissname,
      this.imgurl,
      this.introduction,
      this.creator});

  HotMusicItemEntity.fromJson(jsonRes) {
    listennum = jsonRes['listennum'];
    version = jsonRes['version'];
    score = jsonRes['score'];
    commit_time = jsonRes['commit_time'];
    createtime = jsonRes['createtime'];
    dissid = jsonRes['dissid'];
    dissname = jsonRes['dissname'];
    imgurl = jsonRes['imgurl'];
    introduction = jsonRes['introduction'];
    creator = jsonRes['creator'] == null
        ? null
        : new Creator.fromJson(jsonRes['creator']);
  }

  @override
  String toString() {
    return '{"listennum": $listennum,"version": $version,"score": $score,"commit_time": ${commit_time != null ? '${json.encode(commit_time)}' : 'null'},"createtime": ${createtime != null ? '${json.encode(createtime)}' : 'null'},"dissid": ${dissid != null ? '${json.encode(dissid)}' : 'null'},"dissname": ${dissname != null ? '${json.encode(dissname)}' : 'null'},"imgurl": ${imgurl != null ? '${json.encode(imgurl)}' : 'null'},"introduction": ${introduction != null ? '${json.encode(introduction)}' : 'null'},"creator": $creator}';
  }
}

class Creator {
  int followflag;
  int isVip;
  int qq;
  int type;
  String avatarUrl;
  String encrypt_uin;
  String name;

  Creator.fromParams(
      {this.followflag,
      this.isVip,
      this.qq,
      this.type,
      this.avatarUrl,
      this.encrypt_uin,
      this.name});

  Creator.fromJson(jsonRes) {
    followflag = jsonRes['followflag'];
    isVip = jsonRes['isVip'];
    qq = jsonRes['qq'];
    type = jsonRes['type'];
    avatarUrl = jsonRes['avatarUrl'];
    encrypt_uin = jsonRes['encrypt_uin'];
    name = jsonRes['name'];
  }

  @override
  String toString() {
    return '{"followflag": $followflag,"isVip": $isVip,"qq": $qq,"type": $type,"avatarUrl": ${avatarUrl != null ? '${json.encode(avatarUrl)}' : 'null'},"encrypt_uin": ${encrypt_uin != null ? '${json.encode(encrypt_uin)}' : 'null'},"name": ${name != null ? '${json.encode(name)}' : 'null'}}';
  }
}
