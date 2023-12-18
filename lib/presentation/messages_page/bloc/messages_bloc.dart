import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/stories1_item_model.dart';
import '../models/messages_item_model.dart';
import 'package:flichat/presentation/messages_page/models/messages_model.dart';
part 'messages_event.dart';
part 'messages_state.dart';

/// A bloc that manages the state of a Messages according to the event that is dispatched to it.
class MessagesBloc extends Bloc<MessagesEvent, MessagesState> {
  MessagesBloc(MessagesState initialState) : super(initialState) {
    on<MessagesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MessagesInitialEvent event,
    Emitter<MessagesState> emit,
  ) async {
    emit(state.copyWith(
        messagesModelObj: state.messagesModelObj?.copyWith(
            stories1ItemList: fillStories1ItemList(),
            messagesItemList: fillMessagesItemList())));
  }

  List<Stories1ItemModel> fillStories1ItemList() {
    return [
      Stories1ItemModel(roy: ImageConstant.imgEllipse15, roy1: "Roy"),
      Stories1ItemModel(roy: ImageConstant.imgEllipse22, roy1: "Jordan"),
      Stories1ItemModel(roy: ImageConstant.imgEllipse24, roy1: "Angeline"),
      Stories1ItemModel(roy: ImageConstant.imgEllipse26, roy1: "Chrystin"),
      Stories1ItemModel(roy: ImageConstant.imgEllipse28, roy1: "Vrindha"),
      Stories1ItemModel(roy: ImageConstant.imgEllipse24, roy1: "Vrindha")
    ];
  }

  List<MessagesItemModel> fillMessagesItemList() {
    return [
      MessagesItemModel(
          richardAlves: "Richard Alves",
          time: "10:00 AM",
          heyBroWhereAre: "Hey bro, where are you?"),
      MessagesItemModel(
          richardAlves: "Richard Alves",
          time: "10:00 AM",
          heyBroWhereAre: "Hey bro, where are you?"),
      MessagesItemModel(
          richardAlves: "Richard Alves",
          time: "10:00 AM",
          heyBroWhereAre: "Hey bro, where are you?"),
      MessagesItemModel(
          richardAlves: "Richard Alves",
          time: "10:00 AM",
          heyBroWhereAre: "Hey bro, where are you?"),
      MessagesItemModel(
          richardAlves: "Richard Alves",
          time: "10:00 AM",
          heyBroWhereAre: "Hey bro, where are you?")
    ];
  }
}
