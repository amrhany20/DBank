import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Float "mo:base/Float";
import Stack "mo:base/Stack";
actor DBank {
  var startTime = Time.now(); 
  Debug.print(debug_show(startTime));


  var currentValue:Float =150;
  //currentValue := 100;
  let id=219904;
  Debug.print("hi bitch");
  Debug.print(debug_show(currentValue));
public func topUp(amount:Float){
  currentValue+=amount;
  Debug.print(debug_show(currentValue));

};
public func withdraw(amount:Float){
  let tempVal:Float =(currentValue-amount);
  if(tempVal>=0){
    currentValue-=amount;
  Debug.print(debug_show(currentValue));
  }else{
    Debug.print("lazm b2a natural number");
  }

};
public query func check():async Float{
return currentValue;
};
public func compound(){
  let currentTime = Time.now();
  let timeElapsedNS = currentTime - startTime;
  let timeElapsedS = timeElapsedNS/1000000000;
  currentValue:=currentValue*(1.01**Float.fromInt(timeElapsedS));
  startTime := currentTime;
    Debug.print(debug_show(currentValue));

};
//topUp();
};
