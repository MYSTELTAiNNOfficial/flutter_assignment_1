part of 'home.dart';

class PesanPage extends StatefulWidget {
  const PesanPage({super.key});

  static const String routeName = "/pesan";

  @override
  State<PesanPage> createState() => _PesanPageState();
}

class _PesanPageState extends State<PesanPage> {
  @override
  void initState() {
    super.initState();
  }

  final _dataKey = GlobalKey<FormState>();

  final controllName = TextEditingController();
  final controllEmail = TextEditingController();
  final controllPhone = TextEditingController();
  final controllCity = TextEditingController();

  @override
  void dispose() {
    controllName.dispose();
    controllEmail.dispose();
    controllPhone.dispose();
    controllCity.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(title: Text("Booking")),
        body: Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 30),
            child: Form(
                key: _dataKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Nama",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(),
                        errorStyle: TextStyle(height: 0)
                      ),
                      controller: controllName,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: ((value) {
                        return value.toString().isEmpty ? "" : null;
                      }),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Email",
                        prefixIcon: Icon(Icons.mail),
                        border: OutlineInputBorder(),
                        errorStyle: TextStyle(height: 0)
                      ),
                      controller: controllEmail,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: ((value) {
                        return value.toString().isEmpty ? "" : null;
                      }),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: "Nomor Telepon",
                        prefixIcon: Icon(Icons.phone_android),
                        border: OutlineInputBorder(),
                        errorStyle: TextStyle(height: 0)
                      ),
                      controller: controllPhone,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: ((value) {
                        return value.toString().isEmpty ? "" : null;
                      }),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Kota",
                        prefixIcon: Icon(Icons.location_city),
                        border: OutlineInputBorder(),
                        errorStyle: TextStyle(height: 0)
                      ),
                      controller: controllCity,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: ((value) {
                        return value.toString().isEmpty ? "" : null;
                      }),
                    ),
                    ElevatedButton.icon(
                        onPressed: () {
                          if (_dataKey.currentState!.validate()) {
                            showDialog(
                                useRootNavigator: true,
                                context: this.context,
                                builder: (BuildContext dialogcontext) => AlertDialog(
                                      title: Text("Konfimasi Pesanan"),
                                      content: Text("Nama: " +
                                          controllName.text.toString() +
                                          "\nEmail: " +
                                          controllEmail.text.toString() +
                                          "\nNomor Telepon: " +
                                          controllPhone.text.toString() +
                                          "\nKota: " +
                                          controllCity.text.toString()),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            setState(() {
                                              Navigator.of(context).pop();
                                              Navigator.of(context).pop();
                                            });
                                          },
                                          child: Text('OK'),
                                        ),
                                      ],
                                    ));
                          } else {
                            showDialog(
                                context: this.context,
                                builder: (BuildContext dialogcontext) => AlertDialog(
                                      title: Text("Konfimasi Gagal"),
                                      content:
                                          Text("Isi semua field yang ada!"),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('OK'),
                                        ),
                                      ],
                                    ));
                          }
                        },
                        icon: Icon(Icons.save),
                        label: Text("Pesan Sekarang"))
                  ],
                ),
              ),
            ));
  }
}
