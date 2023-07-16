part of '../../../utils/imports/app_imports.dart';

class item_card extends StatelessWidget {
  const item_card(
      {Key? key,
      required this.price,
      required this.sub_title,
      required this.title,
      required this.image_path,
      required this.rating})
      : super(key: key);

  final double price;
  final String image_path;
  final double rating;
  final String sub_title;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      overlayColor: MaterialStateProperty.all(
        Colors.transparent,
      ),
      onTap: () {
        MaterialPageRoute<DetailPage> route = MaterialPageRoute(
          builder: (context) => DetailPage(),
        );
        Navigator.pushNamed(context, DetailPage.routename);
      },
      child: Container(
          padding: EdgeInsets.all(AppDime.md),
          width: 180,
          // height: 260,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(18), top: Radius.circular(18)),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  AppTheme.isDark(context)
                      ? AppColors.nipa_brown
                      : AppColors.bgGrey,
                  AppTheme.isDark(context)
                      ? AppColors.bgBlack
                      : AppColors.bgGreen,
                ],
              )),
          // color: AppColors.bgGreen,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container(
                //   // color: Colors.red,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.all(Radius.circular(18)),
                //   ),
                //   clipBehavior: Clip.hardEdge,
                //   child:
                Center(
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
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
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(image_path),
                            // width: 150,
                            // height: 150,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      Container(
                        height: 20.0,
                        width: 55.0,
                        decoration: BoxDecoration(
                          color: Color(0xff231715),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(15.0),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.star,
                              size: 12,
                              color: Color(0xffd17842),
                            ),
                            Text(
                              "$rating",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: AppDime.md,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        '$title',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Text(
                        '$sub_title',
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          '\$',
                          style: TextStyle(color: AppColors.nipa_brown),
                        ),
                        Text('$price')
                      ],
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              AppColors.nipa_brown)),
                      onPressed: () {},
                      child: const Icon(
                        Icons.add,
                      ),
                    ),
                  ],
                )
              ])),
    );
  }
}
