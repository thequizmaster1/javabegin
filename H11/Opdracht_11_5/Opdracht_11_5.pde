String[] a = new String [10];
boolean yes= false;

void setup() {
  a[7]="jas";
  a[8]="jas";

  for (int i=0; i<a.length; i++) {
    if (a[i]=="jas") {
      yes =true;
    }
  }
  println(yes);
}
