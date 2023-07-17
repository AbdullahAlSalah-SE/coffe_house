part of '../../../../../utils/imports/app_imports.dart';

class Profile_drawer extends StatelessWidget {
  const Profile_drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: AppColors.nipa_brown,
        child: Column(children: [
          Row(children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: AppDime.md.w),
                width: AppDime.xxlg_8.w,
                height: AppDime.xxlg_8.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        // image: NetworkImage(app_images.onlineimage)))),
                        image: AssetImage(app_images.nidd)))),
            Column(
              children: [
                Text('Coffee House'),
                AppDime.md.verticalSpace,
                Text(
                  'by Abdullah Alsalah',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            )
          ])
        ]),
      ),
    );
  }
}
