import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movie_app/modles/movie_models.dart';
import 'package:video_player/video_player.dart';

class MovieScreen extends StatelessWidget {
  final Movie movie;
  const MovieScreen({Key? key, required this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          ..._buildBackground(context, movie),
          _buidMovieInformation(context),
          const SizedBox(
            height: 50,
          ),
          _buildAction(context),
        ],
      ),
    );
  }

  Positioned _buildAction(BuildContext context) {
    return Positioned(
      bottom: 50,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(15.0),
              primary: const Color(0xFFfF7272),
              fixedSize: Size(MediaQuery.of(context).size.width * 0.45, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            onPressed: () {},
            child: RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      height: 1.75,
                      color: Colors.white,
                    ),
                children: [
                  TextSpan(
                    text: 'Add to',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          height: 1.75,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const TextSpan(
                    text: 'Watch list',
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(15.0),
              primary: Colors.white,
              fixedSize: Size(MediaQuery.of(context).size.width * 0.45, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => _MoviePlayer(movie: movie),
                ),
              );
            },
            child: RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      height: 1.75,
                      color: Colors.white,
                    ),
                children: [
                  TextSpan(
                    text: 'Start',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          height: 1.75,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  TextSpan(
                    text: 'Watching',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          height: 1.75,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Positioned _buidMovieInformation(BuildContext context) {
    return Positioned(
      bottom: 50,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              movie.name,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              '${movie.year} | ${movie.category} | ${movie.duration.inHours}h ${movie.duration.inMinutes}m',
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
            const SizedBox(
              height: 10,
            ),
            RatingBar.builder(
              initialRating: 3.5,
              maxRating: 1,
              allowHalfRating: true,
              ignoreGestures: true,
              itemCount: 5,
              itemSize: 20,
              unratedColor: Colors.white,
              itemPadding: const EdgeInsets.symmetric(horizontal: 10.0),
              itemBuilder: (context, intdex) {
                return const Icon(
                  Icons.star,
                  color: Colors.amber,
                );
              },
              onRatingUpdate: (rating) {},
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Ông TRÙM Dae-guk (MA DONG-SEOK) điều hành khu phố trong lòng Seoul với khả năng đàm phán tuyệt hảo và một ước mơ mở một Trung Tâm Thẩm Mỹ khổng lồ cùng với Ji-woo (JUNG KYUNG-HO) - một tay bác sĩ thẩm mỹ nổi tiếng nhưng mất giấy phép hành nghề.',
              maxLines: 8,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    height: 1.75,
                    color: Colors.white,
                  ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildBackground(
    context,
    movie,
  ) {
    return [
      Container(
        height: double.infinity,
        color: const Color.fromARGB(255, 5, 5, 98),
      ),
      Image.network(
        movie.imagePath,
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.5,
        fit: BoxFit.cover,
      ),
      const Positioned.fill(
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                Color(0xFF000B49),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.3, 0.5],
            ),
          ),
        ),
      ),
    ];
  }
}

class _MoviePlayer extends StatefulWidget {
  final Movie movie;
  const _MoviePlayer({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MoviePlaer();
  }
}

class _MoviePlaer extends State<_MoviePlayer> {
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;

  @override
  void initState() {
    videoPlayerController = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4')
      ..initialize().then((value) {
        setState(() {});
      });
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      aspectRatio: 16 / 9,
    );
    @override
    void dispose() {
      videoPlayerController.dispose();
      chewieController.dispose();
      super.dispose();
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Chewie(
          controller: chewieController,
        ),
      ),
    );
  }
}
