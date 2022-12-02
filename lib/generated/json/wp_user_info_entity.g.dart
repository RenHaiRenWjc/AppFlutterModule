import 'package:my_flutter_module/generated/json/base/json_convert_content.dart';
import 'package:my_flutter_module/bean/jsons/wp_user_info_entity.dart';

WpUserInfoEntity $WpUserInfoEntityFromJson(Map<String, dynamic> json) {
	final WpUserInfoEntity wpUserInfoEntity = WpUserInfoEntity();
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		wpUserInfoEntity.code = code;
	}
	final String? message = jsonConvert.convert<String>(json['message']);
	if (message != null) {
		wpUserInfoEntity.message = message;
	}
	final WpUserInfoData? data = jsonConvert.convert<WpUserInfoData>(json['data']);
	if (data != null) {
		wpUserInfoEntity.data = data;
	}
	final int? timestamp = jsonConvert.convert<int>(json['timestamp']);
	if (timestamp != null) {
		wpUserInfoEntity.timestamp = timestamp;
	}
	return wpUserInfoEntity;
}

Map<String, dynamic> $WpUserInfoEntityToJson(WpUserInfoEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['code'] = entity.code;
	data['message'] = entity.message;
	data['data'] = entity.data.toJson();
	data['timestamp'] = entity.timestamp;
	return data;
}

