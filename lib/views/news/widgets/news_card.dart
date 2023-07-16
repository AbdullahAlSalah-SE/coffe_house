part of '../../../utils/imports/app_imports.dart';

class News_Card extends StatelessWidget {
  const News_Card(
      {Key? key,
      required this.title_text,
      required this.image_path,
      required this.url_path})
      : super(key: key);

  final String image_path;
  final String title_text;
  final String url_path;
  // News_Card(this.url_path, this.image_path, this.title_text);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // print('$url_path');
        MaterialPageRoute<Store_Page> route = MaterialPageRoute(
          builder: (context) => Webview_screen(
            url_sarp: url_path,
          ),
        );
        Navigator.pushNamed(context, Webview_screen.routename,
            arguments: News_Card(
              title_text: title_text,
              image_path: image_path,
              url_path: url_path,
            ));
      },
      child: Material(
        elevation: AppDime.md,
        child: Container(
          width: double.infinity,
          height: AppDime.xxxlg,
          child: Card(
            // color: Colors.amber,
            color: AppTheme.isDark(context) ? Colors.black54 : Colors.white,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Material(
                    elevation: AppDime.base,
                    color: AppColors.bgWhite,
                    child: Container(
                      margin: EdgeInsets.all(AppDime.base),
                      color: Colors.black54,
                      child: Image(
                        image: NetworkImage(image_path),
                        width: AppDime.xlg.w,
                        height: AppDime.xxxlg.h,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      title_text,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: AppDime.lg_2),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
