import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
             
              TitleSection(
                name: '1. Malecón 2000',
                location: 'Guayaquil, Ecuador',
              ),
              ImageSection(
              image: 'assets/images/malecon.jpg',),
              ButtonSection(),
              TextSection(
                description:
                    'Ubicado en Ecuador en la zona costera.',
              ),

              TitleSection(
                name: '2. La Ronda',
                location: 'Quito, Ecuador',
              ),
              ButtonSection(),
              TextSection(description: "Ubicado en la zona Interandina del Ecuador"),
              ImageSection(
              image: 'assets/images/ronda.jpg',),

              TitleSection(
                name: '3. Gran Pirámide de Guiza, Egipto',
                location: 'El Cairo, Egipto',
              ),
              ButtonSection(),
              TextSection(description: "Centro arqueológico de Egipto donde se encuentran diferentes pirámides"),
              ImageSection(
              image: 'assets/images/giza.jpg',),

              TitleSection(
                name: '4. La Gran Muralla',
                location: 'China',
              ),
              ButtonSection(),
              TextSection(description: "La construcción en su tipo más grande del mundo y uno de los iconos turísticos de China."),
              ImageSection(
              image: 'assets/images/muralla.jpg',),

              TitleSection(
                name: '5. Hollywood',
                location: 'Los Ángeles, EE.UU',
              ),
              ButtonSection(),
              TextSection(description: "Enorme anuncio comercial para promocionar un desarrollo inmobiliario, se convirtió en la principal postal turística de Los Ángeles"),
              ImageSection(
              image: 'assets/images/hollywood.jpg',),

              TitleSection(
                name: '6. Templo Expiatorio de la Sagrada Familia',
                location: 'Barcelona, España',
              ),
              ButtonSection(),
              TextSection(description: "Consta de 5 naves centrales y 3 fachadas dedicadas al Nacimiento, la Pasión y Muerte y la Resurrección de Jesús."),
              ImageSection(
              image: 'assets/images/templo.jpg',),

              TitleSection(
                name: '7. Torre de Pisa',
                location: 'Italia',
              ),
              ButtonSection(),
              TextSection(description: "Existe la leyenda de que Galileo subió al nivel más alto para lanzar 2 balas de cañón de diferentes masas y así demostrar que la velocidad de descenso era independiente de aquellas."),
              ImageSection(
              image: 'assets/images/pisa.jpg',),
            ],
          ),
        ),
        // #enddocregion add-widget
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            // /1/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // /2/
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          // /3/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );
  }
}
class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}