import '../../../../res/import/import.dart';

class OpenOrderHistory extends StatelessWidget {
  const OpenOrderHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final config = SizeConfig();
    return Container(
      height: config.sh(350),
      width: MediaQuery.of(context).size.width,
      color: roqquWhite,
    );
  }
}
