class WarriorList {
  final String name, power, imgNetwork, levelCat, warriorType, warriorDes;
  final double warriorId;

  WarriorList(
    this.warriorId,
    this.name,
    this.imgNetwork,
    this.levelCat,
    this.warriorType,
    this.power,
    this.warriorDes,
  );

  static List<WarriorList> warriorList() {
    return [
      WarriorList(
        1,
        'Spartacus',
        'assets/images/warrior1.png',
        'Ancient Warrior',
        'Gladiator',
        'Strength, Supreme Combat Skills',
        'A Thracian gladiator who led a slave rebellion against the Roman Republic.'
      ),
      WarriorList(
        2,
        'Leonidas',
        'assets/images/warrior2.png',
        'Ancient Warrior',
        'Spartan King',
        'Invulnerability, Unyielding Courage',
        'King of Sparta known for his leadership at the Battle of Thermopylae.'
      ),
      WarriorList(
        3,
        'Genghis Khan',
        'assets/images/warrior3.png',
        'Conqueror',
        'Khagan of the Mongol Empire',
        'Military Strategy, Flight',
        'Founder of the Mongol Empire, the largest contiguous empire in history.'
      ),
      WarriorList(
        4,
        'Joan of Arc',
        'assets/images/warrior4.png',
        'Medieval Warrior',
        'French Heroine',
        'Divine Inspiration',
        'Led the French army to several important victories during the Hundred Years\' War.'
      ),
      WarriorList(
        5,
        'Miyamoto Musashi',
        'assets/images/warrior5.png',
        'Samurai',
        'Ronin',
        'Master Tactician, Stealth and Agility',
        'Famous Japanese swordsman known for his undefeated duels and combat philosophy.'
      ),
      WarriorList(
        6,
        'Alexander the Great',
        'assets/images/warrior6.png',
        'Ancient Warrior',
        'Macedonian King',
        'Strategic Genius, Fearsome Leader',
        'Created one of the largest empires of the ancient world by the age of thirty.'
      ),
      WarriorList(
        7,
        'William Wallace',
        'assets/images/warrior7.png',
        'Medieval Warrior',
        'Scottish Knight',
        'Bravery, Enhanced Senses',
        'Led the Scottish resistance against England during the Wars of Scottish Independence.'
      ),
      WarriorList(
        8,
        'Attila the Hun',
        'assets/images/warrior8.png',
        'Conqueror',
        'King of the Huns',
        'Fearsome Leader, Invulnerability',
        'One of the most feared enemies of the Western and Eastern Roman Empires.'
      ),
      WarriorList(
        9,
        'Boudica',
        'assets/images/warrior9.png',
        'Ancient Warrior',
        'Celtic Queen',
        'Warrior Spirit, Mystic Powers',
        'Led a major uprising against the occupying Roman forces in ancient Britain.'
      ),
      WarriorList(
        10,
        'Saladin',
        'assets/images/warrior10.png',
        'Medieval Warrior',
        'Sultan of Egypt and Syria',
        'Telekinesis, Master Tactician',
        'Led the Muslim military campaign against the Crusader states in the Levant.'
      ),
      WarriorList(
        11,
        'Camille',
        'assets/images/warrior11.png',
        'Ancient Warrior',
        'Gladiator',
        'Supreme Combat Skills',
        'A Thracian gladiator who led a slave rebellion against the Roman Republic.'
      ),
      WarriorList(
        12,
        'Annaus',
        'assets/images/warrior12.png',
        'Ancient Warrior',
        'Spartan King',
        'Invulnerability, Unyielding Courage',
        'King of Sparta known for his leadership at the Battle of Thermopylae.'
      ),
      WarriorList(
        13,
        'Jenkis Khan',
        'assets/images/warrior13.png',
        'Conqueror',
        'Khagan of the Mongol Empire',
        'Military Strategy, Flight',
        'Founder of the Mongol Empire, the largest contiguous empire in history.'
      ),
      WarriorList(
        14,
        'Joan of Arc',
        'assets/images/warrior14.png',
        'Medieval Doctor',
        'Doctor',
        'Arqueology, fly',
        'Led the French army to several important victories during the Hundred Years\' War.'
      ),
    ];
  }
}
