import '../../../res/import/import.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              XMargin(15),
              Image.asset('assets/images/Logomark.png'),
              XMargin(10),
              Image.asset('assets/images/Logotype.png'), // Add Spacer widget
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/81.png'),
              XMargin(10),
              Image.asset('assets/images/Line.png'),
              XMargin(10),
              Image.asset('assets/images/menu-alt-1.png'),
              XMargin(15),
            ],
          )
        ],
      ),
      body:HomeScreenWidget(),
    );
  }
}

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final config = SizeConfig();
    return Column(
      children: [
        YMargin(10),
        Container(
          height: config.sh(140),
          width: MediaQusery.of(context).size.width,
          color: roqquWhite,
          child: Column(
            children: [
             Padding(padding: EdgeInsets.all(16),
             child:   Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Image.asset('assets/images/Group 237550.png'),
                 XMargin(10),
                 Text('BTC/USDT',
                   style: Theme.of(context).textTheme.headline2,),
                 XMargin(20),
                 Icon(Icons.keyboard_arrow_down_outlined),
                 XMargin(27),
                 Text('\$20,634',
                   style: Theme.of(context).textTheme.headline3,),
               ],
             ),
             ),
             Padding(padding: EdgeInsets.all(16),
             child:   Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.access_time),
                        XMargin(5),
                        Text('24h change',
                          style: Theme.of(context).textTheme.bodyText1,),
                      ],
                    ),
                    YMargin(8),
                    Text('520.80 +1.25%',
                      style: Theme.of(context).textTheme.headline3,),
                    XMargin(10),

                  ],
                ),
                 Image.asset('assets/images/divider.png'),

                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Row(
                       children: [
                         Icon(Icons.arrow_upward_outlined),
                         XMargin(5),
                         Text('24h high',
                           style: Theme.of(context).textTheme.bodyText1,),
                       ],
                     ),
                     YMargin(8),
                     Text('520.80 +1.25%',
                       style: Theme.of(context).textTheme.headline2,),
                     XMargin(10),

                   ],
                 ),
                 Image.asset('assets/images/divider.png'),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     XMargin(10),
                     Row(
                       children: [
                         Icon(Icons.arrow_downward_outlined),
                         XMargin(5),
                         Text('24h low',
                           style: Theme.of(context).textTheme.bodyText1,),
                       ],
                     ),
                     YMargin(8),
                     Text('520.80 +1.25%',
                       style: Theme.of(context).textTheme.headline2,),
                     XMargin(10),

                   ],
                 ),
               ],
             ),
             ),

            ],
          ),
        ),
        YMargin(10),
        OpenOrderHistory(),
      ],
    );
  }
}
