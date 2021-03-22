import 'package:facebook_app_ui/data/data.dart';
import 'package:facebook_app_ui/models/models.dart';
import 'package:facebook_app_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Stories extends StatelessWidget {
  final User currentUser;
  final List<Story> stories;

  const Stories({Key key, @required this.currentUser, @required this.stories})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color: Colors.white,
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
          scrollDirection: Axis.horizontal,
          itemCount: 1 + stories.length,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: StoryCard(
                    isAddStory: true,
                    currentUser: currentUser,
                  ));
            }
            final Story story = stories[index - 1];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: StoryCard(
                isAddStory: false,
                story: story,
              ),
            );
          }),
    );
  }
}
