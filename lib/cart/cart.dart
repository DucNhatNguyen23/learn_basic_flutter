import 'package:flutter/material.dart';
import 'package:flutter_learn/home/home.dart';
import 'package:flutter_learn/restaurant/type.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key, required this.cart});

  final ParamsCart cart;

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int count = 0;

  void goToHomePage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }

  void alertSucess(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Thông Báo'),
          content: Text('Đặt đồ ăn thành công'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () async {
                Navigator.of(context).pop();
                goToHomePage();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    final ParamsCart food = widget.cart;
    count = food.count;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ParamsCart food2 = widget.cart;
    int total = count > 0 ? (food2.price * count) : 0;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Cart',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xffFF7622),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: const Color(0xffededed), width: 1)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(food2.image),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          height: 80,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Burger'),
                              Text(
                                food2.price.toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    count > 0
                        ? IconButton(
                            onPressed: () {
                              setState(() {
                                count--;
                              });
                            },
                            icon: const Icon(
                              Icons.indeterminate_check_box,
                              size: 40,
                            ))
                        : const SizedBox.shrink(),
                    Text(
                      count > 0 ? count.toString() : '',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            count++;
                          });
                        },
                        icon: const Icon(
                          Icons.add_box,
                          size: 40,
                        )),
                  ],
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 30),
                child: RichText(
                    text: TextSpan(children: [
                  const TextSpan(
                      text: 'Total: ',
                      style: TextStyle(
                          color: Color(0xffFF7622),
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                  TextSpan(
                      text: total.toString(),
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                ]))),
            count > 0
                ? Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: SizedBox(
                        width: 370,
                        child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Color(0xffFF7622),
                                padding: EdgeInsets.symmetric(vertical: 10)),
                            onPressed: () {
                              alertSucess(context);
                            },
                            child: const Text(
                              'Buy',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ))),
                  )
                : SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
