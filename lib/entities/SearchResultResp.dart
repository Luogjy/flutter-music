import 'dart:convert' show json;

class SearchResultResp {
  int code;
  int subcode;
  int time;
  String message;
  String notice;
  String tips;
  SearchResultData data;

  SearchResultResp.fromParams(
      {this.code,
      this.subcode,
      this.time,
      this.message,
      this.notice,
      this.tips,
      this.data});

  factory SearchResultResp(jsonStr) => jsonStr == null
      ? null
      : jsonStr is String
          ? new SearchResultResp.fromJson(json.decode(jsonStr))
          : new SearchResultResp.fromJson(jsonStr);

  SearchResultResp.fromJson(jsonRes) {
    code = jsonRes['code'];
    subcode = jsonRes['subcode'];
    time = jsonRes['time'];
    message = jsonRes['message'];
    notice = jsonRes['notice'];
    tips = jsonRes['tips'];
    data = jsonRes['data'] == null
        ? null
        : new SearchResultData.fromJson(jsonRes['data']);
  }

  @override
  String toString() {
    return '{"code": $code,"subcode": $subcode,"time": $time,"message": ${message != null ? '${json.encode(message)}' : 'null'},"notice": ${notice != null ? '${json.encode(notice)}' : 'null'},"tips": ${tips != null ? '${json.encode(tips)}' : 'null'},"data": $data}';
  }
}

class SearchResultData {
  int priority;
  int totaltime;
  String keyword;
  List<dynamic> qc;
  Semantic semantic;
  SearchResultSong song;
  Zhida zhida;

  SearchResultData.fromParams(
      {this.priority,
      this.totaltime,
      this.keyword,
      this.qc,
      this.semantic,
      this.song,
      this.zhida});

  SearchResultData.fromJson(jsonRes) {
    priority = jsonRes['priority'];
    totaltime = jsonRes['totaltime'];
    keyword = jsonRes['keyword'];
    qc = jsonRes['qc'] == null ? null : [];

    for (var qcItem in qc == null ? [] : jsonRes['qc']) {
      qc.add(qcItem);
    }

    semantic = jsonRes['semantic'] == null
        ? null
        : new Semantic.fromJson(jsonRes['semantic']);
    song = jsonRes['song'] == null
        ? null
        : new SearchResultSong.fromJson(jsonRes['song']);
    zhida =
        jsonRes['zhida'] == null ? null : new Zhida.fromJson(jsonRes['zhida']);
  }

  @override
  String toString() {
    return '{"priority": $priority,"totaltime": $totaltime,"keyword": ${keyword != null ? '${json.encode(keyword)}' : 'null'},"qc": $qc,"semantic": $semantic,"song": $song,"zhida": $zhida}';
  }
}

class Zhida {
  int albumid;
  int type;
  String albummid;
  String albumname;
  String singername;

  int albumnum;
  int singerid;
  int songnum;
  String singermid;

  Zhida.fromParams({
    this.albumid,
    this.type,
    this.albumnum,
    this.albummid,
    this.albumname,
    this.singername,
    this.singermid,
    this.singerid,
    this.songnum,
  });

  Zhida.fromJson(jsonRes) {
    albumid = jsonRes['albumid'];
    type = jsonRes['type'];
    albumnum = jsonRes['albumnum'];
    albummid = jsonRes['albummid'];
    albumname = jsonRes['albumname'];
    singername = jsonRes['singername'];
    singermid = jsonRes['singermid'];
    singerid = jsonRes['singerid'];
    songnum = jsonRes['songnum'];
  }

  @override
  String toString() {
    return '{"albumid": $albumid,"type": $type,"albummid": ${albummid != null ? '${json.encode(albummid)}' : 'null'},"albumname": ${albumname != null ? '${json.encode(albumname)}' : 'null'},"singername": ${singername != null ? '${json.encode(singername)}' : 'null'}}';
  }
}

class SearchResultSong {
  int curnum;
  int curpage;
  int totalnum;
  List<SongItem> list;

  SearchResultSong.fromParams(
      {this.curnum, this.curpage, this.totalnum, this.list});

