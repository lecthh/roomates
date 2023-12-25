import 'package:finals/models/chores_model.dart';
import 'package:finals/models/notes_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<NotesModel> notes = [];
  List<ChoresModel> chores = [];

  void _getNotes() {
    notes = NotesModel.getNotes();
  }

  void _getChores() {
    chores = ChoresModel.getChores();
  }

  @override
  Widget build(BuildContext context) {
    _getNotes();
    _getChores();
    return Scaffold(
      backgroundColor: const Color(0xffFDF9F1),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SafeArea(
          child: Column(
            children: [
              const Row(
                children: [
                  Greetings(name: "Alexis"),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Roomies",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  const Roomate(letter: "A"),
                  const Roomate(
                    letter: "K",
                    color: "2370E8",
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Roomate(
                      letter: "+",
                      color: "FDF9F1",
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Column(
                children: [
                  const Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                  const Row(
                    children: [
                      TodaysDate(),
                      SizedBox(
                        width: 8,
                      ),
                      FollowingDates(),
                      SizedBox(
                        width: 8,
                      ),
                      FollowingDates(),
                      SizedBox(
                        width: 8,
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Notes",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w900, fontSize: 24),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Icon(
                        Icons.more_horiz,
                        color: Color(0xffFFC508),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 126,
                    child: ListView.separated(
                      itemCount: notes.length,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 25),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 248,
                          decoration: BoxDecoration(
                            color: const Color(0xffEB562D),
                            border: Border.all(width: 1),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    notes[index].roomate,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          notes[index].title,
                                          style: GoogleFonts.inter(
                                              color: const Color(0xffFDF9F1),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        Text(
                                          notes[index].user,
                                          style: GoogleFonts.inter(
                                              fontWeight: FontWeight.bold,
                                              color: const Color(0xffFDF9F1),
                                              fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.access_time,
                                          color: Color(0xffFDF9F1),
                                        ),
                                        const SizedBox(width: 4),
                                        Text(
                                          notes[index].time,
                                          style: GoogleFonts.inter(
                                            color: const Color(0xffFDF9F1),
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 4),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.location_on_outlined,
                                          color: Color(0xffFDF9F1),
                                        ),
                                        const SizedBox(width: 4),
                                        Text(
                                          notes[index].location,
                                          style: GoogleFonts.inter(
                                            color: const Color(0xffFDF9F1),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Chores",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w900, fontSize: 24),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Icon(
                        Icons.more_horiz,
                        color: Color(0xffFFC508),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 126,
                    child: ListView.separated(
                      itemCount: chores.length,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 25),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 248,
                          decoration: BoxDecoration(
                            color: const Color(0xffE92F4F),
                            border: Border.all(width: 1),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        chores[index].title,
                                        style: GoogleFonts.inter(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Checkbox(
                                      value: chores[index].isCompleted,
                                      onChanged: (value) {
                                        setState(() {
                                          chores[index].isCompleted = value!;
                                        });
                                      },
                                    )
                                  ],
                                ),
                                Text(
                                  chores[index].description,
                                  style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 14
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.access_time,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      chores[index].time,
                                      style: GoogleFonts.inter(
                                        color: Colors.white
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FollowingDates extends StatelessWidget {
  const FollowingDates({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(width: 1)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: Text(
            "4",
            style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class TodaysDate extends StatelessWidget {
  const TodaysDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffFFC508), border: Border.all(width: 1)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: Text(
            "Today, Jan 3",
            style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class Greetings extends StatelessWidget {
  final String name;

  const Greetings({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Hello there,\n$name",
      style: GoogleFonts.inter(
        fontSize: 24,
        color: const Color(0xffE92F4F),
        fontWeight: FontWeight.w900,
      ),
    );
  }
}

class Roomate extends StatefulWidget {
  final String letter;
  final String color;

  const Roomate({
    Key? key,
    required this.letter,
    this.color = "2CC081",
  }) : super(key: key);

  @override
  State<Roomate> createState() => _RoomateState();
}

class _RoomateState extends State<Roomate> {
  @override
  Widget build(BuildContext context) {
    Color getColor(String colorCode) {
      return Color(int.parse("0xff$colorCode"));
    }

    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          color: getColor(widget.color),
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.black,
          ),
        ),
        child: Center(
          child: Text(
            widget.letter,
            style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
