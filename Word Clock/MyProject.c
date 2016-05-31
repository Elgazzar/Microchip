//U4 First Shift Register
#define SHIFT_CLOCK_1 PORTB.F1
#define SHIFT_LATCH_1 PORTB.F0
#define SHIFT_DATA_1 PORTD.F2
//third shift register
#define SHIFT_CLOCK_3 PORTB.F2
#define SHIFT_LATCH_3 PORTA.F3
#define SHIFT_DATA_3 PORTA.F2
// second shift register
#define SHIFT_CLOCK_2 PORTC.F1
#define SHIFT_LATCH_2 PORTC.F0
#define SHIFT_DATA_2 PORTA.F5


unsigned int i;
unsigned char temp;
unsigned int count;
int sec;
unsigned int Minute;
unsigned int x=127;

//first shift Register
void shiftdata595_1(unsigned char _shiftdata)
{
temp = _shiftdata;
i=8;
while (i>0)
{
if (temp.F7==0)
{
SHIFT_DATA_1 = 0;
}
else
{
SHIFT_DATA_1 = 1;
}
temp = temp<<1;
SHIFT_CLOCK_1 = 1;
SHIFT_CLOCK_1 = 0;
i--;
}
}

void latch595_1()
{
SHIFT_LATCH_1 = 1;
SHIFT_LATCH_1 = 0;
}
// second shift register
void shiftdata595_3(unsigned char _shiftdata)
{
temp = _shiftdata;
i=8;
while (i>0)
{
if (temp.F7==0)
{
SHIFT_DATA_3 = 0;
}
else
{
SHIFT_DATA_3 = 1;
}
temp = temp<<1;
SHIFT_CLOCK_3 = 1;
SHIFT_CLOCK_3 = 0;
i--;
}
}
void latch595_3()
{
SHIFT_LATCH_3 = 1;
SHIFT_LATCH_3 = 0;
}
//third shift register
void shiftdata595_2(unsigned char _shiftdata)
{
temp = _shiftdata;
i=8;
while (i>0)
{
if (temp.F7==0)
{
SHIFT_DATA_2 = 0;
}
else
{
SHIFT_DATA_2 = 1;
}
temp = temp<<1;
SHIFT_CLOCK_2 = 1;
SHIFT_CLOCK_2 = 0;
i--;
}
}
void latch595_2()
{
SHIFT_LATCH_2 = 1;
SHIFT_LATCH_2 = 0;
}
void load(unsigned char x,unsigned char y ,unsigned char z)
{
// Register 1
shiftdata595_1(x);
latch595_1();
//Register 2
shiftdata595_2(y);
latch595_2();
//Register 3
shiftdata595_3(z);
latch595_3();
}
void Test1()
{
  if (x >= 0 && x < 21 )
  {
     if (x==0)
  {
  //twelve
  Load (0b00000010 , 0b00000100 , 0b00000010 );
  }
  if (x==1)
  {
  //FIVE_PAST_TWELVE
  Load (0b01010010 , 0b00000100 , 0b00000010 );
  }
  if (x==2)
  {
  //TEN_PAST_TWELVE
  Load (0b01000010 , 0b00000100 , 0b00000110 );
  }
  if (x==3)
  {
  //QUARTER_PAST_TWELVE
  Load (0b01000010 , 0b00000110 , 0b00000010 );
  }
  if (x==4)
  {
  //TWENTY_PAST_TWELVE
  Load (0b01000010 , 0b00010100 , 0b00000010 );
  }
  if (x==5)
  {
  //TWENTY_FIVE_PAST_TWELVE
  Load (0b01010010 , 0b00010100 , 0b00000010 );
  }
  if (x==6)
  {
  //HALF_PAST_TWELVE
  Load (0b11000010 , 0b00000100 , 0b00000010 );
  }
  if (x==7)
  {
  //TWENTY_FIVE_TO_ONE
  Load (0b00010010 , 0b00010100 , 0b11000000 );
  }
  if (x==8)
  {
  //TWENTY_TO_ONE
  Load (0b00000010 , 0b00010100 , 0b11000000 );
  }
  if (x==9)
  {
  //QUARTER_TO_ONE
  Load (0b00000010 , 0b00000110 , 0b11000000 );
  }
  if (x==10)
  {
  //TEN_TO_ONE
  Load (0b00000010 , 0b00000100 , 0b11000100 );
  }
  if (x==11)
  {
  //FIVE_TO_ONE
  Load (0b00010010 , 0b00000100 , 0b11000000 );
  }
  if (x==12)
  {
  //ONE
  Load (0b00000010 , 0b00000100 , 0b01000000 );
  }
  if (x==13)
  {
  //FIVE_PAST_ONE
  Load (0b01010010 , 0b00000100 , 0b01000000 );
  }
  if (x==14)
  {
  //TEN_PAST_ONE
  Load (0b01000010 , 0b00000100 , 0b01000100 );
  }
  if (x==15)
  {
  //QUARTER_PAST_ONE
  Load (0b01000010 , 0b00000110 , 0b01000000 );
  }
  if (x==16)
  {
  //TWENTY_PAST_ONE
  Load (0b01000010 , 0b00010100 , 0b01000000 );
  }
  if (x==17)
  {
  //TWENTY_FIVE_PAST_ONE
  Load (0b01010010 , 0b00010100 , 0b01000000 );
  }
  if (x==18)
  {
  //HALF_PAST_ONE
  Load (0b11000010 , 0b00000100 , 0b01000000 );
  }
  if (x==19)
  {
  //TWENTY_FIVE_TO_TWO
  Load (0b00010010 , 0b00010100 , 0b10100000 );
  }
  if (x==20)
  {
  //TWENTY_TO_TWO
  Load (0b00000010 , 0b00010100 , 0b10100000 );
  }
  }
  if (x >20 && x <31)
  {
  if (x==21)
  {
  //QUARTER_TO_TWO
  Load (0b00000010 , 0b00000110 , 0b10100000 );
  }
  if (x==22)
  {
  //TEN_TO_TWO
  Load (0b00000010 , 0b00000100 , 0b10100100 );
  }
  if (x==23)
  {
  //FIVE_TO_TWO
  Load (0b00010010 , 0b00000100 , 0b10100000 );
  }
  if (x==24)
  {
  //TWO
  Load (0b00000010 , 0b00000100 , 0b00100000 );
  }
  if (x==25)
  {
     //FIVE_PAST_TWO
  Load (0b01010010 , 0b00000100 , 0b00100000 );
  }
  if (x==26)
  {
  //TEN_PAST_TWO
  Load (0b01000010 , 0b00000100 , 0b00100100 );
  }
  if (x==27)
  {
  //QUARTER_PAST_TWO
  Load (0b01000010 , 0b00000110 , 0b00100000 );
  }
  if (x==28)
  {
  //TWENTY_PAST_TWO
  Load (0b01000010 , 0b00010100 , 0b00100000 );
  }
  if (x==29)
  {
  //TWENTY_FIVE_PAST_TWO
  Load (0b01010010 , 0b00010100 , 0b00100000 );
  }
  if (x==30)
  {
  //HALF_PAST_TWO
  Load (0b11000010 , 0b00000100 , 0b00100000 );
  }
  }
  if (x > 30 && x<41)
  {
  if (x==31)
  {
  //TWENTY_FIVE_TO_THREE
  Load (0b00010010 , 0b00110100 , 0b10000000 );
  }
  if (x==32)
  {
  //TWENTY_TO_THREE
  Load (0b00000010 , 0b00110100 , 0b10000000 );
  }
  if (x==33)
  {
  //QUARTER_TO_THREE
  Load (0b00000010 , 0b00100110 , 0b10000000 );
  }
  if (x==34)
  {
  //TEN_TO_THREE
  Load (0b00000010 , 0b00100100 , 0b10000100 );
  }
  if (x==35)
  {
    //FIVE_TO_THREE
  Load (0b00010010 , 0b00100100 , 0b10000000 );
  }
  if (x==36)
  {
  //THREE
  Load (0b00000010 , 0b00100100 , 0b00000000 );
  }
  if (x==37)
  {
     //FIVE_PAST_THREE
  Load (0b01010010 , 0b00100100 , 0b00000000 );
  }
  if (x==38)
  {
  //TEN_PAST_THREE
  Load (0b01000010 , 0b00100100 , 0b00000100 );
  }
  if (x==39)
  {
  //QUARTER_PAST_THREE
  Load (0b01000010 , 0b00100110 , 0b00000000 );
  }
  if (x==40)
  {
  //TWENTY_PAST_THREE
  Load (0b01000010 , 0b00110100 , 0b00000000 );
  }
  }
  if (x>40 && x<51)
  {
  if (x==41)
  {
  //TWENTY_FIVE_PAST_THREE
  Load (0b01010010 , 0b00110100 , 0b00000000 );
  }
  if (x==42)
  {
  //HALF_PAST_THREE
  Load (0b11000010 , 0b00100100 , 0b00000000 );
  }
  if (x==43)
  {
  //TWENTY_FIVE_TO_FOUR
  Load (0b00110010 , 0b00010100 , 0b10000000 );
  }
  if (x==44)
  {
  //TWENTY_TO_FOUR
  Load (0b00100010 , 0b00010100 , 0b10000000 );
  }
  if (x==45)
  {
  //QUARTER_TO_FOUR
  Load (0b00100010 , 0b00000110 , 0b10000000 );
  }
  if (x==46)
  {
  //TEN_TO_FOUR
  Load (0b00100010 , 0b00000100 , 0b10000100 );
  }
  if (x==47)
  {
    //FIVE_TO_FOUR
  Load (0b00110010 , 0b00000100 , 0b10000000 );
  }
  if (x==48)
  {
  //FOUR
  Load (0b00100010 , 0b00000100 , 0b00000000 );
  }
  if (x==49)
  {
     //FIVE_PAST_FOUR
  Load (0b01110010 , 0b00000100 , 0b00000000 );
  }
    if (x==50){
  //TEN_PAST_FOUR
  Load (0b01000010 , 0b00000100 , 0b00000100 );
  }
  }
  if (x >50 && x<61)
  {
  if (x==51){
  //QUARTER_PAST_FOUR
  Load (0b01100010 , 0b00000110 , 0b00000000 );
  }
  if (x==52){
  //TWENTY_PAST_FOUR
  Load (0b01100010 , 0b00010100 , 0b00000000 );
  }
  if (x==53){
  //TWENTY_FIVE_PAST_FOUR
  Load (0b01110010 , 0b00010100 , 0b00000000 );
  }
  if (x==54){
  //HALF_PAST_FOUR
  Load (0b11100010 , 0b00000100 , 0b00000000 );
  }
  if (x==55){
  //TWENTY_FIVE_TO_FIVE
  Load (0b00011010 , 0b00010100 , 0b10000000 );
  }
  if (x==56){
  //TWENTY_TO_FIVE
  Load (0b00001010 , 0b00010100 , 0b10000000 );
  }
  if (x==57){
  //QUARTER_TO_FIVE
  Load (0b00001010 , 0b00000110 , 0b10000000 );
  }
  if (x==58){
  //TEN_TO_FIVE
  Load (0b00001010 , 0b00000100 , 0b10000100 );
  }
  if (x==59){
    //FIVE_TO_FIVE
  Load (0b00011010 , 0b00000100 , 0b10000000 );
 }
  if (x==60){
  //FIVE
  Load (0b00001010 , 0b00000100 , 0b00000000 );
  }
  }
  if (x>60 && x <71)
  {
    if (x==61){
      //FIVE_PAST_FIVE
  Load (0b01011010 , 0b00000100 , 0b00000000 );
  }
    if (x==62){
  //TEN_PAST_FIVE
  Load (0b01001010 , 0b00000100 , 0b00000100 );
  }
    if (x==63){
  //QUARTER_PAST_FIVE
  Load (0b01001010 , 0b00000110 , 0b00000000 );
  }
    if (x==64){
  //TWENTY_PAST_FIVE
  Load (0b01001010 , 0b00010100 , 0b00000000 );
  }
  if (x==65){
  //TWENTY_FIVE_PAST_FIVE
  Load (0b01011010 , 0b00010100 , 0b00000000 );
  }
  if (x==66){
  //HALF_PAST_FIVE
  Load (0b11001010 , 0b00000100 , 0b00000000 );
  }
  if (x==67){
    //TWENTY_FIVE_TO_SIX
  Load (0b00010010 , 0b00010100 , 0b10001000 );
  }
  if (x==68){
      //TWENTY_TO_SIX
  Load (0b00000010 , 0b00010100 , 0b10001000 );
  }
  if (x==69){
  //QUARTER_TO_SIX
  Load (0b00000010 , 0b00000110 , 0b10001000 );
  }
  if (x==70){
  //TEN_TO_SIX
  Load (0b00000010 , 0b00000100 , 0b10001100 );
  }
}
 if (x>70 && x<81)
 {
  if (x==71){
    //FIVE_TO_SIX
  Load (0b00010010 , 0b00000100 , 0b10001000 );
  }
  if (x==72){
    //SIX
  Load (0b00000010 , 0b00000100 , 0b00001000);
  }
  if (x==73){
      //FIVE_PAST_SIX
  Load (0b01010010 , 0b00000100 , 0b00001000);
  }
  if (x==74){
  //TEN_PAST_SIX
  Load (0b01000010 , 0b00000100 , 0b00001100);
  }
  if (x==75){
  //QUARTER_PAST_SIX
  Load (0b01000010 , 0b00000110 , 0b00001000);
  }
  if (x==76){
  //TWENTY_PAST_SIX
  Load (0b01000010 , 0b00010100 , 0b00001000);
  }
  if (x==77){
  //TWENTY_FIVE_PAST_SIX
  Load (0b01010010 , 0b00010100 , 0b00001000);
  }
  if (x==78){
  //HALF_PAST_SIX
  Load (0b11000010 , 0b00000100 , 0b00001000);
  }
  if (x==79){
  //TWENTY_FIVE_TO_SEVEN
  Load (0b00010010 , 0b01010100 , 0b10000000);
  }
  if (x==80){
  //TWENTY_TO_SEVEN
  Load (0b00000010 , 0b01010100 , 0b10000000);
  }
 }
 if (x>80 && x<91)
 {
 if (x==81){
  //QUARTER_TO_SEVEN
  Load (0b00000010 , 0b01000110 , 0b10000000);
  }
  if (x==82){
  //TEN_TO_SEVEN
  Load (0b00000010 , 0b01000100 , 0b10000100);
  }
  if (x==83){
    //FIVE_TO_SEVEN
  Load (0b00010010 , 0b01000100 , 0b10000000);
  }
  if (x==84){
  //SEVEN
  Load (0b00000010 , 0b01000100 , 0b00000000 );
  }
  if (x==85){
      //FIVE_PAST_SEVEN
  Load (0b01010010 , 0b01000100 , 0b00000000 );
  }
  if (x==86){
  //TEN_PAST_SEVEN
  Load (0b01000010 , 0b01000100 , 0b00000100 );
  }
  if (x==87){
  //QUARTER_PAST_SEVEN
  Load (0b01000010 , 0b01000110 , 0b00000000 );
  }
  if (x==88){
  //TWENTY_PAST_SEVEN
  Load (0b01000010 , 0b01010100 , 0b00000000 );
  }
  if (x==89){
  //TWENTY_FIVE_PAST_SEVEN
  Load (0b01010010 , 0b01010100 , 0b00000000 );
  }
  if (x==90){
  //HALF_PAST_SEVEN
  Load (0b11000010 , 0b01000100 , 0b00000000 );
  }
 }
 if (x>90 && x <=100)
 {
 if (x==91){
  //TWENTY_FIVE_TO_EIGHT
  Load (0b00010010 , 0b10010100 , 0b10000000 );
  }
  if (x==92){
  //TWENTY_TO_EIGHT
  Load (0b00000010 , 0b10010100 , 0b10000000 );
  }
  if (x==92){
  //QUARTER_TO_EIGHT
  Load (0b00000010 , 0b10000110 , 0b10000000 );
  }
  if (x==94){
  //TEN_TO_EIGHT
  Load (0b00000010 , 0b10000100 , 0b10000100 );
  }
  if (x==95){
    //FIVE_TO_EIGHT
  Load (0b00010010 , 0b10000100 , 0b10000000 );
  }
   if (x==96){
  //EIGHT
  Load (0b00000010 , 0b10000100 , 0b00000000);
  }
    if (x==97){
        //FIVE_PAST_Eight
  Load (0b01010010 , 0b10000100 , 0b00000000);
  }
    if (x==98){
  //TEN_PAST_Eight
  Load (0b01000010 , 0b10000100 , 0b00000100);
  }
    if (x==99){
  //QUARTER_PAST_Eight
  Load (0b01000010 , 0b10000110 , 0b00000000);
  }
  if (x==100){
  //TWENTY_PAST_Eight
  Load (0b01000010 , 0b10010100 , 0b00000000);
  }
  }
}

