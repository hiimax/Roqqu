import '../../../../res/import/import.dart';
import 'package:http/http.dart' as http;

class ChartsOrderbookTrades extends StatelessWidget {
  ChartsOrderbookTrades({Key? key}) : super(key: key);
  int Index =0;

  @override
  Widget build(BuildContext context) {
    final config = SizeConfig();
    return  StatefulBuilder(builder: (context, setState) {
      return Container(
        height: config.sh(591),
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
                        title: 'Charts',
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
                        title: 'Orderbook',
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
                        title: 'Recent trades',
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
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),

                  child: Charts(),
                )),
          ],
        ),
      );
    }
    );

  }
}


