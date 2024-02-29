enum Tag { popular, beach, mountain, city }

extension EnumExtension on Enum {
  String capitalizeName(){
    return name[0].toUpperCase() + name.substring(1);
  }
}