WpUserInfoData $WpUserInfoDataFromJson(Map<String, dynamic> json) {
	final WpUserInfoData wpUserInfoData = WpUserInfoData();
	final int? uid = jsonConvert.convert<int>(json['uid']);
	if (uid != null) {
		wpUserInfoData.uid = uid;
	}
	final int? erbanNo = jsonConvert.convert<int>(json['erbanNo']);
	if (erbanNo != null) {
		wpUserInfoData.erbanNo = erbanNo;
	}
	final bool? hasPrettyErbanNo = jsonConvert.convert<bool>(json['hasPrettyErbanNo']);
	if (hasPrettyErbanNo != null) {
		wpUserInfoData.hasPrettyErbanNo = hasPrettyErbanNo;
	}
	final String? userDesc = jsonConvert.convert<String>(json['userDesc']);
	if (userDesc != null) {
		wpUserInfoData.userDesc = userDesc;
	}
	final String? avatar = jsonConvert.convert<String>(json['avatar']);
	if (avatar != null) {
		wpUserInfoData.avatar = avatar;
	}
	final int? gender = jsonConvert.convert<int>(json['gender']);
	if (gender != null) {
		wpUserInfoData.gender = gender;
	}
	final int? birth = jsonConvert.convert<int>(json['birth']);
	if (birth != null) {
		wpUserInfoData.birth = birth;
	}
	final String? nick = jsonConvert.convert<String>(json['nick']);
	if (nick != null) {
		wpUserInfoData.nick = nick;
	}
	final WpUserInfoDataUserLevelVo? userLevelVo = jsonConvert.convert<WpUserInfoDataUserLevelVo>(json['userLevelVo']);
	if (userLevelVo != null) {
		wpUserInfoData.userLevelVo = userLevelVo;
	}
	final WpUserInfoDataUserTitleVo? userTitleVo = jsonConvert.convert<WpUserInfoDataUserTitleVo>(json['userTitleVo']);
	if (userTitleVo != null) {
		wpUserInfoData.userTitleVo = userTitleVo;
	}
	final WpUserInfoDataUserApertureVo? userApertureVo = jsonConvert.convert<WpUserInfoDataUserApertureVo>(json['userApertureVo']);
	if (userApertureVo != null) {
		wpUserInfoData.userApertureVo = userApertureVo;
	}
	final WpUserInfoDataUserInRoom? userInRoom = jsonConvert.convert<WpUserInfoDataUserInRoom>(json['userInRoom']);
	if (userInRoom != null) {
		wpUserInfoData.userInRoom = userInRoom;
	}
	final WpUserInfoDataUserNamePlate? userNamePlate = jsonConvert.convert<WpUserInfoDataUserNamePlate>(json['userNamePlate']);
	if (userNamePlate != null) {
		wpUserInfoData.userNamePlate = userNamePlate;
	}
	final int? isFollowInRoom = jsonConvert.convert<int>(json['isFollowInRoom']);
	if (isFollowInRoom != null) {
		wpUserInfoData.isFollowInRoom = isFollowInRoom;
	}
	final int? defUser = jsonConvert.convert<int>(json['defUser']);
	if (defUser != null) {
		wpUserInfoData.defUser = defUser;
	}
	final String? userVoice = jsonConvert.convert<String>(json['userVoice']);
	if (userVoice != null) {
		wpUserInfoData.userVoice = userVoice;
	}
	final String? voiceDura = jsonConvert.convert<String>(json['voiceDura']);
	if (voiceDura != null) {
		wpUserInfoData.voiceDura = voiceDura;
	}
	final List<WpUserInfoDataLikesUserLabels>? likesUserLabels = jsonConvert.convertListNotNull<WpUserInfoDataLikesUserLabels>(json['likesUserLabels']);
	if (likesUserLabels != null) {
		wpUserInfoData.likesUserLabels = likesUserLabels;
	}
	final int? status = jsonConvert.convert<int>(json['status']);
	if (status != null) {
		wpUserInfoData.status = status;
	}
	final String? areaProvince = jsonConvert.convert<String>(json['areaProvince']);
	if (areaProvince != null) {
		wpUserInfoData.areaProvince = areaProvince;
	}
	final int? occupation = jsonConvert.convert<int>(json['occupation']);
	if (occupation != null) {
		wpUserInfoData.occupation = occupation;
	}
	final String? occupationName = jsonConvert.convert<String>(json['occupationName']);
	if (occupationName != null) {
		wpUserInfoData.occupationName = occupationName;
	}
	final int? fansClubMemberNum = jsonConvert.convert<int>(json['fansClubMemberNum']);
	if (fansClubMemberNum != null) {
		wpUserInfoData.fansClubMemberNum = fansClubMemberNum;
	}
	final String? region = jsonConvert.convert<String>(json['region']);
	if (region != null) {
		wpUserInfoData.region = region;
	}
	final int? favoriteRoomNum = jsonConvert.convert<int>(json['favoriteRoomNum']);
	if (favoriteRoomNum != null) {
		wpUserInfoData.favoriteRoomNum = favoriteRoomNum;
	}
	final int? followNum = jsonConvert.convert<int>(json['followNum']);
	if (followNum != null) {
		wpUserInfoData.followNum = followNum;
	}
	final int? thumbsUpNum = jsonConvert.convert<int>(json['thumbsUpNum']);
	if (thumbsUpNum != null) {
		wpUserInfoData.thumbsUpNum = thumbsUpNum;
	}
	final int? fansNum = jsonConvert.convert<int>(json['fansNum']);
	if (fansNum != null) {
		wpUserInfoData.fansNum = fansNum;
	}
	final List<WpUserInfoDataPersonLabelList>? personLabelList = jsonConvert.convertListNotNull<WpUserInfoDataPersonLabelList>(json['personLabelList']);
	if (personLabelList != null) {
		wpUserInfoData.personLabelList = personLabelList;
	}
	final WpUserInfoDataUserDetailMomentVo? userDetailMomentVo = jsonConvert.convert<WpUserInfoDataUserDetailMomentVo>(json['userDetailMomentVo']);
	if (userDetailMomentVo != null) {
		wpUserInfoData.userDetailMomentVo = userDetailMomentVo;
	}
	final WpUserInfoDataUserDetailMedalVo? userDetailMedalVo = jsonConvert.convert<WpUserInfoDataUserDetailMedalVo>(json['userDetailMedalVo']);
	if (userDetailMedalVo != null) {
		wpUserInfoData.userDetailMedalVo = userDetailMedalVo;
	}
	final WpUserInfoDataGiftWallVo? giftWallVo = jsonConvert.convert<WpUserInfoDataGiftWallVo>(json['giftWallVo']);
	if (giftWallVo != null) {
		wpUserInfoData.giftWallVo = giftWallVo;
	}
	final int? isLike = jsonConvert.convert<int>(json['isLike']);
	if (isLike != null) {
		wpUserInfoData.isLike = isLike;
	}
	final List<WpUserInfoDataPrivatePhoto>? privatePhoto = jsonConvert.convertListNotNull<WpUserInfoDataPrivatePhoto>(json['privatePhoto']);
	if (privatePhoto != null) {
		wpUserInfoData.privatePhoto = privatePhoto;
	}
	final bool? channelUser = jsonConvert.convert<bool>(json['channelUser']);
	if (channelUser != null) {
		wpUserInfoData.channelUser = channelUser;
	}
	final String? channelUrl = jsonConvert.convert<String>(json['channelUrl']);
	if (channelUrl != null) {
		wpUserInfoData.channelUrl = channelUrl;
	}
	final WpUserInfoDataSelfRoom? selfRoom = jsonConvert.convert<WpUserInfoDataSelfRoom>(json['selfRoom']);
	if (selfRoom != null) {
		wpUserInfoData.selfRoom = selfRoom;
	}
	final int? hasValuePack = jsonConvert.convert<int>(json['hasValuePack']);
	if (hasValuePack != null) {
		wpUserInfoData.hasValuePack = hasValuePack;
	}
	final int? friendNum = jsonConvert.convert<int>(json['friendNum']);
	if (friendNum != null) {
		wpUserInfoData.friendNum = friendNum;
	}
	final int? onlineType = jsonConvert.convert<int>(json['onlineType']);
	if (onlineType != null) {
		wpUserInfoData.onlineType = onlineType;
	}
	return wpUserInfoData;
}

