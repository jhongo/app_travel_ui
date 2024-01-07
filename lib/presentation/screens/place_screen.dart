import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/helpers/no_glow_scroll_behavior.dart';
import 'package:flutter_travel_ui/infraestructure/models/enums.dart';
import 'package:flutter_travel_ui/infraestructure/models/place_datasource.dart';
import 'package:flutter_travel_ui/presentation/screens/widgets/card_place.dart';
import 'package:flutter_travel_ui/presentation/screens/widgets/header_story_screen.dart';
import 'package:flutter_travel_ui/presentation/screens/widgets/tag_filtered.dart';

class PlaceScreen extends StatefulWidget {
  const PlaceScreen({super.key});

  @override
  State<PlaceScreen> createState() => _PlaceScreenState();
}

class _PlaceScreenState extends State<PlaceScreen> {

    Tag _selectedTag = Tag.popular;

  void selectTag(Tag tag) {
    setState(() {
      _selectedTag = tag;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(133, 237, 223, 223),
      body: SafeArea(
        child: Column(
          children: [
            HeaderStoryScreen(),
            SizedBox(
            height: 60,
            child: ScrollConfiguration(
              behavior: NoGlowScrollBehavior(), 
              child: ListView.separated(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder:(context, index) => TagFiltered(
                  text: Tag.values[index].capitalizeName(), 
                  selected: Tag.values[index] == _selectedTag, 
                  onSelected: ()=> selectTag(Tag.values[index]) ), 
                separatorBuilder: (context, i) => const SizedBox(width: 10),
                itemCount: Tag.values.length,)
                )),
            Expanded(
              child: SizedBox(
                height:size.height,
                width: size.width,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: filteredPlaces[_selectedTag]!.length,
                  itemBuilder: (context, index) {
                    return CardPlace(
                      place: filteredPlaces[_selectedTag]![index],
                    );
                  },
                  
                  )
              ))
            
          ],
        ),
      )
    );
  }
}