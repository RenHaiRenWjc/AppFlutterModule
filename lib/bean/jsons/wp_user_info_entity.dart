import 'package:my_flutter_module/generated/json/base/json_field.dart';
import 'package:my_flutter_module/generated/json/wp_user_info_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class WpUserInfoEntity {

	late int code;
	late String message;
	late WpUserInfoData data;
	late int timestamp;
  
  WpUserInfoEntity();

  factory WpUserInfoEntity.fromJson(Map<String, dynamic> json) => $WpUserInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $WpUserInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WpUserInfoData {

	late int uid;
	late int erbanNo;
	late bool hasPrettyErbanNo;
	late String userDesc;
	late String avatar;
	late int gender;
	late int birth;
	late String nick;
	late WpUserInfoDataUserLevelVo userLevelVo;
	late WpUserInfoDataUserTitleVo userTitleVo;
	late WpUserInfoDataUserApertureVo userApertureVo;
	late WpUserInfoDataUserInRoom userInRoom;
	late WpUserInfoDataUserNamePlate userNamePlate;
	late int isFollowInRoom;
	late int defUser;
	late String userVoice;
	late String voiceDura;
	late List<WpUserInfoDataLikesUserLabels> likesUserLabels;
	late int status;
	late String areaProvince;
	late int occupation;
	late String occupationName;
	late int fansClubMemberNum;
	late String region;
	late int favoriteRoomNum;
	late int followNum;
	late int thumbsUpNum;
	late int fansNum;
	late List<WpUserInfoDataPersonLabelList> personLabelList;
	late WpUserInfoDataUserDetailMomentVo userDetailMomentVo;
	late WpUserInfoDataUserDetailMedalVo userDetailMedalVo;
	late WpUserInfoDataGiftWallVo giftWallVo;
	late int isLike;
	late List<WpUserInfoDataPrivatePhoto> privatePhoto;
	late bool channelUser;
	late String channelUrl;
	late WpUserInfoDataSelfRoom selfRoom;
	late int hasValuePack;
	late int friendNum;
	late int onlineType;
  
  WpUserInfoData();

  factory WpUserInfoData.fromJson(Map<String, dynamic> json) => $WpUserInfoDataFromJson(json);

  Map<String, dynamic> toJson() => $WpUserInfoDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WpUserInfoDataUserLevelVo {

	late int experAmount;
	late int charmAmount;
	late int wealthAmount;
	late String experUrl;
	late String charmUrl;
	late String wealthUrl;
	late String experLevelName;
	late String charmLevelName;
	late String experLevelGrp;
	late String charmLevelGrp;
	late int experLevelSeq;
	late int charmLevelSeq;
	late int wealthLevelSeq;
	late String experLarge;
	late String charmLarge;
	late String weathLarge;
	late String charmBackground;
	late String charmVggCar;
	late String wealthEntryEffect;
	late String gradeTitle;
  
  WpUserInfoDataUserLevelVo();

  factory WpUserInfoDataUserLevelVo.fromJson(Map<String, dynamic> json) => $WpUserInfoDataUserLevelVoFromJson(json);

  Map<String, dynamic> toJson() => $WpUserInfoDataUserLevelVoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WpUserInfoDataUserTitleVo {

	late int titleId;
	late String name;
	late String pic;
  
  WpUserInfoDataUserTitleVo();

  factory WpUserInfoDataUserTitleVo.fromJson(Map<String, dynamic> json) => $WpUserInfoDataUserTitleVoFromJson(json);

  Map<String, dynamic> toJson() => $WpUserInfoDataUserTitleVoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WpUserInfoDataUserApertureVo {

	late int apertureId;
	late String name;
	late String pic;
  
  WpUserInfoDataUserApertureVo();

  factory WpUserInfoDataUserApertureVo.fromJson(Map<String, dynamic> json) => $WpUserInfoDataUserApertureVoFromJson(json);

  Map<String, dynamic> toJson() => $WpUserInfoDataUserApertureVoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WpUserInfoDataUserInRoom {

	late int uid;
	late String title;
	late int roomId;
	late int isPermitRoom;
	late String roomTag;
	late int type;
	late bool online;
  
  WpUserInfoDataUserInRoom();

  factory WpUserInfoDataUserInRoom.fromJson(Map<String, dynamic> json) => $WpUserInfoDataUserInRoomFromJson(json);

  Map<String, dynamic> toJson() => $WpUserInfoDataUserInRoomToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WpUserInfoDataUserNamePlate {

	late int id;
	late int uid;
	late int nameplateId;
	late String nameplateName;
	late String nameplatePic;
	late String textDesc;
	late bool used;
	late String obtainDesc;
	late int obtainTime;
	late int expireTime;
	late int comeFrom;
	late int auditStatus;
	late int createTime;
	late int updateTime;
	late int remainTime;
  
  WpUserInfoDataUserNamePlate();

  factory WpUserInfoDataUserNamePlate.fromJson(Map<String, dynamic> json) => $WpUserInfoDataUserNamePlateFromJson(json);

  Map<String, dynamic> toJson() => $WpUserInfoDataUserNamePlateToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WpUserInfoDataLikesUserLabels {

	late int id;
	late int parentId;
	late int type;
	late String name;
	late String url;
	late int seqNo;
	late int status;
	late int createTime;
	late int gender;
  
  WpUserInfoDataLikesUserLabels();

  factory WpUserInfoDataLikesUserLabels.fromJson(Map<String, dynamic> json) => $WpUserInfoDataLikesUserLabelsFromJson(json);

  Map<String, dynamic> toJson() => $WpUserInfoDataLikesUserLabelsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WpUserInfoDataPersonLabelList {

	late int id;
	late int parentId;
	late int type;
	late String name;
	late String url;
	late int seqNo;
	late int status;
	late int createTime;
	late int gender;
  
  WpUserInfoDataPersonLabelList();

  factory WpUserInfoDataPersonLabelList.fromJson(Map<String, dynamic> json) => $WpUserInfoDataPersonLabelListFromJson(json);

  Map<String, dynamic> toJson() => $WpUserInfoDataPersonLabelListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WpUserInfoDataUserDetailMomentVo {

	late String uid;
	late int momentsCount;
	late List<String> momentUrls;
  
  WpUserInfoDataUserDetailMomentVo();

  factory WpUserInfoDataUserDetailMomentVo.fromJson(Map<String, dynamic> json) => $WpUserInfoDataUserDetailMomentVoFromJson(json);

  Map<String, dynamic> toJson() => $WpUserInfoDataUserDetailMomentVoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WpUserInfoDataUserDetailMedalVo {

	late int medalCount;
	late List<dynamic> userMedalVos;
  
  WpUserInfoDataUserDetailMedalVo();

  factory WpUserInfoDataUserDetailMedalVo.fromJson(Map<String, dynamic> json) => $WpUserInfoDataUserDetailMedalVoFromJson(json);

  Map<String, dynamic> toJson() => $WpUserInfoDataUserDetailMedalVoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WpUserInfoDataGiftWallVo {

	late int giftKind;
	late int giftNum;
	late List<WpUserInfoDataGiftWallVoItemVos> itemVos;
  
  WpUserInfoDataGiftWallVo();

  factory WpUserInfoDataGiftWallVo.fromJson(Map<String, dynamic> json) => $WpUserInfoDataGiftWallVoFromJson(json);

  Map<String, dynamic> toJson() => $WpUserInfoDataGiftWallVoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WpUserInfoDataGiftWallVoItemVos {

	late int giftId;
	late int reciveCount;
	late bool isLightUp;
	late bool isTimeLimit;
	late String giftName;
	late String picUrl;
	late int goldPrice;
  
  WpUserInfoDataGiftWallVoItemVos();

  factory WpUserInfoDataGiftWallVoItemVos.fromJson(Map<String, dynamic> json) => $WpUserInfoDataGiftWallVoItemVosFromJson(json);

  Map<String, dynamic> toJson() => $WpUserInfoDataGiftWallVoItemVosToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WpUserInfoDataPrivatePhoto {

	late int pid;
	late String photoUrl;
	late int photoType;
	late int seqNo;
	late int auditType;
	late int createTime;
  
  WpUserInfoDataPrivatePhoto();

  factory WpUserInfoDataPrivatePhoto.fromJson(Map<String, dynamic> json) => $WpUserInfoDataPrivatePhotoFromJson(json);

  Map<String, dynamic> toJson() => $WpUserInfoDataPrivatePhotoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WpUserInfoDataSelfRoom {

	late int uid;
	late String nick;
	late String roomTitle;
	late int olineNum;
	late int erbanNo;
	late String roomAvatar;
	late int isPermitRoom;
	late int heat;
  
  WpUserInfoDataSelfRoom();

  factory WpUserInfoDataSelfRoom.fromJson(Map<String, dynamic> json) => $WpUserInfoDataSelfRoomFromJson(json);

  Map<String, dynamic> toJson() => $WpUserInfoDataSelfRoomToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}