import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_app_ui/config/palette.dart';
import 'package:facebook_app_ui/models/models.dart';
import 'package:facebook_app_ui/widgets/profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StoryCard extends StatelessWidget {
  final bool isAddStory;
  final User currentUser;
  final Story story;

  const StoryCard(
      {Key key, this.isAddStory = false, this.currentUser, this.story})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(4.0),
          child: CachedNetworkImage(
            imageUrl: isAddStory ? currentUser.imageUrl : story.imageUrl,
            height: double.infinity,
            width: 110.0,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: double.infinity,
          width: 110.0,
          decoration: BoxDecoration(
            gradient: Palette.storyGradient,
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        Positioned(top: 8.0, left: 8.0,
            child: isAddStory ? Container(
                height: 40.0, width: 40.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                shape:BoxShape.circle,
                ),
              child: IconButton(
                  padding: EdgeInsets.all(0.0),
                icon: const Icon(Icons.add),
                iconSize: 30.0,
                color: Palette.facebookBlue,
                onPressed: () => print('Add to story')
              ),
            ) :ProfileAvatar(
                imageUrl: story.user.imageUrl,
                hasBorder:true),

        ),
        Positioned(bottom: 8.0, left: 8.0,right: 8.0,
        child: Text(isAddStory ? 'Add to Story' : story.user.name,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        )
      ],
    );
  }
}
