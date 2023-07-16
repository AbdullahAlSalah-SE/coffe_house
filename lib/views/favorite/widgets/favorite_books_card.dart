part of '../../../utils/imports/app_imports.dart';

class Fav_books_Card extends StatelessWidget {
  const Fav_books_Card(
      {Key? key, required this.food_title, required this.image_path})
      : super(key: key);
  final String image_path;
  final String food_title;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppTheme.isDark(context) ? Colors.black54 : Colors.white,
      elevation: AppDime.md,
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Image(
                image: NetworkImage(image_path),
                width: AppDime.xxlg_1.w,
                height: AppDime.xxlg_1.h,
              )),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: AppDime.lg),
              child: Text(
                food_title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: InkWell(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: AppDime.md),
                child: Icon(
                  Icons.book,
                  color: AppColors.darkred,
                  size: AppDime.xlg,
                ),
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
