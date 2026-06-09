import 'package:flutter/cupertino.dart';
import 'package:movie_mania/src/feat/home/domain/entities/movie.dart';

class MovieDetailsScreen extends StatelessWidget {
  final Movie movie;
  const MovieDetailsScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Stack(
        children: [
          CustomScrollView(
            physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            slivers: [
              CupertinoSliverNavigationBar(
                largeTitle: Text(movie.title ?? 'Movie Details', style: TextStyle(fontSize: 20),),
                backgroundColor: CupertinoColors.systemBackground.withValues(alpha: 0.7),
                border: null,
                stretch: true,
              ),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Poster and Basic Info
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Poster Image with shadow
                          Container(
                            width: 120,
                            height: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: CupertinoColors.systemGrey.withValues(alpha: 0.3),
                                  blurRadius: 10,
                                  offset: const Offset(0, 5),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: movie.poster != null
                                  ? Image.network(movie.poster!, fit: BoxFit.cover)
                                  : const Icon(CupertinoIcons.film, size: 50),
                            ),
                          ),
                          const SizedBox(width: 16),
                          // Meta Information
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  movie.genre ?? 'N/A',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: CupertinoColors.systemBlue,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                _buildInfoRow(CupertinoIcons.time, movie.runtime ?? 'N/A'),
                                const SizedBox(height: 4),
                                _buildInfoRow(CupertinoIcons.calendar, movie.year ?? 'N/A'),
                                const SizedBox(height: 4),
                                _buildInfoRow(CupertinoIcons.star_fill, '${movie.imdbRating ?? '0.0'}/10', color: CupertinoColors.systemYellow),
                                const SizedBox(height: 12),
                                // Age Rating Tag
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: CupertinoColors.systemGrey),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    movie.rated ?? 'NR',
                                    style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Synopsis Section
                    _buildSectionHeader('Synopsis'),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Text(
                        movie.plot ?? 'No description available.',
                        style: const TextStyle(fontSize: 16, height: 1.4),
                      ),
                    ),

                    // Cast Section
                    _buildSectionHeader('Cast'),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Text(
                        movie.actors ?? 'N/A',
                        style: const TextStyle(fontSize: 15, color: CupertinoColors.secondaryLabel),
                      ),
                    ),

                    // Additional Info
                    _buildSectionHeader('More Info'),
                    _buildListTile('Director', movie.director ?? 'N/A'),
                    _buildListTile('Writer', movie.writer ?? 'N/A'),
                    _buildListTile('Language', movie.language ?? 'N/A'),
                    _buildListTile('Awards', movie.awards ?? 'N/A'),

                    const SizedBox(height: 120), // Space for bottom button
                  ],
                ),
              ),
            ],
          ),
          // Bottom Action Button
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.fromLTRB(24, 12, 24, 32),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    CupertinoColors.systemBackground.withValues(alpha: 0.0),
                    CupertinoColors.systemBackground.withValues(alpha: 0.9),
                    CupertinoColors.systemBackground,
                  ],
                ),
              ),
              child: CupertinoButton.filled(
                borderRadius: BorderRadius.circular(16),
                onPressed: () {},
                child: const Text('Watch Now', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
      child: Text(
        title,
        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String text, {Color color = CupertinoColors.systemGrey}) {
    return Row(
      children: [
        Icon(icon, size: 16, color: color),
        const SizedBox(width: 6),
        Text(text, style: const TextStyle(fontSize: 14, color: CupertinoColors.secondaryLabel)),
      ],
    );
  }

  Widget _buildListTile(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.w600, color: CupertinoColors.label),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(color: CupertinoColors.secondaryLabel),
            ),
          ),
        ],
      ),
    );
  }
}
