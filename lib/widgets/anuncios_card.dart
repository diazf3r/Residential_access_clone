import 'package:flutter/material.dart';

class AnuncioCard extends StatelessWidget {
  const AnuncioCard({
    super.key,
    required this.title,
    required this.description,
    required this.imagen,
  });

  final String title;
  final String description;
  final String imagen;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  icon: const Icon(Icons.notification_important_sharp),
                  title: Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.amberAccent[400],
                      fontWeight: FontWeight.w400,
                      fontSize: 23,
                    ),
                  ),
                  content: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          image: NetworkImage(imagen),
                          fit: BoxFit.cover,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 130,
                          child: SingleChildScrollView(
                            child: Text(
                              description,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.blueGrey[400],
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                        const Image(
                            height: 80,
                            width: 100,
                            fit: BoxFit.fitHeight,
                            image:
                                AssetImage('assets/images/logo_sistemas.png'))
                      ],
                    ),
                  ),
                ));
      },
      child: Card(
        elevation: 2,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Colors.amberAccent[400],
                    fontWeight: FontWeight.w400,
                    fontSize: 23),
              ),
              const SizedBox(height: 8),
              Text(
                maxLines: 3,
                description,
                style: TextStyle(
                    color: Colors.blueGrey[400], fontWeight: FontWeight.w300),
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                fit: StackFit.passthrough,
                children: [
                  Center(
                    child: Image(
                      fit: BoxFit.contain,
                      image: NetworkImage(imagen),
                      width: 120,
                      height: 150,
                    ),
                  ),
                  Positioned(
                    bottom: -8,
                    child: Card(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15))),
                      color: Colors.teal[50],
                      shadowColor: Colors.transparent,
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 110),
                        child: Text(
                          'VER MÁS',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
