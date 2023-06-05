import '../../../../res/import/import.dart';

class OpenOrderHistory extends StatelessWidget {
   OpenOrderHistory({Key? key}) : super(key: key);
   int Index =0;

  @override
  Widget build(BuildContext context) {
    final config = SizeConfig();
    return  StatefulBuilder(builder: (context, setState) {
      return Container(
        height: config.sh(350),
        width: MediaQuery.of(context).size.width,
        color: roqquWhite,

        child: Column(
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal:16,vertical: 16 ),
            child: Container(
              height: config.sh(40),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: cardStrokeColor,
                  borderRadius: BorderRadius.circular(10),),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        Index =0;
                      });
                    },
                    child:  ToggleWidget(
                      title: 'Open Orders',
                      color: Index !=0 ? Transparent : roqquWhite ,
                      shadow: Index !=0 ? Transparent : roqquGrey.withOpacity(0.5) ,
                      width: MediaQuery.of(context).size.width / 3.3,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        Index =1;
                      });
                    },
                    child:  ToggleWidget(
                      title: 'Positions',
                      color: Index !=1 ? Transparent : roqquWhite ,
                      shadow: Index !=1 ?Transparent : roqquGrey.withOpacity(0.5) ,
                      width: MediaQuery.of(context).size.width / 3.3,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        Index =2;
                      });
                    },
                    child:  ToggleWidget(
                      title: 'Order History',
                      color: Index !=2 ? Transparent : roqquWhite ,
                      shadow: Index !=2 ? Transparent : roqquGrey.withOpacity(0.5) ,
                      width: MediaQuery.of(context).size.width / 3.3,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),


                ],
              ),
            ) ,),

            Flexible(
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 48),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        Index ==0 ? 'No Open Orders' :  Index ==1 ? 'No Positions' :  'No Order History',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      YMargin(20),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Id pulvinar nullam sit imperdiet pulvinar.',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                )),
          ],
        ),
      );
    }
    );

  }
}

ToggleWidget(
    {required String title, required double width, required TextStyle? style , required Color color, required Color shadow}) {
  final config = SizeConfig();
  return Container(
      height: config.sh(34),
      width: width,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: shadow,
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3), // changes the position of the shadow
            ),
          ]),
      child: Center(
        child: Text(
          title,
          style: style,
        ),
      ));
}
