part of '../utils/imports/app_imports.dart';

class Book_Screen extends StatefulWidget {
  const Book_Screen({Key? key}) : super(key: key);
  static const routename = '/Book';

  @override
  State<Book_Screen> createState() => _Book_ScreenState();
}

class _Book_ScreenState extends State<Book_Screen> {
  double rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
            // height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(app_images.blured_image),
                fit: BoxFit.cover,
              ),
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                elevation: 0,
                shadowColor: Colors.transparent,
                // title: Text('How to Flutter'),
                backgroundColor: Colors.transparent,
                leading: Row(
                  children: [
                    BackButton(
                      color: AppColors.nipa_brown,
                    ),
                  ],
                ),
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.bookmark_outlined,
                        color: AppTheme.isDark(context)
                            ? AppColors.nipa_brown
                            : AppColors.bgGreen,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.my_library_books,
                          color: AppTheme.isDark(context)
                              ? AppColors.nipa_brown
                              : AppColors.bgGreen)),
                  IconButton(
                      onPressed: () {},
                      icon: AppSvg.pencil,
                      color: AppTheme.isDark(context)
                          ? AppColors.nipa_brown
                          : AppColors.bgGreen),
                ],
              ),
              body: SingleChildScrollView(
                child: DefaultTextStyle.merge(
                  style: TextStyle(
                      fontSize: AppDime.lg,
                      color: AppColors.bgGrey,
                      fontWeight: FontWeight.bold),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: AppDime.lg),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: AppDime.md,
                        ),
                        Center(
                          child: Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.transparent,
                                    // width: 4.0,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: AppColors.bgBlack, blurRadius: 10)
                                ]),
                            child: Card(
                              margin: EdgeInsets.zero,
                              elevation: 10,
                              child: Image(
                                image: AssetImage('assets/images/coffee8.jpeg'),
                                width: 200,
                                height: 300,
                                // fit: BoxFit.contain,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Have you read it ?'),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.check,
                                  color: AppColors.bgGreen,
                                ))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '$rating',
                              style: TextStyle(fontSize: AppDime.xlg),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RatingBar.builder(
                                updateOnDrag: true,
                                minRating: 1.0,
                                itemBuilder: (context, index) => Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                onRatingUpdate: (rating) => setState(() {
                                      this.rating = rating;
                                    })),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sword of The White Horse',
                              style: TextStyle(fontSize: AppDime.xlg),
                            ),
                            SizedBox(
                              height: AppDime.md,
                            ),
                            Text('IBSARP',
                                style: TextStyle(fontSize: AppDime.lg_1)),
                            SizedBox(
                              height: AppDime.md,
                            ),
                            Text(
                              'Comick Book',
                            ),
                            SizedBox(
                              height: AppDime.md,
                            ),
                            Text(
                              '236 Pages',
                            ),
                            SizedBox(
                              height: AppDime.md,
                            ),
                            Text(
                              '2021/6/23',
                            ),
                            SizedBox(
                              height: AppDime.md,
                            ),
                            Text(
                              'loki fucks everything and like big d',
                            ),
                            SizedBox(
                              height: AppDime.md,
                            ),
                          ],
                        ),
                        Divider(
                          height: AppDime.md,
                          // thickness: AppDime.md,
                          color: AppColors.bgGrey_2,
                        ),
                        Text(
                          'Tags',
                          style: TextStyle(fontSize: AppDime.xlg),
                        ),
                        SizedBox(
                          height: AppDime.md,
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              primary: AppTheme.isDark(context)
                                  ? AppColors.bgWhite
                                  : AppColors.bgBlack,
                              backgroundColor: AppTheme.isDark(context)
                                  ? AppColors.nipa_brown
                                  : AppColors.bgGreen,
                              onSurface: Colors.grey,
                            ),
                            onPressed: () {
                              // dev.log();
                              print('tag button');
                            },
                            child: Text(
                              'All Mighty Fucker 😂',
                              style: TextStyle(fontSize: AppDime.lg_2),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            )));
  }
}