  SearchResultSong.fromJson(jsonRes) {
    curnum = jsonRes['curnum'];
    curpage = jsonRes['curpage'];
    totalnum = jsonRes['totalnum'];
    list = jsonRes['list'] == null ? null : [];

    for (var listItem in list == null ? [] : jsonRes['list']) {
      list.add(listItem == null ? null : new SongItem.fromJson(listItem));
    }
  }

  @override
  String toString() {
    return '{"curnum": $curnum,"curpage": $curpage,"totalnum": $totalnum,"list": $list}';
  }
}

class SongItem {
  int albumid;
  int alertid;
  int chinesesinger;
  int interval;
  int isonly;
  int msgid;
  int nt;
  int pubtime;
  int pure;
  int size128;
  int size320;
  int sizeape;
  int sizeflac;
  int sizeogg;
  int songid;
  int stream;
  int switch_;
  int t;
  int tag;
  int type;
  int ver;
  String albummid;
  String albumname;
  String albumname_hilight;
  String docid;
  String lyric;
  String lyric_hilight;
  String songmid;
  String songname;
  String songname_hilight;
  String vid;
  List<dynamic> grp;
  List<SearchSingerItem> singer;
  Pay pay;
  Preview preview;

  SongItem.fromParams(
      {this.albumid,
      this.alertid,
      this.chinesesinger,
      this.interval,
      this.isonly,
      this.msgid,
      this.nt,
      this.pubtime,
      this.pure,
      this.size128,
      this.size320,
      this.sizeape,
      this.sizeflac,
      this.sizeogg,
      this.songid,
      this.stream,
      this.switch_,
      this.t,
      this.tag,
      this.type,
      this.ver,
      this.albummid,
      this.albumname,
      this.albumname_hilight,
      this.docid,
      this.lyric,
      this.lyric_hilight,
      this.songmid,
      this.songname,
      this.songname_hilight,
      this.vid,
      this.grp,
      this.singer,
      this.pay,
      this.preview});

  SongItem.fromJson(jsonRes) {
    albumid = jsonRes['albumid'];
    alertid = jsonRes['alertid'];
    chinesesinger = jsonRes['chinesesinger'];
    interval = jsonRes['interval'];
    isonly = jsonRes['isonly'];
    msgid = jsonRes['msgid'];
    nt = jsonRes['nt'];
    pubtime = jsonRes['pubtime'];
    pure = jsonRes['pure'];
    size128 = jsonRes['size128'];
    size320 = jsonRes['size320'];
    sizeape = jsonRes['sizeape'];
    sizeflac = jsonRes['sizeflac'];
    sizeogg = jsonRes['sizeogg'];
    songid = jsonRes['songid'];
    stream = jsonRes['stream'];
    switch_ = jsonRes['switch'];
    t = jsonRes['t'];
    tag = jsonRes['tag'];
    type = jsonRes['type'];
    ver = jsonRes['ver'];
    albummid = jsonRes['albummid'];
    albumname = jsonRes['albumname'];
    albumname_hilight = jsonRes['albumname_hilight'];
    docid = jsonRes['docid'];
    lyric = jsonRes['lyric'];
    lyric_hilight = jsonRes['lyric_hilight'];
    songmid = jsonRes['songmid'];
    songname = jsonRes['songname'];
    songname_hilight = jsonRes['songname_hilight'];
    vid = jsonRes['vid'];
    grp = jsonRes['grp'] == null ? null : [];

    for (var grpItem in grp == null ? [] : jsonRes['grp']) {
      grp.add(grpItem);
    }

    singer = jsonRes['singer'] == null ? null : [];

    for (var singerItem in singer == null ? [] : jsonRes['singer']) {
      singer
          .add(singerItem == null ? null : new SearchSingerItem.fromJson(singerItem));
    }

    pay = jsonRes['pay'] == null ? null : new Pay.fromJson(jsonRes['pay']);
    preview = jsonRes['preview'] == null
        ? null
        : new Preview.fromJson(jsonRes['preview']);
  }

