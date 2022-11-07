
// ignore_for_file: unnecessary_this, unnecessary_new

class modelpage {
    int? code;
    String? message;
    List<Data>? data;
    dynamic? response;

    modelpage({this.code, this.message, this.data, this.response});

    modelpage.fromJson(Map<String, dynamic> json) {
        this.code = json["code"];
        this.message = json["message"];
        this.data = json["data"]==null ? null : (json["data"] as List).map((e)=>Data.fromJson(e)).toList();
        this.response = json["response"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data["code"] = this.code;
        data["message"] = this.message;
        if(this.data != null)
            data["data"] = this.data?.map((e)=>e.toJson()).toList();
        data["response"] = this.response;
        return data;
    }
}

class Data {
    String? coCode;
    String? dispTime;
    String? exchangeref;
    String? price;
    String? volume;

    Data({this.coCode, this.dispTime, this.exchangeref, this.price, this.volume});

    Data.fromJson(Map<String, dynamic> json) {
        this.coCode = json["co_code"];
        this.dispTime = json["disp_time"];
        this.exchangeref = json["exchangeref"];
        this.price = json["price"];
        this.volume = json["volume"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data["co_code"] = this.coCode;
        data["disp_time"] = this.dispTime;
        data["exchangeref"] = this.exchangeref;
        data["price"] = this.price;
        data["volume"] = this.volume;
        return data;
    }
}