Map<String, dynamic> $WpUserInfoDataToJson(WpUserInfoData entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['uid'] = entity.uid;
	data['erbanNo'] = entity.erbanNo;
	data['hasPrettyErbanNo'] = entity.hasPrettyErbanNo;
	data['userDesc'] = entity.userDesc;
	data['avatar'] = entity.avatar;
	data['gender'] = entity.gender;
	data['birth'] = entity.birth;
	data['nick'] = entity.nick;
	data['userLevelVo'] = entity.userLevelVo.toJson();
	data['userTitleVo'] = entity.userTitleVo.toJson();
	data['userApertureVo'] = entity.userApertureVo.toJson();
	data['userInRoom'] = entity.userInRoom.toJson();
	data['userNamePlate'] = entity.userNamePlate.toJson();
	data['isFollowInRoom'] = entity.isFollowInRoom;
	data['defUser'] = entity.defUser;
	data['userVoice'] = entity.userVoice;
	data['voiceDura'] = entity.voiceDura;
	data['likesUserLabels'] =  entity.likesUserLabels.map((v) => v.toJson()).toList();
	data['status'] = entity.status;
	data['areaProvince'] = entity.areaProvince;
	data['occupation'] = entity.occupation;
	data['occupationName'] = entity.occupationName;
	data['fansClubMemberNum'] = entity.fansClubMemberNum;
	data['region'] = entity.region;
	data['favoriteRoomNum'] = entity.favoriteRoomNum;
	data['followNum'] = entity.followNum;
	data['thumbsUpNum'] = entity.thumbsUpNum;
	data['fansNum'] = entity.fansNum;
	data['personLabelList'] =  entity.personLabelList.map((v) => v.toJson()).toList();
	data['userDetailMomentVo'] = entity.userDetailMomentVo.toJson();
	data['userDetailMedalVo'] = entity.userDetailMedalVo.toJson();
	data['giftWallVo'] = entity.giftWallVo.toJson();
	data['isLike'] = entity.isLike;
	data['privatePhoto'] =  entity.privatePhoto.map((v) => v.toJson()).toList();
	data['channelUser'] = entity.channelUser;
	data['channelUrl'] = entity.channelUrl;
	data['selfRoom'] = entity.selfRoom.toJson();
	data['hasValuePack'] = entity.hasValuePack;
	data['friendNum'] = entity.friendNum;
	data['onlineType'] = entity.onlineType;
	return data;
}

WpUserInfoDataUserLevelVo $WpUserInfoDataUserLevelVoFromJson(Map<String, dynamic> json) {
	final WpUserInfoDataUserLevelVo wpUserInfoDataUserLevelVo = WpUserInfoDataUserLevelVo();
	final int? experAmount = jsonConvert.convert<int>(json['experAmount']);
	if (experAmount != null) {
		wpUserInfoDataUserLevelVo.experAmount = experAmount;
	}
	final int? charmAmount = jsonConvert.convert<int>(json['charmAmount']);
	if (charmAmount != null) {
		wpUserInfoDataUserLevelVo.charmAmount = charmAmount;
	}
	final int? wealthAmount = jsonConvert.convert<int>(json['wealthAmount']);
	if (wealthAmount != null) {
		wpUserInfoDataUserLevelVo.wealthAmount = wealthAmount;
	}
	final String? experUrl = jsonConvert.convert<String>(json['experUrl']);
	if (experUrl != null) {
		wpUserInfoDataUserLevelVo.experUrl = experUrl;
	}
	final String? charmUrl = jsonConvert.convert<String>(json['charmUrl']);
	if (charmUrl != null) {
		wpUserInfoDataUserLevelVo.charmUrl = charmUrl;
	}
	final String? wealthUrl = jsonConvert.convert<String>(json['wealthUrl']);
	if (wealthUrl != null) {
		wpUserInfoDataUserLevelVo.wealthUrl = wealthUrl;
	}
	final String? experLevelName = jsonConvert.convert<String>(json['experLevelName']);
	if (experLevelName != null) {
		wpUserInfoDataUserLevelVo.experLevelName = experLevelName;
	}
	final String? charmLevelName = jsonConvert.convert<String>(json['charmLevelName']);
	if (charmLevelName != null) {
		wpUserInfoDataUserLevelVo.charmLevelName = charmLevelName;
	}
	final String? experLevelGrp = jsonConvert.convert<String>(json['experLevelGrp']);
	if (experLevelGrp != null) {
		wpUserInfoDataUserLevelVo.experLevelGrp = experLevelGrp;
	}
	final String? charmLevelGrp = jsonConvert.convert<String>(json['charmLevelGrp']);
	if (charmLevelGrp != null) {
		wpUserInfoDataUserLevelVo.charmLevelGrp = charmLevelGrp;
	}
	final int? experLevelSeq = jsonConvert.convert<int>(json['experLevelSeq']);
	if (experLevelSeq != null) {
		wpUserInfoDataUserLevelVo.experLevelSeq = experLevelSeq;
	}
	final int? charmLevelSeq = jsonConvert.convert<int>(json['charmLevelSeq']);
	if (charmLevelSeq != null) {
		wpUserInfoDataUserLevelVo.charmLevelSeq = charmLevelSeq;
	}
	final int? wealthLevelSeq = jsonConvert.convert<int>(json['wealthLevelSeq']);
	if (wealthLevelSeq != null) {
		wpUserInfoDataUserLevelVo.wealthLevelSeq = wealthLevelSeq;
	}
	final String? experLarge = jsonConvert.convert<String>(json['experLarge']);
	if (experLarge != null) {
		wpUserInfoDataUserLevelVo.experLarge = experLarge;
	}
	final String? charmLarge = jsonConvert.convert<String>(json['charmLarge']);
	if (charmLarge != null) {
		wpUserInfoDataUserLevelVo.charmLarge = charmLarge;
	}
	final String? weathLarge = jsonConvert.convert<String>(json['weathLarge']);
	if (weathLarge != null) {
		wpUserInfoDataUserLevelVo.weathLarge = weathLarge;
	}
	final String? charmBackground = jsonConvert.convert<String>(json['charmBackground']);
	if (charmBackground != null) {
		wpUserInfoDataUserLevelVo.charmBackground = charmBackground;
	}
	final String? charmVggCar = jsonConvert.convert<String>(json['charmVggCar']);
	if (charmVggCar != null) {
		wpUserInfoDataUserLevelVo.charmVggCar = charmVggCar;
	}
	final String? wealthEntryEffect = jsonConvert.convert<String>(json['wealthEntryEffect']);
	if (wealthEntryEffect != null) {
		wpUserInfoDataUserLevelVo.wealthEntryEffect = wealthEntryEffect;
	}
	final String? gradeTitle = jsonConvert.convert<String>(json['gradeTitle']);
	if (gradeTitle != null) {
		wpUserInfoDataUserLevelVo.gradeTitle = gradeTitle;
	}
	return wpUserInfoDataUserLevelVo;
}

