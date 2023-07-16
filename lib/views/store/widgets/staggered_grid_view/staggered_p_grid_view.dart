part of '../../../../utils/imports/app_imports.dart';

class PinterestGrid extends StatelessWidget {
  const PinterestGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      // crossAxisCount: 4,
      scrollDirection: Axis.vertical,
      gridDelegate:
          SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      // itemCount: imageList.length,
      itemCount: 20,
      itemBuilder: (context, index) {
        return InkWell(
          onLongPress: () {},
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppDime.lg),
            // child: ImageCard(
            //   imageData: imageList[index],
            // ),
            // child: Image.network("https://source.unsplash.com/random?sig=$index"),

            child: Image.network(
                "https://source.unsplash.com/random/?coffee&$index"),
          ),
        );
      },
    );
  }
}
