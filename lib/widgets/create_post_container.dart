import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_app_ui/models/models.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({Key key, @required this.currentUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(children: [
        Row(
          children: [
            ProfileAvatar(imageUrl: currentUser.imageUrl),
            const SizedBox(
              width: 8.0,
            ),
            Expanded(
                child: TextField(
              decoration:
                  InputDecoration.collapsed(hintText: 'What\'s on your mind'),
            ))
          ],
        ),
        const Divider(
          height: 10.0,
          thickness: 0.5,
        ),
        Container(
          height: 40.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlatButton.icon(
                onPressed: () => print('live'),
                icon: const Icon(Icons.videocam, color: Colors.red),
                label: Text('live'),
              ),
              const VerticalDivider(width: 8.0),
              FlatButton.icon(
                onPressed: () => print('photo'),
                icon: const Icon(Icons.photo_library, color: Colors.green),
                label: Text('live'),
              ),
              const VerticalDivider(width: 8.0),
              FlatButton.icon(
                onPressed: () => print('Room'),
                icon: const Icon(Icons.video_call, color: Colors.purple),
                label: Text('video call'),
              ),
              const VerticalDivider(width: 8.0),
            ],
          ),
        )
      ]),
    );
  }
}