Map<String, dynamic> $WpUserInfoDataUserLevelVoToJson(WpUserInfoDataUserLevelVo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['experAmount'] = entity.experAmount;
	data['charmAmount'] = entity.charmAmount;
	data['wealthAmount'] = entity.wealthAmount;
	data['experUrl'] = entity.experUrl;
	data['charmUrl'] = entity.charmUrl;
	data['wealthUrl'] = entity.wealthUrl;
	data['experLevelName'] = entity.experLevelName;
	data['charmLevelName'] = entity.charmLevelName;
	data['experLevelGrp'] = entity.experLevelGrp;
	data['charmLevelGrp'] = entity.charmLevelGrp;
	data['experLevelSeq'] = entity.experLevelSeq;
	data['charmLevelSeq'] = entity.charmLevelSeq;
	data['wealthLevelSeq'] = entity.wealthLevelSeq;
	data['experLarge'] = entity.experLarge;
	data['charmLarge'] = entity.charmLarge;
	data['weathLarge'] = entity.weathLarge;
	data['charmBackground'] = entity.charmBackground;
	data['charmVggCar'] = entity.charmVggCar;
	data['wealthEntryEffect'] = entity.wealthEntryEffect;
	data['gradeTitle'] = entity.gradeTitle;
	return data;
}

WpUserInfoDataUserTitleVo $WpUserInfoDataUserTitleVoFromJson(Map<String, dynamic> json) {
	final WpUserInfoDataUserTitleVo wpUserInfoDataUserTitleVo = WpUserInfoDataUserTitleVo();
	final int? titleId = jsonConvert.convert<int>(json['titleId']);
	if (titleId != null) {
		wpUserInfoDataUserTitleVo.titleId = titleId;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		wpUserInfoDataUserTitleVo.name = name;
	}
	final String? pic = jsonConvert.convert<String>(json['pic']);
	if (pic != null) {
		wpUserInfoDataUserTitleVo.pic = pic;
	}
	return wpUserInfoDataUserTitleVo;
}

Map<String, dynamic> $WpUserInfoDataUserTitleVoToJson(WpUserInfoDataUserTitleVo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['titleId'] = entity.titleId;
	data['name'] = entity.name;
	data['pic'] = entity.pic;
	return data;
}

WpUserInfoDataUserApertureVo $WpUserInfoDataUserApertureVoFromJson(Map<String, dynamic> json) {
	final WpUserInfoDataUserApertureVo wpUserInfoDataUserApertureVo = WpUserInfoDataUserApertureVo();
	final int? apertureId = jsonConvert.convert<int>(json['apertureId']);
	if (apertureId != null) {
		wpUserInfoDataUserApertureVo.apertureId = apertureId;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		wpUserInfoDataUserApertureVo.name = name;
	}
	final String? pic = jsonConvert.convert<String>(json['pic']);
	if (pic != null) {
		wpUserInfoDataUserApertureVo.pic = pic;
	}
	return wpUserInfoDataUserApertureVo;
}

