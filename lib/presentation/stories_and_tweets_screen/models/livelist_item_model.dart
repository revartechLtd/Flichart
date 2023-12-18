import '../../../core/app_export.dart';

/// This class is used in the [livelist_item_widget] screen.
class LivelistItemModel {
  LivelistItemModel({
    this.send,
    this.newPost,
    this.id,
  }) {
    send = send ?? ImageConstant.imgSend;
    newPost = newPost ?? "New Post";
    id = id ?? "";
  }

  String? send;

  String? newPost;

  String? id;
}
