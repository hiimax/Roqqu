import 'package:roqqu/res/import/import.dart';
import 'package:http/http.dart' as http;
import 'package:web_socket_channel/io.dart';

class WebsocketProvider with ChangeNotifier {
  List<Candle> candles = [];
 String? _high;
 String? _low;
 String? _change;
 String? _open;
 String? _volB;
 String? _volU;
 String? value ='1h';

 String? get high => _high;
 String? get low => _low;
 String? get change => _change;
 String? get open => _open;
 String? get volB => _volB;
 String? get volU => _volU;

  Future<List<Candle>> fetchCandles() async {
    final channel = IOWebSocketChannel.connect(
      Uri.parse('wss://stream.binance.com:9443/ws/btcusdt@kline_1h'),
    );
    final completer = Completer<List<Candle>>();
    channel.stream.listen((message) {
      Future<List<Candle>> _fetchCandles() async {
        final uri = Uri.parse(
            "https://api.binance.com/api/v3/klines?symbol=BTCUSDT&interval=$value");
        final res = await http.get(uri);
        ChartModel chartModel = ChartModel.fromJson(jsonDecode(message));
        _high = chartModel.k!.h;
        _low  = chartModel.k!.l;
         _change = chartModel.k!.c;
        _open = chartModel.k!.o;
        _volB = chartModel.k!.v;
        _volU = chartModel.k!.V;

        notifyListeners();
        return (jsonDecode(res.body) as List<dynamic>)
            .map((e) => Candle.fromJson(e))
            .toList()
            .reversed
            .toList();
      }
      _fetchCandles().then((value) {
          candles = value;
       notifyListeners();
      });
    }, onError: (error) {
      completer.completeError(error);
    });

    // Wait for the future to complete and return the result
    return completer.future;
  }

}