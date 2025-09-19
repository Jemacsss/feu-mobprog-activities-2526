class QuizQuestion {
  final String question;
  final List<String> answers;
  final String correctAnswer;
  final String imagePath;

  QuizQuestion({
    required this.question,
    required this.answers,
    required this.correctAnswer,
    required this.imagePath,
  });
}

class QuizResult {
  final String question;
  final String selectedAnswer;
  final String correctAnswer;
  final bool isCorrect;

  QuizResult({
    required this.question,
    required this.selectedAnswer,
    required this.correctAnswer,
    required this.isCorrect,
  });
}

final Map<String, List<QuizQuestion>> questions = {

// Category 1

  'Evolutions': [
    QuizQuestion(
      question: 'What does Eevee evolve into when exposed to a Water Stone?',
      answers: ['Vaporeon', 'Jolteon', 'Flareon', 'Espeon'],
      correctAnswer: 'Vaporeon',
      imagePath: 'assets/images/category_1/eevee.png',
    ),
    QuizQuestion(
      question: 'Which Pokémon evolves into Gyarados?',
      answers: ['Feebas', 'Magikarp', 'Goldeen', 'Carvanha'],
      correctAnswer: 'Magikarp',
      imagePath: 'assets/images/category_1/gyrados.png',
    ),
    QuizQuestion(
      question: 'What item is needed to evolve Onix into Steelix?',
      answers: ['Metal Coat', 'King’s Rock', 'Moon Stone', 'Dragon Scale'],
      correctAnswer: 'Metal Coat',
      imagePath: 'assets/images/category_1/steelix.png',
    ),
    QuizQuestion(
      question: 'Which baby Pokémon evolves into Jigglypuff?',
      answers: ['Cleffa', 'Igglybuff', 'Togepi', 'Azurill'],
      correctAnswer: 'Igglybuff',
      imagePath: 'assets/images/category_1/jigglypuff.png',
    ),
    QuizQuestion(
      question: 'How does Riolu evolve into Lucario?',
      answers: [
        'Friendship during the day',
        'Level 30 at night',
        'Dawn Stone',
        'Thunder Stone',
      ],
      correctAnswer: 'Friendship during the day',
      imagePath: 'assets/images/category_1/riolu.png',
    ),
    QuizQuestion(
      question: 'Which evolution requires a Dawn Stone on Kirlia?',
      answers: ['Gallade', 'Gardevoir', 'Alakazam', 'Sylveon'],
      correctAnswer: 'Gallade',
      imagePath: 'assets/images/category_1/kirlia.png',
    ),
    QuizQuestion(
      question: 'To evolve Inkay into Malamar, what must the player do?',
      answers: [
        'Level up holding a Dark Stone',
        'Level up while upside down',
        'Trade with a friend',
        'Use a Sun Stone',
      ],
      correctAnswer: 'Level up while upside down',
      imagePath: 'assets/images/category_1/inkay.png',
    ),
    QuizQuestion(
      question: 'Which Pokémon evolves into Crobat through friendship?',
      answers: ['Zubat', 'Golbat', 'Woobat', 'Noibat'],
      correctAnswer: 'Golbat',
      imagePath: 'assets/images/category_1/crobat.png',
    ),
    QuizQuestion(
      question:
          'What Pokémon does Slowpoke evolve into when it holds a King’s Rock?',
      answers: ['Slowbro', 'Slowking', 'Claydol', 'Hypno'],
      correctAnswer: 'Slowking',
      imagePath: 'assets/images/category_1/slowpoke.png',
    ),
    QuizQuestion(
      question: 'Which Pokémon evolves into Tyranitar?',
      answers: ['Larvitar', 'Pupitar', 'Axew', 'Trapinch'],
      correctAnswer: 'Pupitar',
      imagePath: 'assets/images/category_1/tyrant.png',
    ),
  ],

// Category 2

  'Gym Leaders and Elite 4': [
    QuizQuestion(
      question: 'Who is the first Gym Leader in Kanto?',
      answers: ['Misty', 'Brock', 'Lt. Surge', 'Erika'],
      correctAnswer: 'Brock',
      imagePath: 'assets/images/category_2/geo.png',
    ),
    QuizQuestion(
      question: 'Which type does Misty specialize in?',
      answers: ['Fire', 'Water', 'Grass', 'Psychic'],
      correctAnswer: 'Water',
      imagePath: 'assets/images/category_2/star.png',
    ),
    QuizQuestion(
      question: 'What type does Lt. Surge use?',
      answers: ['Ground', 'Electric', 'Fighting', 'Steel'],
      correctAnswer: 'Electric',
      imagePath: 'assets/images/category_2/rai.png',
    ),
    QuizQuestion(
      question: 'Who is the final Gym Leader of the Kanto region?',
      answers: ['Blue', 'Lance', 'Giovanni', 'Sabrina'],
      correctAnswer: 'Giovanni',
      imagePath: 'assets/images/category_2/tr.png',
    ),
    QuizQuestion(
      question: 'Lorelei of the Elite Four specializes in what type?',
      answers: ['Ice', 'Dragon', 'Water', 'Psychic'],
      correctAnswer: 'Ice',
      imagePath: 'assets/images/category_2/lap.png',
    ),
    QuizQuestion(
      question: 'Who is the Champion of the Indigo Plateau in Red/Blue?',
      answers: ['Blue', 'Red', 'Lance', 'Professor Oak'],
      correctAnswer: 'Blue',
      imagePath: 'assets/images/category_2/red.png',
    ),
    QuizQuestion(
      question: 'What type does Erika, the Celadon Gym Leader, use?',
      answers: ['Poison', 'Grass', 'Fairy', 'Bug'],
      correctAnswer: 'Grass',
      imagePath: 'assets/images/category_2/vile.png',
    ),
    QuizQuestion(
      question: 'Bruno of the Elite Four mainly uses what type?',
      answers: ['Rock', 'Fighting', 'Steel', 'Dragon'],
      correctAnswer: 'Fighting',
      imagePath: 'assets/images/category_2/mac.png',
    ),
    QuizQuestion(
      question: 'Who is the Dragon-type Elite Four member in Kanto?',
      answers: ['Drake', 'Clair', 'Lance', 'Steven'],
      correctAnswer: 'Lance',
      imagePath: 'assets/images/category_2/dragonite.png',
    ),
    QuizQuestion(
      question: 'Which Gym Leader gives the Thunder Badge?',
      answers: ['Misty', 'Sabrina', 'Lt. Surge', 'Brock'],
      correctAnswer: 'Lt. Surge',
      imagePath: 'assets/images/category_2/rb.png',
    ),
  ],

// Category 3

  'Pokemon Games': [
    QuizQuestion(
      question: 'What were the first Pokémon games released?',
      answers: [
        'Red and Blue',
        'Gold and Silver',
        'Diamond and Pearl',
        'Black and White',
      ],
      correctAnswer: 'Red and Blue',
      imagePath: 'assets/images/category_3/kanto.png',
    ),
    QuizQuestion(
      question: 'Which handheld console was Pokémon Red and Blue released on?',
      answers: [
        'Game Boy',
        'Game Boy Color',
        'Game Boy Advance',
        'Nintendo DS',
      ],
      correctAnswer: 'Game Boy',
      imagePath: 'assets/images/category_3/gbc.png',
    ),
    QuizQuestion(
      question: 'What region is introduced in Pokémon Gold and Silver?',
      answers: ['Kanto', 'Johto', 'Hoenn', 'Sinnoh'],
      correctAnswer: 'Johto',
      imagePath: 'assets/images/category_3/joh.png',
    ),
    QuizQuestion(
      question: 'Which Pokémon is the mascot of Pokémon Yellow?',
      answers: ['Charmander', 'Squirtle', 'Pikachu', 'Eevee'],
      correctAnswer: 'Pikachu',
      imagePath: 'assets/images/category_1/eevee.png',
    ),
    QuizQuestion(
      question: 'Pokémon Ruby and Sapphire take place in which region?',
      answers: ['Sinnoh', 'Johto', 'Hoenn', 'Unova'],
      correctAnswer: 'Hoenn',
      imagePath: 'assets/images/category_3/kanto.png',
    ),
    QuizQuestion(
      question: 'What new feature did Pokémon Diamond and Pearl introduce?',
      answers: [
        'Day/Night Cycle',
        'Mega Evolution',
        'Wi-Fi Trading',
        'Dynamax',
      ],
      correctAnswer: 'Wi-Fi Trading',
      imagePath: 'assets/images/category_3/DP.png',
    ),
    QuizQuestion(
      question: 'Which games introduced Mega Evolution?',
      answers: [
        'X and Y',
        'Black and White',
        'Sun and Moon',
        'Sword and Shield',
      ],
      correctAnswer: 'X and Y',
      imagePath: 'assets/images/category_3/mega.png',
    ),
    QuizQuestion(
      question: 'Pokémon Sword and Shield introduced what new battle mechanic?',
      answers: ['Z-Moves', 'Mega Evolution', 'Dynamax', 'Fusion'],
      correctAnswer: 'Dynamax',
      imagePath: 'assets/images/category_3/pss.png',
    ),
    QuizQuestion(
      question: 'In Pokémon Legends: Arceus, which region is featured?',
      answers: ['Hisui', 'Kalos', 'Galar', 'Sinnoh'],
      correctAnswer: 'Hisui',
      imagePath: 'assets/images/category_3/pla.png',
    ),
    QuizQuestion(
      question: 'Which recent Pokémon games introduced the Paldea region?',
      answers: [
        'Sword and Shield',
        'Scarlet and Violet',
        'X and Y',
        'Sun and Moon',
      ],
      correctAnswer: 'Scarlet and Violet',
      imagePath: 'assets/images/category_3/dyna.png',
    ),
  ],
};
