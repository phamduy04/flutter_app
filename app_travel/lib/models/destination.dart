import 'package:app_travel/generated/l10n.dart';
import 'package:app_travel/resources/containts.dart';

class Destination{
   String? imageDestinations;
   String? description;
   Destination({required this.imageDestinations, required this.description});
}
List<Destination> listDescription=[
   Destination(imageDestinations: destination1, description:  S.current.destination1),
   Destination(imageDestinations: destination2, description: S.current.destination2),
   Destination(imageDestinations: destination3, description: S.current.destination3),
    Destination(imageDestinations: destination4, description: S.current.destination4)
];