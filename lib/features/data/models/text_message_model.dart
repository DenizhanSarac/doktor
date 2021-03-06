import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:cloud_firestore_platform_interface/src/timestamp.dart';
import 'package:doktor/features/domain/entities/text_messsage_entity.dart';

class TextMessageModel extends TextMessageEntity {
  TextMessageModel(
      {   String senderName,
        String sederUID,
        String recipientName,
        String recipientUID,
        String messageType,
        String message,
        bool isOdp,
        String messageId,
        Timestamp time,}
      ) : super(
    senderName:senderName,
    sederUID: sederUID,
    recipientName: recipientName,
    recipientUID: recipientUID,
    messsageType:messageType,
    message:message,
    isOdp:isOdp,
    messageId:messageId,
    time: time,
  );
  factory TextMessageModel.fromSnapShot(DocumentSnapshot snapshot){
    return TextMessageModel(
      senderName: snapshot['senderName'],
      sederUID: snapshot['sederUID'],
      recipientName: snapshot['recipientName'],
      recipientUID: snapshot['recipientUID'],
      messageType: snapshot['messageType'],
      message: snapshot['message'],
      isOdp: snapshot['isOdp'],
      messageId: snapshot['messageId'],
      time: snapshot['time'],
    );
  }
  Map<String,dynamic> toDocument(){
    return {
      "senderName":senderName,
      "sederUID":sederUID,
      "recipientName":recipientName,
      "recipientUID":recipientUID,
      "messageType":messsageType,
      "message":message,
      "isOdp":isOdp,
      "messageId":messageId,
      "time":time,
    };
  }
}