import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  final String title, desc, path;
  final double price;
  final void Function(double countAll) sumTotal;

  Item({
    required this.title,
    required this.desc,
    required this.path,
    required this.price,
    required this.sumTotal,
  });

  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
    widget.sumTotal(count*widget.price);
  }

  void decrement() {
    if (count > 0) {
      setState(() {
        count--;
      });
      widget.sumTotal(count*widget.price);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10, top: 10),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xffE2E2E2), width: 1)),
      ),
      width: 363.73,
      margin: EdgeInsetsDirectional.symmetric(horizontal: 25),
      height: 108.98,
      child: Row(
        children: [
          Container(
            child: Image(image: AssetImage(widget.path)),
            width: 70.43,
            height: 64.69,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.title),
              SizedBox(height: 5),
              Text(
                widget.desc,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Gilroy-Medium',
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xffE2E2E2)),
                    ),
                    child: InkWell(
                      onTap: decrement,
                      child: Icon(
                        Icons.remove,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Text(count.toString()),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xffE2E2E2)),
                    ),
                    child: InkWell(
                      onTap: increment,
                      child: Icon(
                        Icons.add,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Column(
            children: [
              Icon(Icons.clear),
              Spacer(),
              Text(
                '${widget.price}\$',
                style: TextStyle(fontFamily: 'Gilroy', fontSize: 18),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
