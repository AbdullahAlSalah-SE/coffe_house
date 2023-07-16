part of '../../utils/imports/app_imports.dart';

class Order_list_item extends StatefulWidget {
  Order_list_item(
      {super.key,
      required this.Image_path,
      required this.item_name,
      required this.Price});

  final String Image_path;
  final String item_name;
  final double Price;

  @override
  State<Order_list_item> createState() => _Order_list_itemState();
}

class _Order_list_itemState extends State<Order_list_item> {
  @override
  int itemnum = 1;

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 1,
          child: Image(
            image: AssetImage(widget.Image_path),
            width: 150,
            height: 150,
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${widget.item_name}',
                // textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.w300, fontSize: AppDime.lg_1),
              ),
              Text(
                '\$  ${widget.Price}',
                // textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
        // Expanded(
        //   flex: 2,
        //   child: Text(item_name),
        // ),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    if (itemnum > 0) {
                      itemnum--;
                    } else
                      itemnum = 0;
                  });
                  print('remove 1  $itemnum');
                },
                icon: Icon(Icons.remove),
              ),
              Text('$itemnum'),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  setState(() {
                    itemnum++;
                  });
                  print('add 1 $itemnum');
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
