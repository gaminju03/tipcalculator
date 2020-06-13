import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title:'Tip Calculator', home: TipCalculator()));
}

 class TipCalculator extends StatefulWidget {///cambio 

double billAmout = 0.0;
double tipPorcentaje = 0.0;

  @override
  Widget build(BuildContext context) {
  TextField billAmountField = TextField(
    keyboardType: TextInputType.number,
    onChanged: (String value){
      try{
        billAmout = double.parse(value);
      }
      catch(exception){
        billAmout = 0.0;
      }
    },
  );
TextField tipPorcentajeField=TextField(
  decoration: InputDecoration(labelText: "tip%", hintText: "15"),
  keyboardType: TextInputType.number,
  onChanged: (String value){
    try{
      tipPorcentaje=double.parse(value);
    }
    catch(exception){
      tipPorcentaje=0.0;
    }
  },
);


  RaisedButton calculateButton = RaisedButton(
    child: Text("Calculate"),
    onPressed: ()
    {
      double calculatedTip = billAmout * tipPorcentaje / 100.0;
      double total = billAmout + calculatedTip;

    /*  AlertDialog dialog = AlertDialog(
        content: Text("Tip: \$$calculatedTip\n"
                      "Total: \$$total"));

            showDialog(context: context, builder:(BuildContext context)=> dialog);
*/

Center center =Center(
child: Container(
  child: Text("Total: \$$total", style: TextStyle(fontSize: 25.0)//25 tamaño
  ),
)
);


 
     });

     Container container = Container(
       padding: const EdgeInsets.all(16.0),
       child: Column(
          children: [billAmountField, tipPorcentajeField, calculateButton]));
          AppBar appBar = AppBar(title: Text("Tipo Calculator"));

          Scaffold scaffold = Scaffold(appBar: appBar,body: container);
          return scaffold;
    }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    throw UnimplementedError();
  }

  }

