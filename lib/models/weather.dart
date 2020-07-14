import 'dart:conver';

Wheater wheaterFromJson(String str) => Weather.fromJson(
      json.decode(str),
    );

String wheatherToJson(Wheather data) => json.encode(
      data.toJson(),
    );

class Wheather {
  Wheather(){
    this.id,
    this.weatherStateName,
    this.weatherStateAbbr,
    this.windDirectionCompass,
    this.created,
    this.applicableDate,
    this.minTemp,
    this.maxTemp,
    this.theTemp,
    this.windSpeed,
    this.windDirection,
    this.airPressure,
    this.humidity,
    this.visibility,
    this.predictability
  }
}