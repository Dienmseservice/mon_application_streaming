import 'diffusion.dart';

class Emission {
  final String id;
  final String tagStream;
  final String nomStream;
  final String chaineRadio;
  final String imageStream;
  final List<Diffusion> diffusions;

  Emission({
    required this.id,
    required this.tagStream,
    required this.nomStream,
    required this.chaineRadio,
    required this.imageStream,
    required this.diffusions,
  });
}