Map<String, dynamic> $WpUserInfoDataUserApertureVoToJson(WpUserInfoDataUserApertureVo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['apertureId'] = entity.apertureId;
	data['name'] = entity.name;
	data['pic'] = entity.pic;
	return data;
}

WpUserInfoDataUserInRoom $WpUserInfoDataUserInRoomFromJson(Map<String, dynamic> json) {
	final WpUserInfoDataUserInRoom wpUserInfoDataUserInRoom = WpUserInfoDataUserInRoom();
	final int? uid = jsonConvert.convert<int>(json['uid']);
	if (uid != null) {
		wpUserInfoDataUserInRoom.uid = uid;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		wpUserInfoDataUserInRoom.title = title;
	}
	final int? roomId = jsonConvert.convert<int>(json['roomId']);
	if (roomId != null) {
		wpUserInfoDataUserInRoom.roomId = roomId;
	}
	final int? isPermitRoom = jsonConvert.convert<int>(json['isPermitRoom']);
	if (isPermitRoom != null) {
		wpUserInfoDataUserInRoom.isPermitRoom = isPermitRoom;
	}
	final String? roomTag = jsonConvert.convert<String>(json['roomTag']);
	if (roomTag != null) {
		wpUserInfoDataUserInRoom.roomTag = roomTag;
	}
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		wpUserInfoDataUserInRoom.type = type;
	}
	final bool? online = jsonConvert.convert<bool>(json['online']);
	if (online != null) {
		wpUserInfoDataUserInRoom.online = online;
	}
	return wpUserInfoDataUserInRoom;
}

Map<String, dynamic> $WpUserInfoDataUserInRoomToJson(WpUserInfoDataUserInRoom entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['uid'] = entity.uid;
	data['title'] = entity.title;
	data['roomId'] = entity.roomId;
	data['isPermitRoom'] = entity.isPermitRoom;
	data['roomTag'] = entity.roomTag;
	data['type'] = entity.type;
	data['online'] = entity.online;
	return data;
}

WpUserInfoDataUserNamePlate $WpUserInfoDataUserNamePlateFromJson(Map<String, dynamic> json) {
	final WpUserInfoDataUserNamePlate wpUserInfoDataUserNamePlate = WpUserInfoDataUserNamePlate();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		wpUserInfoDataUserNamePlate.id = id;
	}
	final int? uid = jsonConvert.convert<int>(json['uid']);
	if (uid != null) {
		wpUserInfoDataUserNamePlate.uid = uid;
	}
	final int? nameplateId = jsonConvert.convert<int>(json['nameplateId']);
	if (nameplateId != null) {
		wpUserInfoDataUserNamePlate.nameplateId = nameplateId;
	}
	final String? nameplateName = jsonConvert.convert<String>(json['nameplateName']);
	if (nameplateName != null) {
		wpUserInfoDataUserNamePlate.nameplateName = nameplateName;
	}
	final String? nameplatePic = jsonConvert.convert<String>(json['nameplatePic']);
	if (nameplatePic != null) {
		wpUserInfoDataUserNamePlate.nameplatePic = nameplatePic;
	}
	final String? textDesc = jsonConvert.convert<String>(json['textDesc']);
	if (textDesc != null) {
		wpUserInfoDataUserNamePlate.textDesc = textDesc;
	}
	final bool? used = jsonConvert.convert<bool>(json['used']);
	if (used != null) {
		wpUserInfoDataUserNamePlate.used = used;
	}
	final String? obtainDesc = jsonConvert.convert<String>(json['obtainDesc']);
	if (obtainDesc != null) {
		wpUserInfoDataUserNamePlate.obtainDesc = obtainDesc;
	}
	final int? obtainTime = jsonConvert.convert<int>(json['obtainTime']);
	if (obtainTime != null) {
		wpUserInfoDataUserNamePlate.obtainTime = obtainTime;
	}
	final int? expireTime = jsonConvert.convert<int>(json['expireTime']);
	if (expireTime != null) {
		wpUserInfoDataUserNamePlate.expireTime = expireTime;
	}
	final int? comeFrom = jsonConvert.convert<int>(json['comeFrom']);
	if (comeFrom != null) {
		wpUserInfoDataUserNamePlate.comeFrom = comeFrom;
	}
	final int? auditStatus = jsonConvert.convert<int>(json['auditStatus']);
	if (auditStatus != null) {
		wpUserInfoDataUserNamePlate.auditStatus = auditStatus;
	}
	final int? createTime = jsonConvert.convert<int>(json['createTime']);
	if (createTime != null) {
		wpUserInfoDataUserNamePlate.createTime = createTime;
	}
	final int? updateTime = jsonConvert.convert<int>(json['updateTime']);
	if (updateTime != null) {
		wpUserInfoDataUserNamePlate.updateTime = updateTime;
	}
	final int? remainTime = jsonConvert.convert<int>(json['remainTime']);
	if (remainTime != null) {
		wpUserInfoDataUserNamePlate.remainTime = remainTime;
	}
	return wpUserInfoDataUserNamePlate;
}

