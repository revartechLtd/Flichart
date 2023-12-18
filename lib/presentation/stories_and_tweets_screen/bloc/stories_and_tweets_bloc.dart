import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/livelist_item_model.dart';
import '../models/postlist_item_model.dart';
import 'package:flichat/presentation/stories_and_tweets_screen/models/stories_and_tweets_model.dart';
part 'stories_and_tweets_event.dart';
part 'stories_and_tweets_state.dart';

/// A bloc that manages the state of a StoriesAndTweets according to the event that is dispatched to it.
class StoriesAndTweetsBloc
    extends Bloc<StoriesAndTweetsEvent, StoriesAndTweetsState> {
  StoriesAndTweetsBloc(StoriesAndTweetsState initialState)
      : super(initialState) {
    on<StoriesAndTweetsInitialEvent>(_onInitialize);
  }

  List<LivelistItemModel> fillLivelistItemList() {
    return [
      LivelistItemModel(send: ImageConstant.imgSend, newPost: "New Post"),
      LivelistItemModel(newPost: "Jordan"),
      LivelistItemModel(newPost: "Angeline"),
      LivelistItemModel(newPost: "Chrystin"),
      LivelistItemModel(newPost: "Vrindha")
    ];
  }

  List<PostlistItemModel> fillPostlistItemList() {
    return [
      PostlistItemModel(
          albertOConnor: "Albert O’connor",
          duration: "4  hours ago",
          introduceIAmA:
              "Introduce I am a photographer who travels around the world everyday, these are some of my works as a photographer.",
          zipcode: "2200",
          eightHundred: "800"),
      PostlistItemModel(
          albertOConnor: "Albert O’connor",
          duration: "4  hours ago",
          introduceIAmA:
              "Introduce I am a photographer who travels around the world everyday, these are some of my works as a photographer.",
          zipcode: "2200",
          eightHundred: "800")
    ];
  }

  _onInitialize(
    StoriesAndTweetsInitialEvent event,
    Emitter<StoriesAndTweetsState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        storiesAndTweetsModelObj: state.storiesAndTweetsModelObj?.copyWith(
            livelistItemList: fillLivelistItemList(),
            postlistItemList: fillPostlistItemList())));
  }
}
