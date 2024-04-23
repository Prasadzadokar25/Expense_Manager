import "package:flutter/material.dart";
import "category_screen.dart";
import "graph_screen.dart";
import "home_screen.dart";

class TrashPage extends StatefulWidget {
  const TrashPage({super.key});

  @override
  State createState() => _TrashPageState();
}

class _TrashPageState extends State {
  int selectedDrawerButtonIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: true,

        title: const Text(
          "Trash",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
      drawer: Drawer(
        width: 240,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text(
                    "Expense Maneger",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    "Saves all your Transactions",
                    style:
                        TextStyle(fontSize: 11.5, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            /*ListTile(
                shape: Border.all(),
                selectedColor: Color.fromRGBO(14, 161, 125, 1),
                //hoverColor: Color.fromRGBO(14, 161, 125, 0.15),
                leading: Icon(Icons.calendar_month),
                title: const Text('Transaction'),
                selectedTileColor: Color.fromRGBO(14, 161, 125, 0.15),
                autofocus: true,
                selected: true,
                onTap: () {},
              ),*/

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            GestureDetector(
              onTap: () {
                selectedDrawerButtonIndex = 1;
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),
                );

                setState(() {});
              },
              child: getDrawerButtons(
                icon: Icons.calendar_month,
                label: "Transactions",
                buttonIndex: 1,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                selectedDrawerButtonIndex = 2;

                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GraphPage(),
                  ),
                );
                setState(() {});
              },
              child: getDrawerButtons(
                icon: Icons.pie_chart_rounded,
                label: "Graphs",
                buttonIndex: 2,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                selectedDrawerButtonIndex = 3;
                setState(() {});
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CategoryPage(),
                  ),
                );
              },
              child: getDrawerButtons(
                icon: Icons.label_rounded,
                label: "Category",
                buttonIndex: 3,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                selectedDrawerButtonIndex = 4;
                Navigator.of(context).pop();
                setState(() {});
              },
              child: getDrawerButtons(
                icon: Icons.delete_rounded,
                label: "Trash",
                buttonIndex: 4,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                selectedDrawerButtonIndex = 5;
                Navigator.of(context).pop();

                setState(() {});
              },
              child: getDrawerButtons(
                icon: Icons.person_rounded,
                label: "About us",
                buttonIndex: 5,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return transationCard(index);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget transationCard(int index) {
    return Container(
      decoration: const BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(
            color: Color.fromRGBO(0, 0, 0, 0.13),
          ),
        ),
      ),
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 45,
                width: 45,
                child: Icon(
                  Icons.remove_circle_rounded,
                  color: Color.fromRGBO(204, 210, 227, 1),
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Row(
                          children: [
                            Text(
                              "Medicine",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            // Spacer(),
                            SizedBox(
                              child: Row(
                                children: [Text("300")],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.66,
                          child: const Text(
                            "Lorem Ipsum is simply dummy text of the ",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "3 June | 11:50 AM",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getLabelForTextField({required String label}) {
    return Text(
      label,
      style: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: Color.fromRGBO(33, 33, 33, 1),
      ),
    );
  }

  InputDecoration getInputDecorationForTextField() {
    return const InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromRGBO(33, 33, 33, 1),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
    );
  }

  Widget getDrawerButtons({
    required IconData icon,
    required String label,
    required int buttonIndex,
  }) {
    return Container(
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: (buttonIndex == selectedDrawerButtonIndex)
            ? const Color.fromRGBO(14, 161, 125, 0.15)
            : null,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      height: 45,
      width: 186,
      alignment: Alignment.center,
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color.fromRGBO(5, 158, 117, 1),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
          Text(
            label,
            style: TextStyle(
              color: (buttonIndex == selectedDrawerButtonIndex)
                  ? const Color.fromRGBO(5, 158, 117, 1)
                  : null,
            ),
          )
        ],
      ),
    );
  }
}
