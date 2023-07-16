part of '../../../utils/imports/app_imports.dart';

class Subject_Card extends StatefulWidget {
  const Subject_Card({Key? key, required this.subject_Imagepath})
      : super(key: key);
  final String subject_Imagepath;

  @override
  State<Subject_Card> createState() => _Subject_CardState();
}

int activeIndex = 0;

class _Subject_CardState extends State<Subject_Card> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment:
          AppLang.isAr(context) ? Alignment.bottomLeft : Alignment.bottomRight,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppDime.lg),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  AppTheme.isDark(context)
                      ? AppColors.nipa_brown
                      : AppColors.bgGreen,
                  AppTheme.isDark(context)
                      ? AppColors.bgBlack
                      : AppColors.bgGrey
                ]),
          ),
          child: CarouselSlider.builder(
              itemCount: app_images.subject_images.length,
              options: CarouselOptions(
                viewportFraction: 1,
                // height: 100,
                autoPlay: true,
                // aspectRatio: 1 / 1,
                clipBehavior: Clip.none,
                padEnds: false,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) =>
                    setState(() => activeIndex = index),
              ),
              itemBuilder: (context, index, realIndex) {
                final urlimages = app_images.subject_images[index];
                return buildImage(urlimages, index);
              }),
          // Row(
          //   // mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Container(
          //       margin: EdgeInsets.all(AppDime.lg),
          //       height: 150,
          //       width: 150,
          //       decoration: BoxDecoration(
          //         boxShadow: [
          //           BoxShadow(
          //             blurRadius: 2.0,
          //             spreadRadius: 1.0,
          //             color: Color(0xff30221f),
          //           ),
          //         ],
          //         borderRadius: BorderRadius.circular(AppDime.md),
          //         image: DecorationImage(
          //             fit: BoxFit.cover, image: NetworkImage(subject_Imagepath)),
          //       ),
          //     ),
          //     SizedBox(
          //       width: 200,
          //       child: Text(
          //         '5 Coffee Beans You Must Try!',
          //         maxLines: 2,
          //         style: AppTheme.h5(context),
          //       ),
          //     ),
          //   ],
          // ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget buildImage(String urlimages, int index) => Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.all(AppDime.lg),
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2.0,
                    spreadRadius: 1.0,
                    color: Color(0xff30221f),
                  ),
                ],
                borderRadius: BorderRadius.circular(AppDime.md),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(urlimages)),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  child: Text(
                    '5 Coffee Beans You Must Try!',
                    // maxLines: 2,
                    style: TextStyle(fontSize: AppDime.lg_2),
                  ),
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: AppDime.md),
                    height: 50,
                    // width: 180,
                    child: buildIndicator()),
              ],
            ),
          ],
        ),
      );
}

Widget buildIndicator() => AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: app_images.subject_images.length,
      effect: SlideEffect(
        dotWidth: 10,
        dotHeight: 10,
        dotColor: AppColors.bgDark,
        activeDotColor: AppColors.nipa_brown,
      ),
    );
