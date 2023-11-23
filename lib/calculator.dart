import 'dart:math';

class Calculator {

  final int? height ;
  final int? weight ;
  double _bmi=0;
    Calculator({required this.height ,required this.weight});

    String caculateBMI(){

       _bmi =weight!/pow(height!/100,2);
       print(height);
       print(weight);
       print(_bmi);
      return _bmi.toStringAsFixed(1);
    }
    String getInterpretation(){
      if (_bmi>=25){
        return 'you have a higher than normal body weight try th exercise more  ';
      }
      else if (_bmi>=18.5){
        return 'You have a normal body weight . Good job ';

      }
      else{
        return 'you have a lower than normal body weight ,eat a bit more .';
      }

    }

    String getResult ()
    {
      if (_bmi>=25){
        return ' Over Weight  ';
      }
      else if (_bmi>=18.5){
        return ' Normal ';

      }
      else{
        return 'Under weight';
      }
    }
}