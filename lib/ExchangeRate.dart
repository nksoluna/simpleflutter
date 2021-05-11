// To parse this JSON data, do
//
//     final exchangeRate = exchangeRateFromJson(jsonString);

import 'dart:convert';

ExchangeRate exchangeRateFromJson(String str) => ExchangeRate.fromJson(json.decode(str));

String exchangeRateToJson(ExchangeRate data) => json.encode(data.toJson());

class ExchangeRate {
    ExchangeRate({
        this.success,
        this.timestamp,
        this.base,
        this.date,
        this.rates,
    });

    bool success;
    int timestamp;
    String base;
    DateTime date;
    Map<String, double> rates;

    factory ExchangeRate.fromJson(Map<String, dynamic> json) => ExchangeRate(
        success: json["success"] == null ? null : json["success"],
        timestamp: json["timestamp"] == null ? null : json["timestamp"],
        base: json["base"] == null ? null : json["base"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        rates: json["rates"] == null ? null : Map.from(json["rates"]).map((k, v) => MapEntry<String, double>(k, v.toDouble())),
    );

    Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "timestamp": timestamp == null ? null : timestamp,
        "base": base == null ? null : base,
        "date": date == null ? null : "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "rates": rates == null ? null : Map.from(rates).map((k, v) => MapEntry<String, dynamic>(k, v)),
    };
}
