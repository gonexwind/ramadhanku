part of 'pages.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Header
          Container(
            height: Get.size.height * .3,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.teal,
              image: DecorationImage(
                image: AssetImage('star-and-crescent-moon'.png),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'RamadhanKu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Buku Saku Ramadhan',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),

          // List Menu
          Container(
            height: Get.size.height * .65,
            width: double.infinity,
            decoration: BoxDecoration(
                // color: Colors.white,
                ),
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: ListView.separated(
              itemCount: menu.length,
              separatorBuilder: (_, __) => Divider(),
              itemBuilder: (context, index) => ListTile(
                title: Text(menu[index]),
                trailing: Icon(Icons.arrow_forward_ios, size: 15),
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List menu = [
  'Niat Puasa Ramadhan',
  'Doa Usa Buka Puasa',
  'Niat Sholat Tarawih',
  'Bilal Tarawih & Jawabannya',
  'Doa Kamilin Bakda Tarawih',
  'Niat Sholat Witir',
  'Wirid & Doa Bakda Witir',
  'Bacaan Lailatur Qodar',
  'Niat Zakat Fitrah',
  'Doa Menerima Zakat Fitrah',
  'Lafazd Takbiran Idul Fitri',
  'Niat Sholat Idul Fitri',
];
