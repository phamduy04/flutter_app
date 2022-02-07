import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/resources/containts.dart';

class CountryModel{
  String? imageCountry;
  String? country;
  CountryModel({required this.imageCountry, required this.country});
}
List<CountryModel> listCountry=[
  CountryModel(imageCountry: africa, country:S.current.Africa),
  CountryModel(imageCountry: australia, country: S.current.Australia),
  CountryModel(imageCountry: maldives, country:S.current.Maldives),
  CountryModel(imageCountry: japan, country:S.current.Japan)
];