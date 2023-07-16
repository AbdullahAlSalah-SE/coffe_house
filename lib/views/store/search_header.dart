part of '../../utils/imports/app_imports.dart';

class SearchHeader extends SliverPersistentHeaderDelegate {
  final double minTopBarHeight = 50;
  final double maxTopBarHeight = 200;
  final String title;
  final IconData icon;
  final Widget search;

  SearchHeader({
    required this.title,
    required this.icon,
    required this.search,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    var shrinkFactor = min(1, shrinkOffset / (maxExtent - minExtent));

    var topBar = Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        alignment: Alignment.center,
        height:
            max(maxTopBarHeight * (1 - shrinkFactor * 1.45), minTopBarHeight),
        width: 100,
        decoration: BoxDecoration(
            // border: Border.all(width: 10, color: AppColors.bgWhite),
            color: AppColors.nipa_brown.withOpacity(0.8),
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(app_images.Coffee_black_wall)),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36),
            )),
        child: Container(
          margin: const EdgeInsets.fromLTRB(10, 0, 10, 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(title,
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: AppTheme.isDark(context)
                          ? AppColors.bgWhite
                          : AppColors.bgBlack,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                width: 20,
              ),
              Icon(
                icon,
                size: 40,
                color: AppTheme.isDark(context)
                    ? AppColors.bgBlack
                    : AppColors.bgWhite,
              )
            ],
          ),
        ),
      ),
    );
    return Container(
      height: max(maxExtent - shrinkOffset, minExtent),
      child: Stack(
        fit: StackFit.loose,
        children: [
          if (shrinkFactor <= 0.5) topBar,
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 10,
              ),
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(AppDime.lg),
                child: search,
                width: MediaQuery.of(context).size.width.w,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppTheme.isDark(context)
                        ? AppColors.bgGrey_2
                        : AppColors.bgWhite,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 10,
                        color: AppColors.nipa_brown.withOpacity(0.23),
                      )
                    ]),
              ),
            ),
          ),
          if (shrinkFactor > 0.5) topBar,
        ],
      ),
    );
  }

  @override
  double get maxExtent => 230;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
