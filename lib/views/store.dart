part of '../utils/imports/app_imports.dart';

class Store_Page extends StatefulWidget {
  const Store_Page({Key? key}) : super(key: key);
  static const routename = '/Store';

  @override
  State<Store_Page> createState() => _Store_PageState();
}

int? _sliding = 0;
int? _itemcardsliding = 0;
int drink_item_count = 0;

class _Store_PageState extends State<Store_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: false,
            floating: false,
            delegate: SearchHeader(
              icon: Icons.terrain,
              title: AppLangKey.storepagetitle.tr(),
              search: _Search(),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: true,
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.all(AppDime.md),
                  child: SingleChildScrollView(
                      padding: EdgeInsets.all(AppDime.md),
                      scrollDirection: Axis.horizontal,
                      // physics: NeverScrollableScrollPhysics(),
                      child: CupertinoSlidingSegmentedControl(
                          children: {
                            0: Container(
                              width: 80.0,
                              child: Text(AppLangKey.cappuccino.tr()),
                            ),
                            1: Container(
                              width: 80.0,
                              child: Text(AppLangKey.espresso.tr()),
                            ),
                            2: Container(
                              width: 80.0,
                              child: Text(AppLangKey.latte.tr()),
                            ),
                            3: Container(
                              width: 80.0,
                              child: Text(AppLangKey.flatwhite.tr()),
                            ),
                            4: Container(
                              width: 80.0,
                              child: Text(AppLangKey.cappuccino.tr()),
                            ),
                          },
                          groupValue: _sliding,
                          onValueChanged: (int? newvalue) {
                            setState(() {
                              _sliding = newvalue;
                            });
                          })),
                ),

                CarouselSlider.builder(
                  options: CarouselOptions(
                    viewportFraction: 0.5,
                    pageSnapping: false,
                    enableInfiniteScroll: false,
                    height: 280,
                    padEnds: false,
                  ),
                  itemCount:
                      Applists.list_of_lists[_sliding ?? 0]['list'].length,
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      Container(
                    child: item_card(
                      title: Applists.list_of_lists[_sliding ?? 0]['list']
                              [pageViewIndex]['title'] ??
                          's',
                      sub_title: Applists.list_of_lists[_sliding ?? 0]['list']
                              [pageViewIndex]['sub_title'] ??
                          '',
                      price: Applists.list_of_lists[_sliding ?? 0]['list']
                          [pageViewIndex]['price'],
                      image_path: Applists.list_of_lists[_sliding ?? 0]['list']
                          [pageViewIndex]['image_path'],
                      rating: Applists.list_of_lists[_sliding ?? 0]['list']
                          [pageViewIndex]['rating'],
                    ),

                    //  Text('${Applists.list_of_lists[1]['list'].length}'),
                  ),
                ),

                SizedBox(
                  height: AppDime.lg,
                ),
                // Container(
                //   // width: double.infinity,
                //   child: CustomScrollView(
                //       scrollDirection: Axis.horizontal,
                //       slivers: [
                //         SliverFillRemaining(
                //           child: ListView(children: [
                //             Row(
                //               mainAxisAlignment: MainAxisAlignment.spaceAround,
                //               children: [
                //                 item_card(
                //                   price: 4.20,
                //                   image_path: 'assets/images/coffee1.jpeg',
                //                   rating: 3.7,
                //                 ),
                //                 item_card(
                //                   price: 3.70,
                //                   image_path: 'assets/images/coffee8.jpeg',
                //                   rating: 4.5,
                //                 ),
                //               ],
                //             ),
                //           ]),
                //         ),
                //       ]),
                // ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: AppDime.lg, vertical: AppDime.lg_1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Special for you',
                        style: AppTheme.h6(context),
                      ),
                      SizedBox(
                        height: AppDime.md,
                      ),
                      Subject_Card(
                        subject_Imagepath: 'urlimages',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Arts for you',
                        style: AppTheme.h6(context),
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: AppDime.lg,
                    ),
                    height: MediaQuery.of(context).size.height,
                    child: PinterestGrid())
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildImage(String urlimages, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: AppDime.lg_1),
        child: Subject_Card(
          subject_Imagepath: urlimages,
        ),
      );
}
