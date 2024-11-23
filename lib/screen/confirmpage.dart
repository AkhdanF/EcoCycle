import 'package:flutter/material.dart';

class Confirmpage extends StatelessWidget {
  const Confirmpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Ringkasan Order',
          style: TextStyle(
            color: Color(0xFF1D2A62),
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/image/bg2.png"), // Replace with your background image path
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          padding:
              const EdgeInsets.all(16.0), // Adding padding for better layout
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Lokasi Penjemputan',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1D2A62),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(
                    10.0), // Adding padding for better layout
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.red,
                          size: 32,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: Color(0xFF1D2A62),
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Spacer(), // Using Spacer to push the icon to the end
                        Icon(
                          Icons.chevron_right,
                          color: Color(0xFF1D2A62),
                          size: 32,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 2,
                            offset: const Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Patokan jalan sebelah Jatos'),
                              Text(
                                'Catatan Disampaikan Ke Driver.',
                                style: TextStyle(
                                  color: Color(0xFF1D2A62),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          TextButton(
                            onPressed: () {},
                            child: const Row(
                              children: [
                                Text(
                                  'Edit',
                                  style: TextStyle(
                                    color: Color(0xFF1D2A62),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.edit_outlined,
                                  size: 18,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                height: 2.0,
                width: 400.0,
                color: Colors.grey,
              ),
              const Text(
                'Ringkasan Item',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1D2A62),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Plastic',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1D2A62),
                          ),
                        ),
                        const SizedBox(height: 60),
                        TextButton(
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Text(
                                'Edit',
                                style: TextStyle(
                                  color: Color(0xFF1D2A62),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.edit_outlined,
                                size: 18,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Image.asset(
                          'assets/image/plastic.png',
                          width: 80,
                          height: 80,
                        ),
                        const SizedBox(height: 20),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5.0),
                          decoration: BoxDecoration(
                            color: const Color(0xFFAFD06E),
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(color: Colors.grey, width: 1.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.scale,
                                size: 18,
                                color: Color(0xFF1D2A62),
                              ),
                              SizedBox(width: 5),
                              Text(
                                '3.0 KG',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF1D2A62),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                height: 2.0,
                width: 400.0,
                color: Colors.grey,
              ),
              Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Butuh Bantuan?',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF1D2A62),
                        ),
                      ),
                      Text(
                        'Tambahkan Sampah Lain?',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF1D2A62),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF87AECE),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Tambah Item',
                      style: TextStyle(
                        color: Color(0xFF1D2A62),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                height: 2.0,
                width: 400.0,
                color: Colors.grey,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.scale,
                              size: 20,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Total Berat:',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF1D2A62),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.shopping_cart_outlined,
                              size: 20,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Total Item:',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF1D2A62),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          '3.0 KG',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1D2A62),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '0 Items',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1D2A62),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                height: 2.0,
                width: 400.0,
                color: Colors.grey,
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF87AECE),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 18),
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (BuildContext context) {
                        DateTime? selectedDate;
                        TimeOfDay? selectedTime;

                        return StatefulBuilder(
                          builder:
                              (BuildContext context, StateSetter setState) {
                            return Container(
                              width: 450,
                              padding: const EdgeInsets.all(20),
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Mau Dipick up Kapan?',
                                    style: TextStyle(
                                      color: Color(0xFF1D2A62),
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFF87AECE),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    onPressed: () async {
                                      DateTime? pickedDate =
                                          await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime.now(),
                                        lastDate: DateTime(2100),
                                      );
                                      if (pickedDate != null) {
                                        setState(() {
                                          selectedDate = pickedDate;
                                        });
                                      }
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Mau Hari Apa?',
                                          style: TextStyle(
                                            color: Color(0xFF1D2A62),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        if (selectedDate == null)
                                          Text(
                                            "${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}",
                                            style: const TextStyle(
                                              fontSize: 16,
                                              color: Color(0xFF1D2A62),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        if (selectedDate != null)
                                          Text(
                                            "${selectedDate!.day}-${selectedDate!.month}-${selectedDate!.year}",
                                            style: const TextStyle(
                                              fontSize: 16,
                                              color: Color(0xFF1D2A62),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFF87AECE),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    onPressed: () async {
                                      TimeOfDay? pickedTime =
                                          await showTimePicker(
                                        context: context,
                                        initialTime: TimeOfDay.now(),
                                      );
                                      if (pickedTime != null) {
                                        setState(() {
                                          selectedTime = pickedTime;
                                        });
                                      }
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Mau Jam Berapa?',
                                          style: TextStyle(
                                            color: Color(0xFF1D2A62),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        if (selectedTime == null)
                                          Text(
                                            "${TimeOfDay.now().hour}:${TimeOfDay.now().minute}",
                                            style: const TextStyle(
                                              fontSize: 16,
                                              color: Color(0xFF1D2A62),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        if (selectedTime != null)
                                          Text(
                                            "${selectedTime!.hour}:${selectedTime!.minute}",
                                            style: const TextStyle(
                                              fontSize: 16,
                                              color: Color(0xFF1D2A62),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Center(
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xFF87AECE),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                      onPressed: () {
                                        if (selectedDate != null &&
                                            selectedTime != null) {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                ),
                                                title: const Row(
                                                  children: [
                                                    Icon(
                                                        Icons
                                                            .check_circle_outline,
                                                        color: Colors.green,
                                                        size: 30),
                                                    SizedBox(width: 10),
                                                    Text("Success",
                                                        style: TextStyle(
                                                            fontSize: 24,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                  ],
                                                ),
                                                content: Text(
                                                  "Schedule Pickup berhasil pada tanggal ${selectedDate!.day}-${selectedDate!.month}-${selectedDate!.year} jam ${selectedTime!.hour}:${selectedTime!.minute}.",
                                                  style: const TextStyle(
                                                      fontSize: 18),
                                                ),
                                                actions: [
                                                  Center(
                                                    child: ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        backgroundColor:
                                                            const Color(
                                                                0xFF87AECE),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0),
                                                        ),
                                                      ),
                                                      onPressed: () {
                                                        Navigator.pushNamed(
                                                            context, '/home');
                                                      },
                                                      child: const Text(
                                                          "Kembali ke Home",
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        }
                                      },
                                      child: const Text(
                                        'Schedule Pickup',
                                        style: TextStyle(
                                          color: Color(0xFF1D2A62),
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                  child: const Text(
                    'Schedule PickUp',
                    style: TextStyle(
                      color: Color(0xFF1D2A62),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
