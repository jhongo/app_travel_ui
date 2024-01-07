import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/infraestructure/models/histories_datasource.dart';

class HeaderStoryScreen extends StatelessWidget {
  const HeaderStoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child:  Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal:20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              ProfileImage(),
              SizedBox(width: 10.0,),
              TitleHeader(),
              Spacer(),
              IconNotification()
                  ],
                ),
          ),
          const SizedBox(
          height: 10.0,),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(histories.length, (index){
            final historie = histories[index];
            return CardHistory(
              imageHistory: historie.imageProfile,
              imageProfile: historie.imageHistory,
              name: historie.name,
            );
          }),
        ),
      )
        ],
      ),
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: SizedBox(
        width: 50.0,
        height: 50.0,
        child: DecoratedBox(
          decoration: BoxDecoration(
            
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: const FadeInImage(
          placeholder: AssetImage('assets/gifs/loading.gif'), 
          image: NetworkImage('https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
          fit: BoxFit.cover,
          ),
          
          )
      ),
    );
  }
}

class TitleHeader extends StatelessWidget {
  const TitleHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Good Morning,', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),),
          Text('Issac', style: TextStyle(fontSize: 23, fontWeight: FontWeight.w800),),
        ],
      )
    );
  }
}

class IconNotification extends StatelessWidget {
  const IconNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.notifications_none_outlined, size: 26,);
  }
}


class CardHistory extends StatelessWidget {
  final String? imageHistory;
  final String? imageProfile;
  final String? name;
  const CardHistory({super.key, required this.imageHistory, this.imageProfile, this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 8, 0, 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: SizedBox(
          height: 140.0,
          width: 100.0,
          child: Stack(
            fit: StackFit.expand,
            children: [
              ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                child: Image.asset(imageHistory!, fit: BoxFit.cover,)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(height: 10,),
                    SizedBox(
                      height: 45,
                      width: 45,
                      child: DecoratedBox(decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.white, width: 1.0),
                        image: DecorationImage(image: AssetImage(imageProfile!))
                      ),
                    )),
                    Text(name!, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
                  ],
                )            
            ],
          )
        ),
      ),
    );
  }
}