Map<String, dynamic> $WpUserInfoDataUserNamePlateToJson(WpUserInfoDataUserNamePlate entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['uid'] = entity.uid;
	data['nameplateId'] = entity.nameplateId;
	data['nameplateName'] = entity.nameplateName;
	data['nameplatePic'] = entity.nameplatePic;
	data['textDesc'] = entity.textDesc;
	data['used'] = entity.used;
	data['obtainDesc'] = entity.obtainDesc;
	data['obtainTime'] = entity.obtainTime;
	data['expireTime'] = entity.expireTime;
	data['comeFrom'] = entity.comeFrom;
	data['auditStatus'] = entity.auditStatus;
	data['createTime'] = entity.createTime;
	data['updateTime'] = entity.updateTime;
	data['remainTime'] = entity.remainTime;
	return data;
}

WpUserInfoDataLikesUserLabels $WpUserInfoDataLikesUserLabelsFromJson(Map<String, dynamic> json) {
	final WpUserInfoDataLikesUserLabels wpUserInfoDataLikesUserLabels = WpUserInfoDataLikesUserLabels();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		wpUserInfoDataLikesUserLabels.id = id;
	}
	final int? parentId = jsonConvert.convert<int>(json['parentId']);
	if (parentId != null) {
		wpUserInfoDataLikesUserLabels.parentId = parentId;
	}
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		wpUserInfoDataLikesUserLabels.type = type;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		wpUserInfoDataLikesUserLabels.name = name;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		wpUserInfoDataLikesUserLabels.url = url;
	}
	final int? seqNo = jsonConvert.convert<int>(json['seqNo']);
	if (seqNo != null) {
		wpUserInfoDataLikesUserLabels.seqNo = seqNo;
	}
	final int? status = jsonConvert.convert<int>(json['status']);
	if (status != null) {
		wpUserInfoDataLikesUserLabels.status = status;
	}
	final int? createTime = jsonConvert.convert<int>(json['createTime']);
	if (createTime != null) {
		wpUserInfoDataLikesUserLabels.createTime = createTime;
	}
	final int? gender = jsonConvert.convert<int>(json['gender']);
	if (gender != null) {
		wpUserInfoDataLikesUserLabels.gender = gender;
	}
	return wpUserInfoDataLikesUserLabels;
}

Map<String, dynamic> $WpUserInfoDataLikesUserLabelsToJson(WpUserInfoDataLikesUserLabels entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['parentId'] = entity.parentId;
	data['type'] = entity.type;
	data['name'] = entity.name;
	data['url'] = entity.url;
	data['seqNo'] = entity.seqNo;
	data['status'] = entity.status;
	data['createTime'] = entity.createTime;
	data['gender'] = entity.gender;
	return data;
}

WpUserInfoDataPersonLabelList $WpUserInfoDataPersonLabelListFromJson(Map<String, dynamic> json) {
	final WpUserInfoDataPersonLabelList wpUserInfoDataPersonLabelList = WpUserInfoDataPersonLabelList();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		wpUserInfoDataPersonLabelList.id = id;
	}
	final int? parentId = jsonConvert.convert<int>(json['parentId']);
	if (parentId != null) {
		wpUserInfoDataPersonLabelList.parentId = parentId;
	}
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		wpUserInfoDataPersonLabelList.type = type;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		wpUserInfoDataPersonLabelList.name = name;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		wpUserInfoDataPersonLabelList.url = url;
	}
	final int? seqNo = jsonConvert.convert<int>(json['seqNo']);
	if (seqNo != null) {
		wpUserInfoDataPersonLabelList.seqNo = seqNo;
	}
	final int? status = jsonConvert.convert<int>(json['status']);
	if (status != null) {
		wpUserInfoDataPersonLabelList.status = status;
	}
	final int? createTime = jsonConvert.convert<int>(json['createTime']);
	if (createTime != null) {
		wpUserInfoDataPersonLabelList.createTime = createTime;
	}
	final int? gender = jsonConvert.convert<int>(json['gender']);
	if (gender != null) {
		wpUserInfoDataPersonLabelList.gender = gender;
	}
	return wpUserInfoDataPersonLabelList;
}

Map<String, dynamic> $WpUserInfoDataPersonLabelListToJson(WpUserInfoDataPersonLabelList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['parentId'] = entity.parentId;
	data['type'] = entity.type;
	data['name'] = entity.name;
	data['url'] = entity.url;
	data['seqNo'] = entity.seqNo;
	data['status'] = entity.status;
	data['createTime'] = entity.createTime;
	data['gender'] = entity.gender;
	return data;
}

