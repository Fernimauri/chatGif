import 'package:flutter/material.dart';

class HerPresentation extends StatelessWidget implements PreferredSizeWidget {
  final String nombre;
  final String urlAvatar;

  const HerPresentation({
    super.key,
    this.nombre = 'mi vida, mi amor',
    this.urlAvatar =
        'https://pbs.twimg.com/profile_images/597967561909805056/kTlNI7RH_400x400.jpg',
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(4.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage(urlAvatar),
        ),
      ),
      title: Text(nombre),
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
      centerTitle: false,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            image: DecorationImage(
                image: NetworkImage(
                    'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/8c361645-11b7-4abc-8219-1d7a2882801e/dds1uhk-bf28578e-b3b7-45ac-aa8d-5e42a3d9d935.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzhjMzYxNjQ1LTExYjctNGFiYy04MjE5LTFkN2EyODgyODAxZVwvZGRzMXVoay1iZjI4NTc4ZS1iM2I3LTQ1YWMtYWE4ZC01ZTQyYTNkOWQ5MzUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.bbMCmJtyefcKUODsYBDTO-1ukZ62CVGrNz43bPJAbsY'),
                fit: BoxFit.fitHeight,
                alignment: Alignment.centerRight),
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 0, 70, 70),
              Color.fromARGB(255, 0, 0, 80),
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
      ),
    );
  }

  @override
  // ignore: todo
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
