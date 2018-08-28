import 'dart:convert' show json;

class RecommendResp {

  int code;
  Data data;

  RecommendResp.fromParams({this.code, this.data});

  factory RecommendResp(jsonStr) => jsonStr == null ? null : jsonStr is String ? new RecommendResp.fromJson(json.decode(jsonStr)) : new RecommendResp.fromJson(jsonStr);

  RecommendResp.fromJson(jsonRes) {
    code = jsonRes['code'];
    data = jsonRes['data'] == null ? null : new Data.fromJson(jsonRes['data']);
  }

  @override
  String toString() {
    return '{"code": $code,"data": $data}';
  }
}

class Data {

  List<RadioListItem> radioList;
  List<SliderItem> slider;
  List<SongListItem> songList;

  Data.fromParams({this.radioList, this.slider, this.songList});

  Data.fromJson(jsonRes) {
    radioList = jsonRes['radioList'] == null ? null : [];

    for (var radioListItem in radioList == null ? [] : jsonRes['radioList']){
      radioList.add(radioListItem == null ? null : new RadioListItem.fromJson(radioListItem));
    }

    slider = jsonRes['slider'] == null ? null : [];

    for (var sliderItem in slider == null ? [] : jsonRes['slider']){
      slider.add(sliderItem == null ? null : new SliderItem.fromJson(sliderItem));
    }

    songList = jsonRes['songList'] == null ? null : [];

    for (var songListItem in songList == null ? [] : jsonRes['songList']){
      songList.add(songListItem == null ? null : new SongListItem.fromJson(songListItem));
    }
  }

  @override
  String toString() {
    return '{"radioList": $radioList,"slider": $slider,"songList": $songList}';
  }
}

class SongListItem {

  int accessnum;
  String album_pic_mid;
  String id;
  String picUrl;
  String pic_mid;
  String songListAuthor;
  String songListDesc;

  SongListItem.fromParams({this.accessnum, this.album_pic_mid, this.id, this.picUrl, this.pic_mid, this.songListAuthor, this.songListDesc});

  SongListItem.fromJson(jsonRes) {
    accessnum = jsonRes['accessnum'];
    album_pic_mid = jsonRes['album_pic_mid'];
    id = jsonRes['id'];
    picUrl = jsonRes['picUrl'];
    pic_mid = jsonRes['pic_mid'];
    songListAuthor = jsonRes['songListAuthor'];
    songListDesc = jsonRes['songListDesc'];
  }

  @override
  String toString() {
    return '{"accessnum": $accessnum,"album_pic_mid": ${album_pic_mid != null?'${json.encode(album_pic_mid)}':'null'},"id": ${id != null?'${json.encode(id)}':'null'},"picUrl": ${picUrl != null?'${json.encode(picUrl)}':'null'},"pic_mid": ${pic_mid != null?'${json.encode(pic_mid)}':'null'},"songListAuthor": ${songListAuthor != null?'${json.encode(songListAuthor)}':'null'},"songListDesc": ${songListDesc != null?'${json.encode(songListDesc)}':'null'}}';
  }
}

class SliderItem {

  int id;
  String linkUrl;
  String picUrl;

  SliderItem.fromParams({this.id, this.linkUrl, this.picUrl});

  SliderItem.fromJson(jsonRes) {
    id = jsonRes['id'];
    linkUrl = jsonRes['linkUrl'];
    picUrl = jsonRes['picUrl'];
  }

  @override
  String toString() {
    return '{"id": $id,"linkUrl": ${linkUrl != null?'${json.encode(linkUrl)}':'null'},"picUrl": ${picUrl != null?'${json.encode(picUrl)}':'null'}}';
  }
}

class RadioListItem {

  int radioid;
  String Ftitle;
  String picUrl;

  RadioListItem.fromParams({this.radioid, this.Ftitle, this.picUrl});

  RadioListItem.fromJson(jsonRes) {
    radioid = jsonRes['radioid'];
    Ftitle = jsonRes['Ftitle'];
    picUrl = jsonRes['picUrl'];
  }

  @override
  String toString() {
    return '{"radioid": $radioid,"Ftitle": ${Ftitle != null?'${json.encode(Ftitle)}':'null'},"picUrl": ${picUrl != null?'${json.encode(picUrl)}':'null'}}';
  }
}