WpUserInfoDataUserDetailMomentVo $WpUserInfoDataUserDetailMomentVoFromJson(Map<String, dynamic> json) {
	final WpUserInfoDataUserDetailMomentVo wpUserInfoDataUserDetailMomentVo = WpUserInfoDataUserDetailMomentVo();
	final String? uid = jsonConvert.convert<String>(json['uid']);
	if (uid != null) {
		wpUserInfoDataUserDetailMomentVo.uid = uid;
	}
	final int? momentsCount = jsonConvert.convert<int>(json['momentsCount']);
	if (momentsCount != null) {
		wpUserInfoDataUserDetailMomentVo.momentsCount = momentsCount;
	}
	final List<String>? momentUrls = jsonConvert.convertListNotNull<String>(json['momentUrls']);
	if (momentUrls != null) {
		wpUserInfoDataUserDetailMomentVo.momentUrls = momentUrls;
	}
	return wpUserInfoDataUserDetailMomentVo;
}

Map<String, dynamic> $WpUserInfoDataUserDetailMomentVoToJson(WpUserInfoDataUserDetailMomentVo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['uid'] = entity.uid;
	data['momentsCount'] = entity.momentsCount;
	data['momentUrls'] =  entity.momentUrls;
	return data;
}

WpUserInfoDataUserDetailMedalVo $WpUserInfoDataUserDetailMedalVoFromJson(Map<String, dynamic> json) {
	final WpUserInfoDataUserDetailMedalVo wpUserInfoDataUserDetailMedalVo = WpUserInfoDataUserDetailMedalVo();
	final int? medalCount = jsonConvert.convert<int>(json['medalCount']);
	if (medalCount != null) {
		wpUserInfoDataUserDetailMedalVo.medalCount = medalCount;
	}
	final List<dynamic>? userMedalVos = jsonConvert.convertListNotNull<dynamic>(json['userMedalVos']);
	if (userMedalVos != null) {
		wpUserInfoDataUserDetailMedalVo.userMedalVos = userMedalVos;
	}
	return wpUserInfoDataUserDetailMedalVo;
}

Map<String, dynamic> $WpUserInfoDataUserDetailMedalVoToJson(WpUserInfoDataUserDetailMedalVo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['medalCount'] = entity.medalCount;
	data['userMedalVos'] =  entity.userMedalVos;
	return data;
}

WpUserInfoDataGiftWallVo $WpUserInfoDataGiftWallVoFromJson(Map<String, dynamic> json) {
	final WpUserInfoDataGiftWallVo wpUserInfoDataGiftWallVo = WpUserInfoDataGiftWallVo();
	final int? giftKind = jsonConvert.convert<int>(json['giftKind']);
	if (giftKind != null) {
		wpUserInfoDataGiftWallVo.giftKind = giftKind;
	}
	final int? giftNum = jsonConvert.convert<int>(json['giftNum']);
	if (giftNum != null) {
		wpUserInfoDataGiftWallVo.giftNum = giftNum;
	}
	final List<WpUserInfoDataGiftWallVoItemVos>? itemVos = jsonConvert.convertListNotNull<WpUserInfoDataGiftWallVoItemVos>(json['itemVos']);
	if (itemVos != null) {
		wpUserInfoDataGiftWallVo.itemVos = itemVos;
	}
	return wpUserInfoDataGiftWallVo;
}

Map<String, dynamic> $WpUserInfoDataGiftWallVoToJson(WpUserInfoDataGiftWallVo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['giftKind'] = entity.giftKind;
	data['giftNum'] = entity.giftNum;
	data['itemVos'] =  entity.itemVos.map((v) => v.toJson()).toList();
	return data;
}

WpUserInfoDataGiftWallVoItemVos $WpUserInfoDataGiftWallVoItemVosFromJson(Map<String, dynamic> json) {
	final WpUserInfoDataGiftWallVoItemVos wpUserInfoDataGiftWallVoItemVos = WpUserInfoDataGiftWallVoItemVos();
	final int? giftId = jsonConvert.convert<int>(json['giftId']);
	if (giftId != null) {
		wpUserInfoDataGiftWallVoItemVos.giftId = giftId;
	}
	final int? reciveCount = jsonConvert.convert<int>(json['reciveCount']);
	if (reciveCount != null) {
		wpUserInfoDataGiftWallVoItemVos.reciveCount = reciveCount;
	}
	final bool? isLightUp = jsonConvert.convert<bool>(json['isLightUp']);
	if (isLightUp != null) {
		wpUserInfoDataGiftWallVoItemVos.isLightUp = isLightUp;
	}
	final bool? isTimeLimit = jsonConvert.convert<bool>(json['isTimeLimit']);
	if (isTimeLimit != null) {
		wpUserInfoDataGiftWallVoItemVos.isTimeLimit = isTimeLimit;
	}
	final String? giftName = jsonConvert.convert<String>(json['giftName']);
	if (giftName != null) {
		wpUserInfoDataGiftWallVoItemVos.giftName = giftName;
	}
	final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
	if (picUrl != null) {
		wpUserInfoDataGiftWallVoItemVos.picUrl = picUrl;
	}
	final int? goldPrice = jsonConvert.convert<int>(json['goldPrice']);
	if (goldPrice != null) {
		wpUserInfoDataGiftWallVoItemVos.goldPrice = goldPrice;
	}
	return wpUserInfoDataGiftWallVoItemVos;
}

