import 'package:flutter/material.dart';

class ListConsultas extends StatelessWidget {
  const ListConsultas({
    super.key,
    required this.title,
    required this.description,
  });
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Title(
        color: const Color(0xFF42A5F5),
        child: Text(title),
      ),
      subtitle: Text(
        description,
        maxLines: 3,
      ),
      trailing: IconButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    actions: [
                      ConversationCard(
                        title: title,
                        description: description,
                        backgroundColor: Colors.amberAccent[100],
                      ),
                      ConversationCard(
                        title: 'RESPUESTA',
                        description: 'ESTA ES UNA RESPUESTA',
                        titleAlignment: Alignment.centerRight,
                        descriptionAlignment: Alignment.centerRight,
                        backgroundColor: Colors.orange[300],
                      )
                    ],
                  );
                });
          },
          icon: const Icon(Icons.arrow_forward)),
    );
  }
}
