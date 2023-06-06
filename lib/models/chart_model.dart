class ChartModel {
  String? s;
  K? k;

  ChartModel({ this.s, this.k});

  ChartModel.fromJson(Map<String, dynamic> json) {

    s = json['s'];
    k = json['k'] != null ? new K.fromJson(json['k']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['s'] = this.s;
    if (this.k != null) {
      data['k'] = this.k!.toJson();
    }
    return data;
  }
}

class K {
  String? o;
  String? c;
  String? h;
  String? l;
  String? v;
  String? V;

  K(
      {
        this.o,
        this.c,
        this.h,
        this.v,
        this.V,
        this.l,});

  K.fromJson(Map<String, dynamic> json) {
    l = json['l'];
    o = json['o'];
    c = json['c'];
    h = json['h'];
    V = json['V'];
    v = json['v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['L'] = this.l;
    data['o'] = this.o;
    data['c'] = this.c;
    data['h'] = this.h;
    data['l'] = this.l;
    data['v'] = this.v;
    data['V'] = this.V;
    return data;
  }
}
