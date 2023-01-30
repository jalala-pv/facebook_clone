import 'package:facebook_clone/widgets/storyCard.dart';
import 'package:flutter/material.dart';

import '../widgets/assets.dart';

class storySection extends StatelessWidget {
  const storySection({super.key});

  @override
  Widget build(BuildContext context) {
        var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height/2.75,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add to story",
            story: dq,
            avatar: dq,
            CreateStoryStatus: true,
          ),
 
          StoryCard(
            labelText: "Prithviraj",
            story: prithvipost,
            avatar: raj,
          ),
          StoryCard(
            labelText: "  Tovino Thomas",
            story: tovipost,
            avatar: tovino,
          ),
                   StoryCard(
            labelText: "Mohanlal",
            story: lalpost,
            avatar: mohanlal,
          ),
        ],
      ),
    );
  }
}
