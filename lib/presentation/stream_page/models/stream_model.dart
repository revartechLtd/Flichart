// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'streamlist_item_model.dart';

/// This class defines the variables used in the [stream_page],
/// and is typically used to hold data that is passed between different parts of the application.
class StreamModel extends Equatable {
  StreamModel({this.streamlistItemList = const []}) {}

  List<StreamlistItemModel> streamlistItemList;

  StreamModel copyWith({List<StreamlistItemModel>? streamlistItemList}) {
    return StreamModel(
      streamlistItemList: streamlistItemList ?? this.streamlistItemList,
    );
  }

  @override
  List<Object?> get props => [streamlistItemList];
}
