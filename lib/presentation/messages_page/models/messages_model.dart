// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'stories1_item_model.dart';
import 'messages_item_model.dart';

/// This class defines the variables used in the [messages_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MessagesModel extends Equatable {
  MessagesModel({
    this.stories1ItemList = const [],
    this.messagesItemList = const [],
  }) {}

  List<Stories1ItemModel> stories1ItemList;

  List<MessagesItemModel> messagesItemList;

  MessagesModel copyWith({
    List<Stories1ItemModel>? stories1ItemList,
    List<MessagesItemModel>? messagesItemList,
  }) {
    return MessagesModel(
      stories1ItemList: stories1ItemList ?? this.stories1ItemList,
      messagesItemList: messagesItemList ?? this.messagesItemList,
    );
  }

  @override
  List<Object?> get props => [stories1ItemList, messagesItemList];
}
