// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'livelist_item_model.dart';
import 'postlist_item_model.dart';

/// This class defines the variables used in the [stories_and_tweets_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class StoriesAndTweetsModel extends Equatable {
  StoriesAndTweetsModel({
    this.livelistItemList = const [],
    this.postlistItemList = const [],
  }) {}

  List<LivelistItemModel> livelistItemList;

  List<PostlistItemModel> postlistItemList;

  StoriesAndTweetsModel copyWith({
    List<LivelistItemModel>? livelistItemList,
    List<PostlistItemModel>? postlistItemList,
  }) {
    return StoriesAndTweetsModel(
      livelistItemList: livelistItemList ?? this.livelistItemList,
      postlistItemList: postlistItemList ?? this.postlistItemList,
    );
  }

  @override
  List<Object?> get props => [livelistItemList, postlistItemList];
}
