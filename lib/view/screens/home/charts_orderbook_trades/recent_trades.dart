import '../../../../res/import/import.dart';

class RecentTrades extends StatelessWidget {
  RecentTrades({Key? key}) : super(key: key);
  int Index = 0;

  @override
  Widget build(BuildContext context) {
    final config = SizeConfig();
    return Container(
      height: config.sh(350),
      width: MediaQuery.of(context).size.width,
      color: roqquWhite,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 48),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'No Recent Trades',
                style: Theme.of(context).textTheme.headline2,
              ),
              const YMargin(20),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Id pulvinar nullam sit imperdiet pulvinar.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
