part of '../utils/imports/app_imports.dart';

class Order_Page extends StatefulWidget {
  const Order_Page({Key? key}) : super(key: key);

  @override
  State<Order_Page> createState() => _Order_PageState();
}

double basket_total = 0.0;

class _Order_PageState extends State<Order_Page> {
  SingingCharacter? _character = SingingCharacter.cash;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListView(scrollDirection: Axis.vertical, shrinkWrap: true, children: [
        Order_list_item(
          Image_path: 'assets/images/ACV_White_Horse.jpg',
          item_name: 'Latte test',
          Price: 3.7,
        ),
      ]),
      Container(
        margin: EdgeInsets.symmetric(horizontal: AppDime.lg),
        padding: EdgeInsets.symmetric(horizontal: AppDime.lg),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.bgGrey, width: AppDime.base),
          borderRadius: BorderRadius.circular(AppDime.md),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.electric_scooter,
                  color: AppColors.bgRed,
                ),
                Column(
                  children: [
                    Text(
                      'Reward ur driver with a tip',
                      style: AppTheme.h5(context),
                    ),
                    Text(
                      'Your rider gets 100% of the tips',
                      style: TextStyle(
                          fontSize: AppDime.lg, color: AppColors.bgGrey),
                    )
                  ],
                )
              ],
            ),
            Row(
              children: [Text('data'), Text('data'), Text('data')],
            )
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pay With',
              style: AppTheme.h4(context),
            ),
            ListTile(
              horizontalTitleGap: 1,
              title: Row(
                children: [
                  Icon(
                    Icons.credit_card,
                    color: AppColors.bgGreen,
                  ),
                  SizedBox(width: 5),
                  const Text(' Credit Card')
                ],
              ),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.creditcard,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            ListTile(
              horizontalTitleGap: 1,
              title: Row(
                children: [
                  Icon(
                    Icons.money,
                    color: AppColors.bgGreen,
                  ),
                  SizedBox(width: 5),
                  const Text('Cash')
                ],
              ),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.cash,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Summary',
              style: AppTheme.h4(context),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Basket Total'),
                Text('JOD $basket_total'),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Delivery fee'),
                Text('JOD 0.5'),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Service fee'),
                Text('JOD 0.7'),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Price : '),
                Text('JOD Total'),
              ],
            ),
          ],
        ),
      ),
      Expanded(
          child: Align(
        alignment: Alignment.bottomCenter,
        child: Card(
          elevation: 10,
          child: Container(
              height: AppDime.xxxlg,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () => print('add items'),
                    child: Text(
                      'Add Items',
                      style: TextStyle(
                          color: AppTheme.isDark(context)
                              ? AppColors.bgWhite
                              : AppColors.bgBlack),
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: (const Size(160, 60)),
                      textStyle: TextStyle(fontSize: 20),
                      primary: Colors.white,
                      side: BorderSide(color: AppColors.nipa_brown, width: 5),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => print('check out'),
                    child: Text('Check Out'),
                    style: ButtonStyle(
                        fixedSize:
                            MaterialStatePropertyAll<Size>(Size(160, 60)),
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(AppColors.bgGreen),
                        textStyle: MaterialStateProperty.all(
                            const TextStyle(fontSize: 20))),
                  ),
                ],
              )),
        ),
      ))
    ]);
  }
}

enum SingingCharacter { creditcard, cash }
