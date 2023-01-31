/* Lykkehjulet                                 */
String word; // Hemmeligt ord - deklarares
int attempts; // Antal forsøg - mangler en tæller
String Bcategory = "DANSK BY"; // By kategori
String Hcategory = "HARDWARE"; // Hardware kategori

// Mulige hemmelige ord
String[] cities = {"København", "Aarhus", //By muligheder
  "Odense", "Aalborg", "Esbjerg"};
String[] hardware = {"Hovedtelefoner", "Mus", "Tastatur", "Computer", "Telefon"}; //Hardware muligheder

// Status på spillet i et array
boolean[] guessed;

/* Viser vinduet og sætter ordet */
void setup() {
  // Vælg et tilfældigt ord som skal gættes.
  word = cities[int(random(cities.length))]; //Tilfældig ord vælges ved at vælge en tilfældig længde
  guessed = new boolean[word.length()]; //Ordets bogstaver får en boolean
  size(800, 450); // Vis vinduet
  textSize(36); // Bogstavernes størrelse
}

/* Opdaterer skærmen */
void draw() {
  background(200, 200, 255); // Nulstiller 
  textAlign(LEFT); // Venstrestil kategorien
  
  text("Antal forsøg: ", 100, height/2+50);      //  Selv tilføjet - antal forsøg tekst
  text(attempts, 300, height/2+50);       // Selv tilføjet - antal forsøg tal
  
  
  text(Bcategory, 105, 100); // Viser kategorien
  textAlign(CENTER); // Centrer i hver kasse
  char letter; // Bogstav i iteration af ord
  // Løb igennem alle bogstaver i ordet
  for (int i = 0; i < word.length(); i++) {
    // Sæt bogstavet ind i en firkant.
    fill(0, 0, 0); // Sort skrift
    if (guessed[i]) {
      letter = word.charAt(i); //Ser om det gættede bogstav er i ordet
    } else {
      letter = 20;
    }
    text(letter, 125 + i*50, 200);
    noFill(); // Tomme kasser
    rect(105 + i*50, 200 - 35, 45, 45);
  }
}

/* Gætter på et bogstav */
void keyPressed() {
  attempts = attempts + 1;       // Selv tilføjet - tæller antal forsøg
  
  char letter;
  for (int i = 0; i < word.length(); i++) {
    letter = word.substring(i, i+1).toLowerCase() //Angiver bogstav som en ny string
      .charAt(0);
    // Undersøg for hvert tegn om det er gættet
    if (letter == key) guessed[i] = true;
  }
}
