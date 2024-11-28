import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:mini_feed_app/provider/feed_provider.dart';
import 'package:mini_feed_app/utils/widgets/animated_card.dart';
import 'package:mini_feed_app/widgets/feed_page/feed_card.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final ScrollController scrollController;

  @override
  void initState() {
    context.read<FeedProvider>().getFeeds(cursor: null);
    scrollController = ScrollController();
    scrollController.addListener(loadMoreFeed);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  Future<void> refresh() async {
    context.read<FeedProvider>().refreshFeed();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () => refresh(),
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          controller: scrollController,
          slivers: [
            const SliverAppBar(
              clipBehavior: Clip.antiAlias,
              pinned: true,
              elevation: 0,
              automaticallyImplyLeading: false,
              snap: false,
              floating: false,
              expandedHeight: 100,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.only(left: 10, bottom: 16),
                centerTitle: false,
                title: AutoSizeText("Feed"),
              ),
            ),
            AnimationLimiter(
              child: SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: context.watch<FeedProvider>().allFeedList.length,
                  (context, index) {
                    final feed =
                        context.watch<FeedProvider>().allFeedList[index];
                    return Column(
                      children: [
                        AnimatedCard(
                          index: index,
                          widget: FeedCard(feed: feed),
                        ),
                        if (index ==
                                context
                                        .watch<FeedProvider>()
                                        .allFeedList
                                        .length -
                                    1 &&
                            context
                                .watch<FeedProvider>()
                                .allFeedListHasNextPage!)
                          const Center(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: CircularProgressIndicator(),
                            ),
                          ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void loadMoreFeed() async {
    if (scrollController.position.pixels ==
            scrollController.position.maxScrollExtent &&
        context.read<FeedProvider>().allFeedListHasNextPage!) {
      context
          .read<FeedProvider>()
          .getFeeds(cursor: context.read<FeedProvider>().allFeedListCursor!);
    }
  }
}
