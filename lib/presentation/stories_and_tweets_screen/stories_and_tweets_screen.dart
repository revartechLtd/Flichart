import '../stories_and_tweets_screen/widgets/livelist_item_widget.dart';
import '../stories_and_tweets_screen/widgets/postlist_item_widget.dart';
import 'bloc/stories_and_tweets_bloc.dart';
import 'models/livelist_item_model.dart';
import 'models/postlist_item_model.dart';
import 'models/stories_and_tweets_model.dart';
import 'package:flichat/core/app_export.dart';
import 'package:flichat/widgets/app_bar/appbar_title_searchview.dart';
import 'package:flichat/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:flichat/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class StoriesAndTweetsScreen extends StatelessWidget {
  const StoriesAndTweetsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<StoriesAndTweetsBloc>(
        create: (context) => StoriesAndTweetsBloc(StoriesAndTweetsState(
            storiesAndTweetsModelObj: StoriesAndTweetsModel()))
          ..add(StoriesAndTweetsInitialEvent()),
        child: StoriesAndTweetsScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 32.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl_stories".tr,
                              style: theme.textTheme.headlineSmall))),
                  SizedBox(height: 19.v),
                  _buildLiveList(context),
                  SizedBox(height: 22.v),
                  _buildPostList(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: BlocSelector<StoriesAndTweetsBloc, StoriesAndTweetsState,
                TextEditingController?>(
            selector: (state) => state.searchController,
            builder: (context, searchController) {
              return AppbarTitleSearchview(
                  margin: EdgeInsets.only(left: 16.h),
                  hintText: "lbl_search".tr,
                  controller: searchController);
            }),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgGroup9086,
              margin: EdgeInsets.fromLTRB(16.h, 5.v, 19.h, 5.v))
        ]);
  }

  /// Section Widget
  Widget _buildLiveList(BuildContext context) {
    return SizedBox(
        height: 89.v,
        child: BlocSelector<StoriesAndTweetsBloc, StoriesAndTweetsState,
                StoriesAndTweetsModel?>(
            selector: (state) => state.storiesAndTweetsModelObj,
            builder: (context, storiesAndTweetsModelObj) {
              return ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 15.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 16.h);
                  },
                  itemCount:
                      storiesAndTweetsModelObj?.livelistItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    LivelistItemModel model =
                        storiesAndTweetsModelObj?.livelistItemList[index] ??
                            LivelistItemModel();
                    return LivelistItemWidget(model);
                  });
            }));
  }

  /// Section Widget
  Widget _buildPostList(BuildContext context) {
    return Expanded(
        child: BlocSelector<StoriesAndTweetsBloc, StoriesAndTweetsState,
                StoriesAndTweetsModel?>(
            selector: (state) => state.storiesAndTweetsModelObj,
            builder: (context, storiesAndTweetsModelObj) {
              return ListView.separated(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0.v),
                        child: SizedBox(
                            width: double.maxFinite,
                            child: Divider(
                                height: 2.v,
                                thickness: 2.v,
                                color: theme.colorScheme.secondaryContainer)));
                  },
                  itemCount:
                      storiesAndTweetsModelObj?.postlistItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    PostlistItemModel model =
                        storiesAndTweetsModelObj?.postlistItemList[index] ??
                            PostlistItemModel();
                    return PostlistItemWidget(model);
                  });
            }));
  }
}
