import 'package:flutter/material.dart';
class TouristPlace{
 final String name;
final String imagePath;
final String description;
final  List<Color> colors;
 TouristPlace({this.name,this.imagePath,this.description,this.colors});
}
List TouristicPlaces=[
TouristPlace(
 name:"Karnak Temple" ,
 imagePath:"assets/images/Karnak.jpg",
 description: "It is one of the oldest monuments in the world. It is preceded by a famous road known as the Rams Road, where there are miniature statues of rams on both sides.Every evening sound and light shows are held in the temple that explain to visitors the history of the temple in the era of the pharaohs.Entry price for tourists is 150 pounds (\$9.4), and sound and light shows are 240 pounds (\$15).",
colors: [Colors.orange.shade200 , Colors.deepOrange.shade400],
),
TouristPlace(
name:"Luxor temple",
imagePath: "assets/images/Ramses.jpg",
description: "It is one of the most famous monuments in Luxor, and is located near the Karnak Temple. It is characterized by the two statues of Ramses II on both sides of the temple, and two large obelisks at the entrance, along with many valuable papyrus columns and distinctive stones.The price of a ticket for foreigners and Arabs is 140 pounds (\$8.75).",
 colors: [Colors.pink.shade400 , Colors.pinkAccent.shade400],
),
TouristPlace(
name:"Valley of the Kings Temple",
imagePath: "assets/images/Kings.jpeg",
description: "The temple, located on the west bank of the Nile, includes 64 tombs for the pharaonic families, the most important of which is the tomb of King Tutankhamun, and the walls of the temple are distinguished by wonderful inscriptions.The entrance ticket to the temple is estimated at 200 pounds (\$12.5).",
 colors: [Colors.blue.shade400 , Colors.blueAccent.shade400],
),
TouristPlace(
name:"Deir el-Bahari",
imagePath: "assets/images/Deir.jpeg",
description: "Deir el-Bahari is famous for its impressive collection of statues of Queen Hatshepsut, who ruled Egypt during the era of the pharaohs, in addition to the presence of a group of pharaonic temples and tombs overlooking the western side of the Nile.Foreigners can enter Deir el-Bahari for 60 Egyptian pounds (\$3.75).",
 colors: [Colors.green.shade400 , Colors.greenAccent.shade400],
),
TouristPlace(
name:"Valley of the Queens",
imagePath: "assets/images/Queens.png",
description: "The Valley of the Queens was built in the southwest bank of the Nile River to be a cemetery for the ladies of the ruling families, princesses and princes, and includes famous tombs, including the tomb of Queen Nefertari.The price of an entry ticket is estimated at 100 Egyptian pounds (\$6.25).",
 colors: [Colors.purple.shade400 , Colors.purpleAccent.shade400],
),
TouristPlace(
name:"Mortuary temple",
imagePath: "assets/images/mortuary.png",
description: "It is the mortuary temple of Amenhotep III and is called the “Temple of Millions of Years.” It is located in the Kom El-Hitan area, on the western mainland in Luxor, which is known as the city of the dead.The temple was built on a vast area of ​​358,000 square meters, but it was severely damaged by the flood waters and was subjected to a strong earthquake in 27 BC, and only the statues of Memnon remained.",
 colors: [Colors.teal.shade400 , Colors.tealAccent.shade400],
),
TouristPlace(
name:"Luxor Museum",
imagePath: "assets/images/Luxor M.jpg",
description: "A unique museum that includes about 376 rare artifacts and mummies of the most important kings of Egypt. It consists of two floors, the first contains antiquities, and the second contains statues, archaeological utensils and pieces of jewelry.Tourists are allowed to enter the museum for 140 pounds (\$8.75).",
 colors: [Colors.red.shade400 , Colors.lightGreenAccent.shade400],
),
TouristPlace(
name:"Banana Island",
imagePath: "assets/images/Banana.jpg",
description: "The island, located west of Luxor, has a charming nature with green scenery and tranquility, and is famous for its banana and palm trees.It is an essential interface in the tourist programs, as it is possible to reach the island through cruise boat trips, and to take souvenir photos.",
 colors: [Colors.grey.shade400 , Colors.greenAccent.shade400],
),
TouristPlace(
name:"Philae Temple",
imagePath: "assets/images/Philae.png",
description: "The temple located in the city of Aswan is one of the most famous tourist attractions in the world, and it can be reached by Nile boats and enjoy the scenic views.This museum is famous for its walls full of charming drawings and huge pharaonic columns, and the price of admission is 140 pounds (\$8.75).",
 colors: [Colors.yellow.shade400 , Colors.yellowAccent.shade400],
),
TouristPlace(
name:"Kom Ombo Temple",
imagePath: "assets/images/Kmwambo.jpg",
description: "Kom Ombo is located on the banks of the Nile in Aswan, and is also characterized by halls with large columns, and statues that are sacred to the Pharaohs.he entrance ticket to this temple for tourists is 100 pounds (\$6.25).",
 colors: [Colors.deepPurple.shade400 , Colors.deepOrangeAccent.shade400],
),
TouristPlace(
name:"Nubia Museum",
imagePath: "assets/images/Nuba.jpg",
description: "This well-known museum within the city of Aswan displays the ancient Nubian civilization and an aspect of the Egyptian civilization, as it abounds with coins, bronze and pottery vessels and small statues.The price for entry to the museum for tourists is 140 pounds (\$8.75).",
 colors: [Colors.tealAccent.shade400 , Colors.deepOrangeAccent.shade400],
),

];