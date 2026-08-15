import 'package:flutter/material.dart';
import '../models/emission.dart';

class AlbumStreamingPage extends StatelessWidget {
  final Emission emission;

  const AlbumStreamingPage({
    super.key,
    required this.emission,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: emission.tagStream,
                child: Image.network(
                  emission.imageStream,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.grey[400],
                      child: const Icon(
                        Icons.image,
                        size: 80,
                        color: Colors.white,
                      ),
                    );
                  },
                ),
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.favorite_border),
                onPressed: () {},
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.deepPurple,
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    emission.nomStream,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    emission.chaineRadio,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final diffusion = emission.diffusions[index];
                return Column(
                  children: [
                    ListTile(
                      leading: Text(
                        diffusion.titre,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.0,
                        ),
                      ),
                      title: Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.volume_up),
                            onPressed: () {},
                          ),
                          Text('Date: ${diffusion.date}'),
                        ],
                      ),
                    ),
                    const Divider(height: 1.0),
                  ],
                );
              },
              childCount: emission.diffusions.length,
            ),
          ),
        ],
      ),
    );
  }
}