  @override
  String toString() {
    return '{"albumid": $albumid,"alertid": $alertid,"chinesesinger": $chinesesinger,"interval": $interval,"isonly": $isonly,"msgid": $msgid,"nt": $nt,"pubtime": $pubtime,"pure": $pure,"size128": $size128,"size320": $size320,"sizeape": $sizeape,"sizeflac": $sizeflac,"sizeogg": $sizeogg,"songid": $songid,"stream": $stream,"switch": $switch_,"t": $t,"tag": $tag,"type": $type,"ver": $ver,"albummid": ${albummid != null ? '${json.encode(albummid)}' : 'null'},"albumname": ${albumname != null ? '${json.encode(albumname)}' : 'null'},"albumname_hilight": ${albumname_hilight != null ? '${json.encode(albumname_hilight)}' : 'null'},"docid": ${docid != null ? '${json.encode(docid)}' : 'null'},"lyric": ${lyric != null ? '${json.encode(lyric)}' : 'null'},"lyric_hilight": ${lyric_hilight != null ? '${json.encode(lyric_hilight)}' : 'null'},"songmid": ${songmid != null ? '${json.encode(songmid)}' : 'null'},"songname": ${songname != null ? '${json.encode(songname)}' : 'null'},"songname_hilight": ${songname_hilight != null ? '${json.encode(songname_hilight)}' : 'null'},"vid": ${vid != null ? '${json.encode(vid)}' : 'null'},"grp": $grp,"singer": $singer,"pay": $pay,"preview": $preview}';
  }
}

class Preview {
  int trybegin;
  int tryend;
  int trysize;

  Preview.fromParams({this.trybegin, this.tryend, this.trysize});

  Preview.fromJson(jsonRes) {
    trybegin = jsonRes['trybegin'];
    tryend = jsonRes['tryend'];
    trysize = jsonRes['trysize'];
  }

  @override
  String toString() {
    return '{"trybegin": $trybegin,"tryend": $tryend,"trysize": $trysize}';
  }
}

class Pay {
  int payalbum;
  int payalbumprice;
  int paydownload;
  int payinfo;
  int payplay;
  int paytrackmouth;
  int paytrackprice;

  Pay.fromParams(
      {this.payalbum,
      this.payalbumprice,
      this.paydownload,
      this.payinfo,
      this.payplay,
      this.paytrackmouth,
      this.paytrackprice});

  Pay.fromJson(jsonRes) {
    payalbum = jsonRes['payalbum'];
    payalbumprice = jsonRes['payalbumprice'];
    paydownload = jsonRes['paydownload'];
    payinfo = jsonRes['payinfo'];
    payplay = jsonRes['payplay'];
    paytrackmouth = jsonRes['paytrackmouth'];
    paytrackprice = jsonRes['paytrackprice'];
  }

  @override
  String toString() {
    return '{"payalbum": $payalbum,"payalbumprice": $payalbumprice,"paydownload": $paydownload,"payinfo": $payinfo,"payplay": $payplay,"paytrackmouth": $paytrackmouth,"paytrackprice": $paytrackprice}';
  }
}

class SearchSingerItem {
  int id;
  String mid;
  String name;
  String name_hilight;

  SearchSingerItem.fromParams({this.id, this.mid, this.name, this.name_hilight});

  SearchSingerItem.fromJson(jsonRes) {
    id = jsonRes['id'];
    mid = jsonRes['mid'];
    name = jsonRes['name'];
    name_hilight = jsonRes['name_hilight'];
  }

  @override
  String toString() {
    return '{"id": $id,"mid": ${mid != null ? '${json.encode(mid)}' : 'null'},"name": ${name != null ? '${json.encode(name)}' : 'null'},"name_hilight": ${name_hilight != null ? '${json.encode(name_hilight)}' : 'null'}}';
  }
}

class Semantic {
  int curnum;
  int curpage;
  int totalnum;
  List<SearchResultSong> list;

  Semantic.fromParams({this.curnum, this.curpage, this.totalnum, this.list});

  Semantic.fromJson(jsonRes) {
    curnum = jsonRes['curnum'];
    curpage = jsonRes['curpage'];
    totalnum = jsonRes['totalnum'];
    list = jsonRes['list'] == null ? null : [];

    for (var listItem in list == null ? [] : jsonRes['list']) {
      list.add(
          listItem == null ? null : new SearchResultSong.fromJson(listItem));
    }
  }

  @override
  String toString() {
    return '{"curnum": $curnum,"curpage": $curpage,"totalnum": $totalnum,"list": $list}';
  }
}
