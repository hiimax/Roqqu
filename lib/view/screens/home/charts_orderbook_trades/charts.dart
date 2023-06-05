import '../../../../res/import/import.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_candlesticks/flutter_candlesticks.dart';

class Charts extends StatefulWidget {
  const Charts({Key? key}) : super(key: key);

  @override
  State<Charts> createState() => _ChartsState();
}

class _ChartsState extends State<Charts> {
  List<Candle> candles = [];
  @override
  void initState() {
    fetchCandles().then((value) {
      setState(() {
        candles = value;
      });
    });
    super.initState();
  }

  Future<List<Candle>> fetchCandles() async {
    final uri = Uri.parse(
        "https://api.binance.com/api/v3/klines?symbol=BTCUSDT&interval=1h");
    final res = await http.get(uri);
    return (jsonDecode(res.body) as List<dynamic>)
        .map((e) => Candle.fromJson(e))
        .toList()
        .reversed
        .toList();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child:  new OHLCVGraph(
          data: candles,
          enableGridLines: false,
          volumeProp: 0.2
      ),
    );
  }
}