Map<String, dynamic> $WpUserInfoDataGiftWallVoItemVosToJson(WpUserInfoDataGiftWallVoItemVos entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['giftId'] = entity.giftId;
	data['reciveCount'] = entity.reciveCount;
	data['isLightUp'] = entity.isLightUp;
	data['isTimeLimit'] = entity.isTimeLimit;
	data['giftName'] = entity.giftName;
	data['picUrl'] = entity.picUrl;
	data['goldPrice'] = entity.goldPrice;
	return data;
}

WpUserInfoDataPrivatePhoto $WpUserInfoDataPrivatePhotoFromJson(Map<String, dynamic> json) {
	final WpUserInfoDataPrivatePhoto wpUserInfoDataPrivatePhoto = WpUserInfoDataPrivatePhoto();
	final int? pid = jsonConvert.convert<int>(json['pid']);
	if (pid != null) {
		wpUserInfoDataPrivatePhoto.pid = pid;
	}
	final String? photoUrl = jsonConvert.convert<String>(json['photoUrl']);
	if (photoUrl != null) {
		wpUserInfoDataPrivatePhoto.photoUrl = photoUrl;
	}
	final int? photoType = jsonConvert.convert<int>(json['photoType']);
	if (photoType != null) {
		wpUserInfoDataPrivatePhoto.photoType = photoType;
	}
	final int? seqNo = jsonConvert.convert<int>(json['seqNo']);
	if (seqNo != null) {
		wpUserInfoDataPrivatePhoto.seqNo = seqNo;
	}
	final int? auditType = jsonConvert.convert<int>(json['auditType']);
	if (auditType != null) {
		wpUserInfoDataPrivatePhoto.auditType = auditType;
	}
	final int? createTime = jsonConvert.convert<int>(json['createTime']);
	if (createTime != null) {
		wpUserInfoDataPrivatePhoto.createTime = createTime;
	}
	return wpUserInfoDataPrivatePhoto;
}

Map<String, dynamic> $WpUserInfoDataPrivatePhotoToJson(WpUserInfoDataPrivatePhoto entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['pid'] = entity.pid;
	data['photoUrl'] = entity.photoUrl;
	data['photoType'] = entity.photoType;
	data['seqNo'] = entity.seqNo;
	data['auditType'] = entity.auditType;
	data['createTime'] = entity.createTime;
	return data;
}

WpUserInfoDataSelfRoom $WpUserInfoDataSelfRoomFromJson(Map<String, dynamic> json) {
	final WpUserInfoDataSelfRoom wpUserInfoDataSelfRoom = WpUserInfoDataSelfRoom();
	final int? uid = jsonConvert.convert<int>(json['uid']);
	if (uid != null) {
		wpUserInfoDataSelfRoom.uid = uid;
	}
	final String? nick = jsonConvert.convert<String>(json['nick']);
	if (nick != null) {
		wpUserInfoDataSelfRoom.nick = nick;
	}
	final String? roomTitle = jsonConvert.convert<String>(json['roomTitle']);
	if (roomTitle != null) {
		wpUserInfoDataSelfRoom.roomTitle = roomTitle;
	}
	final int? olineNum = jsonConvert.convert<int>(json['olineNum']);
	if (olineNum != null) {
		wpUserInfoDataSelfRoom.olineNum = olineNum;
	}
	final int? erbanNo = jsonConvert.convert<int>(json['erbanNo']);
	if (erbanNo != null) {
		wpUserInfoDataSelfRoom.erbanNo = erbanNo;
	}
	final String? roomAvatar = jsonConvert.convert<String>(json['roomAvatar']);
	if (roomAvatar != null) {
		wpUserInfoDataSelfRoom.roomAvatar = roomAvatar;
	}
	final int? isPermitRoom = jsonConvert.convert<int>(json['isPermitRoom']);
	if (isPermitRoom != null) {
		wpUserInfoDataSelfRoom.isPermitRoom = isPermitRoom;
	}
	final int? heat = jsonConvert.convert<int>(json['heat']);
	if (heat != null) {
		wpUserInfoDataSelfRoom.heat = heat;
	}
	return wpUserInfoDataSelfRoom;
}

Map<String, dynamic> $WpUserInfoDataSelfRoomToJson(WpUserInfoDataSelfRoom entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['uid'] = entity.uid;
	data['nick'] = entity.nick;
	data['roomTitle'] = entity.roomTitle;
	data['olineNum'] = entity.olineNum;
	data['erbanNo'] = entity.erbanNo;
	data['roomAvatar'] = entity.roomAvatar;
	data['isPermitRoom'] = entity.isPermitRoom;
	data['heat'] = entity.heat;
	return data;
}