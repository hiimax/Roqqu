import '../../../../res/import/import.dart';
import 'package:intl/intl.dart';

class BuySellBottomSheet extends StatelessWidget {
   BuySellBottomSheet({Key? key}) : super(key: key);
   int Index = 0;
  @override
  Widget build(BuildContext context) {
    final config = SizeConfig();
    return Container(
      height: config.sh(700),
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
          children : [
            Container(
              height: config.sh(40),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: cardStrokeColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      // setState(() {
                      //   Index = 0;
                      // });
                    },
                    child: ToggleWidget(
                      title: 'Buy',
                      color: Index != 0 ? Transparent : roqquWhite,
                      shadow: Index != 0
                          ? Transparent
                          : roqquGrey.withOpacity(0.5),
                      width: MediaQuery.of(context).size.width / 2.2,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // setState(() {
                      //   Index = 1;
                      // });
                    },
                    child: ToggleWidget(
                      title: 'Sell',
                      color: Index != 1 ? Transparent : roqquWhite,
                      shadow: Index != 1
                          ? Transparent
                          : roqquGrey.withOpacity(0.5),
                      width: MediaQuery.of(context).size.width / 2.2,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                ],
              ),
            ),
            YMargin(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {

                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: greyColor ,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Limit',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () {
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Transparent,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Market',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () {

                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Transparent,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Stop-Limit',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                    )),
              ],
            ),
            YMargin(20),
            Container(
                height: config.sh(40),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: roqquSecondaryTextColor,
                    ),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                    Row(
                      children:[
                        Text(
                          'Limit price',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        XMargin(10),
                        Image.asset('assets/images/u_info-circle.png'),
                      ]
                    ),
                      SizedBox(
                        width: config.sw(100),
                        child: CustomTextFormField(
                            hintText:'0.00 USD '
                        ),
                      )
                    ]
                ),
                )
            ),
            YMargin(20),
            Container(
                height: config.sh(40),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: roqquSecondaryTextColor,
                    ),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Row(
                            children:[
                              Text(
                                'Amount',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              XMargin(10),
                              Image.asset('assets/images/u_info-circle.png'),
                            ]
                        ),
                        SizedBox(
                          width: config.sw(100),
                          child: CustomTextFormField(
                              hintText:'0.00 USD '
                          ),
                        )
                      ]
                  ),
                )
            ),
            YMargin(20),
            Container(
                height: config.sh(40),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: roqquSecondaryTextColor,
                    ),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Row(
                            children:[
                              Text(
                                'Type',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              XMargin(10),
                              Image.asset('assets/images/u_info-circle.png'),
                            ]
                        ),
                        Row(
                            children:[
                              Text(
                                'Good till cancelled',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              XMargin(10),
                              Icon(Icons.keyboard_arrow_down_outlined,color: roqquSecondaryTextColor,),
                            ]
                        ),
                      ]
                  ),
                )
            ),

          ]
      ),),
    );
  }
}
