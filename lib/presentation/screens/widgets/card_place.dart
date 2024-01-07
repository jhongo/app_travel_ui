import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/infraestructure/models/place.dart';


class CardPlace extends StatelessWidget {

  final Place place;
  const CardPlace({super.key, required this.place, });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
      child: SizedBox(
        width: size.width,
        height: size.height * 0.25,
        child:  DecoratedBox(decoration: BoxDecoration(),
          child: Stack(
            children: [
              CardImage(
                image: place.image,
              ),
              LinearHeader(
                username: place.username,
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: DetailsCard(
                  likes: place.likes,
                  comments: place.comments,
                )),
                Positioned(
                  right: 0,
                  bottom: 70,
                  left: 0,
                  child: TextDescription(
                    name: place.name,
                    description: place.description,
                  ))
              
            ],
          ),
          
          ),
      ),
    );

  }
}

class CardImage extends StatelessWidget {
  final String image;
  const CardImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25.0),
        child: SizedBox(
          width: double.infinity,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0.5, end: 1.0),
            duration: const Duration(milliseconds: 500),
            builder: (context, value, child) => Transform.scale(
              scale: 1.0 + value * 0.05 ,
              child: child,
            ),
            child: Image.asset(image, fit: BoxFit.cover,))
        ),
      ),
    );
  }
}

class LinearHeader extends StatelessWidget {
  final String username;
  const LinearHeader({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
      child: Row(
        children: [
          SizedBox(
            width: 30.0,
            height: 30.0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.white, width: 1.0),
                image: const DecorationImage(image: AssetImage('assets/imgs/histories/profile_ian.jpg'))
              ),
            ),
            ),
            const SizedBox(width: 10.0,),
            Text(username, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 13),),
            const Spacer(),
            const Icon(Icons.bookmark_border_outlined, color: Colors.white, size: 25,),
        ],
      ),
    );
  }
}

class DetailsCard extends StatelessWidget {
  final int likes;
  final int comments;
  const DetailsCard({super.key, required this.likes, required this.comments});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: Row(
        children: [
          SizedBox(
            width: 150,
            height: 45,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.favorite_border, color: Colors.indigo,size: 22, ),
                  Text('$likes', style: TextStyle(fontSize: 13),),
                  SizedBox(width: 10,),
                  Icon(Icons.message_outlined, color: Colors.indigo,size: 22, ),
                  Text('$comments', style: TextStyle(fontSize: 13),),
                ]),
          )),
          Spacer(),
         SizedBox(
            width: 45,
            height: 45,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white
              ),
              child: Center(
                child: Icon(Icons.share, color: Colors.indigo,),
              ),
          )
         )     
          
        ],
      ),
    );
  }
}

class TextDescription extends StatelessWidget {
  final String? name;
  final String? description;
  const TextDescription({super.key, this.name, this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0,70, 0),
      child: SizedBox(
        width: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text( name!, style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white, fontSize: 20)),
            Text(description!,style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white), maxLines: 2,)
          ],
        )
        ),
    );
  }
}