// Test 2


void Test2()
{
if (x>100 && x<121)
{
  if (x==101){
  //TWENTY_FIVE_PAST_Eight
  Load (0b01010010 , 0b10010100 , 0b00000000);
  }
  if (x==102){
  //HALF_PAST_Eight
  Load (0b11000010 , 0b10000100 , 0b00000000);
  }
  if (x==103){
  //TWENTY_FIVE_TO_NINE
  Load (0b00010110 , 0b00010100 , 0b10000000);
  }
  if (x==104){
  //TWENTY_TO_NINE
  Load (0b00000110 , 0b00010100 , 0b10000000);
  }
  if (x==105){
  //QUARTER_TO_NINE
  Load (0b00000110 , 0b00000110 , 0b10000000);
  }
  if (x==106){
  //TEN_TO_NINE
  Load (0b00000110 , 0b00000100 , 0b10000100);
  }
  if (x==107){
    //FIVE_TO_NINE
  Load (0b00010110 , 0b00000100 , 0b10000000);
  }
  if (x==108){
  //NINE
  Load (0b00000110 , 0b00000100 , 0b00000000);
  }
  if (x==109){
        //FIVE_PAST_NINE
  Load (0b01010110 , 0b00000100 , 0b00000000);
  }
  if (x==110){
  //TEN_PAST_NINE
  Load (0b01000110 , 0b00000100 , 0b00000100);
  }
  if (x==111){
  //QUARTER_PAST_NINE
  Load (0b01000110 , 0b00000110 , 0b00000000);
  }
  if (x==112){
  //TWENTY_PAST_NINE
  Load (0b01000110 , 0b00010100 , 0b00000000);
  }
  if (x==113){
  //TWENTY_FIVE_PAST_NINE
  Load (0b01010110 , 0b00010100 , 0b00000000);
  }
  if (x==114){
  //HALF_PAST_NINE
  Load (0b11000110 , 0b00000100 , 0b00000000);
  }
  if (x==115){
  //TWENTY_FIVE_TO_TEN
  Load (0b00010010 , 0b00010100 , 0b10010000);
  }
  if (x==116){
  //TWENTY_TO_TEN
  Load (0b00000010 , 0b00010100 , 0b10010000);
  }
  if (x==117){
  //QUARTER_TO_TEN
  Load (0b00000010 , 0b00000110 , 0b10010000);
  }
  if (x==118){
  //TEN_TO_TEN
  Load (0b00000010 , 0b00000100 , 0b10010100);
  }
  if (x==119){
    //FIVE_TO_TEN
  Load (0b00010010 , 0b00000100 , 0b10010000);
  }
  if (x==120){
  //TEN
  Load (0b00000010 , 0b00000100 , 0b00010000);
  }
  }
  if (x>120 && x <144)
  {
  if (x==121){
        //FIVE_PAST_TEN
  Load (0b01010010 , 0b00000100 , 0b00010000);
  }
  if (x==122){
  //TEN_PAST_TEN
  Load (0b01000010 , 0b00000100 , 0b00010100);
  }
  if (x==123){
  //QUARTER_PAST_TEN
  Load (0b01000010 , 0b00000110 , 0b00010000);
  }
  if (x==124){
  //TWENTY_PAST_TEN
  Load (0b01000010 , 0b00010100 , 0b00010000);
  }
  if (x==125){
  //TWENTY_FIVE_PAST_TEN
  Load (0b01010010 , 0b00010100 , 0b00010000);
  }
  if (x==126){
  //HALF_PAST_TEN
  Load (0b11000010 , 0b00000100 , 0b00010000);
  }
  if (x==127){
  //TWENTY_FIVE_TO_ELEVEN
  Load (0b00010010 , 0b00011100 , 0b10000000);
  }
  if (x==128){
  //TWENTY_TO_ELEVEN
  Load (0b00000010 , 0b00011100 , 0b10000000);
  }
  if (x==129){
  //QUARTER_TO_ELEVEN
  Load (0b00000010 , 0b00001110 , 0b10000000);
  }
  if (x==130){
  //TEN_TO_ELEVEN
  Load (0b00000010 , 0b00001100 , 0b10000100);
  }
  if (x==131){
    //FIVE_TO_ELEVEN
  Load (0b00010010 , 0b00001100 , 0b10000000);
  }
  if (x==132){
  //ELEVEN
  Load (0b00000010 , 0b00001100 , 0b00000000);
  }
  if (x==133){
        //FIVE_PAST_ELEVEN
  Load (0b01010010 , 0b00001100 , 0b00000000);
  }
  if (x==134){
  //TEN_PAST_ELEVEN
  Load (0b01000010 , 0b00001100 , 0b00000100);
  }
  if (x==135){
  //QUARTER_PAST_ELEVEN
  Load (0b01000010 , 0b00001110 , 0b00000000);
  }
  if (x==136){
  //TWENTY_PAST_ELEVEN
  Load (0b01000010 , 0b00011100 , 0b00000000);
  }
  if (x==137){
  //TWENTY_FIVE_PAST_ELEVEN
  Load (0b01010010 , 0b00011100 , 0b00000000);
  }
  if (x==138){
  //HALF_PAST_ELEVEN
  Load (0b11000010 , 0b00001100 , 0b00000000);
  }
  if (x==139){
  //TWENTY_FIVE_TO_TWELVE
  Load (0b00010010 , 0b00010100 , 0b10000010);
  }
  if (x==140){
  //TWENTY_TO_TWELVE
  Load (0b00000010 , 0b00010100 , 0b10000010);
  }
  if (x==141){
  //QUARTER_TO_TWELVE
  Load (0b00000010 , 0b00000110 , 0b10000010);
  }
  if (x==142){
  //TEN_TO_TWELVE
  Load (0b00000010 , 0b00000100 , 0b10000110);
  }
  if (x==143){
    //FIVE_TO_TWELVE
  Load (0b00010010 , 0b00000100 , 0b10000010);
  }
  }
}


void main()
{
TRISC=0;
TRISB=0;
TRISD=0;
TRISA=0;
INTCON.GIE=1;
INTCON.TMR0IE=1;
OPTION_REG = 0b10000111;
TMR0 = 61;
while(1)
{
Test1();
Test2();
}
}
void interrupt()
{
INTCON.T0IF=0;
TMR0 = 61;
count++;
if (count == 20)
{
count =0;
sec++;
}
if (sec == 60)
{
sec=0;
Minute++;
}
if (minute==5)
{
Minute=0;
x++;
}
if (x==144)
{
x=0;
}
}