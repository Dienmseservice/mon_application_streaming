import '../models/diffusion.dart';
import '../models/emission.dart';

class EmissionController {
  List<Emission> _emissions = [];

  List<Emission> get emissions => _emissions;

  void loadEmissions() {
    _emissions = [
      Emission(
        id: '1',
        tagStream: 'DocuStream',
        nomStream: 'Documentaires',
        chaineRadio: 'Radio 1',
        imageStream: 'https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?w=400',
        diffusions: [
          Diffusion(titre: 'Diffusion 2', date: '2023-9-26', duree: '45 min'),
          Diffusion(titre: 'Diffusion 5', date: '2023-6-04', duree: '50 min'),
          Diffusion(titre: 'Diffusion 3', date: '2023-2-02', duree: '30 min'),
          Diffusion(titre: 'Diffusion 4', date: '2023-1-22', duree: '40 min'),
          Diffusion(titre: 'Diffusion 1', date: '2023-1-22', duree: '60 min'),
        ],
      ),
      Emission(
        id: '2',
        tagStream: 'TrendMode',
        nomStream: 'Tendance & Mode',
        chaineRadio: 'Radio 2',
        imageStream: 'https://images.unsplash.com/photo-1490481651871-ab68de25d43d?w=400',
        diffusions: [
          Diffusion(titre: 'Diffusion 1', date: '2023-8-12', duree: '25 min'),
          Diffusion(titre: 'Diffusion 2', date: '2023-7-19', duree: '35 min'),
        ],
      ),
      Emission(
        id: '3',
        tagStream: 'HistoiresC',
        nomStream: 'Histoires Criminelles',
        chaineRadio: 'Radio 3',
        imageStream: 'https://images.unsplash.com/photo-1589829545856-d10d557cf95f?w=400',
        diffusions: [
          Diffusion(titre: 'Diffusion 1', date: '2023-5-10', duree: '55 min'),
          Diffusion(titre: 'Diffusion 2', date: '2023-4-15', duree: '40 min'),
        ],
      ),
      Emission(
        id: '4',
        tagStream: 'MatchFoot',
        nomStream: 'Match de Foot',
        chaineRadio: 'Radio 1',
        imageStream: 'https://images.unsplash.com/photo-1574629810360-7efbbe195018?w=400',
        diffusions: [
          Diffusion(titre: 'Diffusion 4', date: '2023-8-09', duree: '90 min'),
          Diffusion(titre: 'Diffusion 1', date: '2023-9-29', duree: '90 min'),
          Diffusion(titre: 'Diffusion 5', date: '2023-4-28', duree: '90 min'),
          Diffusion(titre: 'Diffusion 3', date: '2023-8-17', duree: '90 min'),
          Diffusion(titre: 'Diffusion 2', date: '2023-7-05', duree: '90 min'),
        ],
      ),
      Emission(
        id: '5',
        tagStream: 'StreamingMatin',
        nomStream: 'Streaming Matin',
        chaineRadio: 'Radio 2',
        imageStream: 'https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd?w=400',
        diffusions: [
          Diffusion(titre: 'Diffusion 1', date: '2023-3-11', duree: '20 min'),
        ],
      ),
      Emission(
        id: '6',
        tagStream: 'QueDesNews',
        nomStream: 'Que des news',
        chaineRadio: 'Radio 4',
        imageStream: 'https://images.unsplash.com/photo-1504711434969-e33886168f5c?w=400',
        diffusions: [
          Diffusion(titre: 'Diffusion 3', date: '2023-8-28', duree: '15 min'),
          Diffusion(titre: 'Diffusion 4', date: '2023-1-31', duree: '15 min'),
          Diffusion(titre: 'Diffusion 5', date: '2023-3-03', duree: '15 min'),
          Diffusion(titre: 'Diffusion 1', date: '2023-3-25', duree: '15 min'),
          Diffusion(titre: 'Diffusion 2', date: '2023-4-22', duree: '15 min'),
        ],
      ),
    ];
  }

  Emission selectEmission(Emission emission) {
    return emission;
  }
}