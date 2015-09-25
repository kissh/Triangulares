void nesimotermino(int n){
  println((n*(n+1))/2);
}

void nterminos(int n){
int [] array=new int[n+1];
for(int i=0;i<n+1;i++){
array[i]=((i*(i+1))/2);
}
for(int i=1;i<n+1;i++){
print(array[i]+", ");
 }
}
void draw(int n){
  background(550);
  strokeWeight(2); 
  int y=685;
  int x=15;
  int s=n;
  for(int i=0;i<n;i++){
  for(int j=0;j<s;j++){
         rectMode(CENTER); 
         ellipse(x,y,20,20); //point(x,y);
         x=x+20;
  }  
y=y-20;
s=s-1;
x=15;
}
}

void setup(){
  size(800,700);
  println("N-esimo termino de los numeros triangulares");
  nesimotermino(34);
  println("N primeros terminos de los numeros triangulares");
  nterminos(34);
  draw(34);
}