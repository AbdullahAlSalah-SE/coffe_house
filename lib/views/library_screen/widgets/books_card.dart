part of '../../../utils/imports/app_imports.dart';

class Books_Card extends StatelessWidget {
  const Books_Card(
      {Key? key, required this.image_path, required this.book_title})
      : super(key: key);

  final String image_path;
  final String book_title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Book_Screen.routename);
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: AppDime.md),
        elevation: 0,
        // color: AppTheme.isDark(context) ? Colors.black54 : AppColors.bgWhite,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: AppDime.md),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Expanded(
              flex: 1,
              child: Material(
                elevation: AppDime.md,
                // shadowColor: AppColors.bgWhite,
                // clipBehavior: Clip.hardEdge,
                color: Colors.transparent,
                child: Image(
                  image: AssetImage(image_path),
                  width: AppDime.xxlg_1.w,
                  height: AppDime.xxlg_1.h,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                // color: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: AppDime.md),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      book_title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: AppDime.lg_1),
                    ),
                    Divider(
                        color: AppTheme.isDark(context)
                            ? AppColors.bgWhite
                            : AppColors.bgBlack.withOpacity(0.8)),
                    Text(
                      'Writer : ibsarp',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () async {
                        await Share.share(
                            'https://play.google.com/store/apps/details?id=com.instructivetech.kidskite');
                      },
                      icon: Icon(Icons.share))
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
