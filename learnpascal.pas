unit Math;
{
    this is a
    multiline comment
}
interface
  uses Addition, Subtraction;

  const
    PI = 3.14;
    TRUTHY = true;
    FALSY = false;
    NULL = nil;

  type
    Vector = Array of Integer;

    Point = record
      x : Integer;
      y : Integer;
    end;

  TDog = class
  private
    coat: String;
  public
    procedure makeSomeNoise;
    property coat: String read getCoat write setCoat(color: String);
    function name: String;
  end;

  var
    result: Integer;
  (*
  multi
  line
  comment
  block
  *)
implementation
  uses Addition, Subtraction;
// comment

  procedure TDog.makeSomeNoise();
  begin
    Writeln('Woof!')
  end;

  function TDog.name(): String;
  begin
    result := 'Major'
  end;

  function TDog.getCoat(): String;
  begin
    result := coat
  end;

  procedure TDog.setCoat(color: String);
  begin
    coat := color
  end;

  function addTwo(value: Integer): Integer;
  begin
    result := Addition.add(value, 2);
  end;

  procedure printInteger(value: Integer);
  begin
    Write(value)
  end;

  procedure printIntegerTenTimes(value: Integer);
  begin
    for i := 1 to 10 do
      printInteger(value)
  end;

  procedure countDown(value: Integer);
  begin
    for i := value downto 0 do
      Writeln(value)
  end;

  procedure printEvenOrOdd(value: Integer);
  begin
    if value mod 2 not = 0 then
      Write('Odd')
    else
      Write('Even')
  end;

  procedure printPoint(value: Point);
  begin
    with value do
    begin
      Writeln(x);
      Writeln(y)
    end
  end;

  procedure printXTimes(value: Integer);
  var
    i := value;
  begin
    repeat
      Write(i);
      i := i - 1
    until i < 0;
  end;

  procedure repeatWhileTrue(value: Integer);
  var
    i := value;
  begin
    while i < 10 do
    begin
      Write(i);
      i := i + 1
    end
  end;

  procedure vowelOrConsonant(value: String);
  case value of
    'a', 'e', 'i', 'o', 'u' : Writeln('vowel');
    'y' : Writeln('depends on the langauge');
  else
    Writeln('consonant')
  end;

  procedure assert(test: boolean);
  begin
    if not test then
      raise Exception.create();
  end;

  function booleanAnd(left, right: Boolean): Boolean;
  begin
    booleanAnd := left and right;
  end;

  function booleanOr(left, right: Boolean): Boolean;
  begin
    booleanOr := left or right;
  end;

  function booleanNot(value: Boolean): Boolean;
  begin
    booleanNot := not value;
  end;

  function booleanXor(left, right: Boolean): Boolean;
  begin
    booleanXor := left xor right;
    specialize assertEqual<Integer>((10 + 2), 12);
    specialize assertEqual<String>('a string', 'a string');
  end;

  generic procedure assertEqual<T>(actual, expected: T);
  begin
    assert(actual = expected);
  end;

end.


(* A comment using the earliest Pascal style *)

(*
multi
line
comment
block
*)

{------------------------------------------------------------------------------}
// The below source was downloaded from https://learnxinyminutes.com/docs/pascal/

//Anatomy of a Pascal Program
//this is a comment
{
    this is a
    multiline comment
}

//name of the program
program learn_pascal; //<-- don't forget a semicolon

const
    {
        this is where you should declare constant values
    }
type
    {
        this is where you should declare custom
        data-types
    }
var
    {
        this is where you should declare a variable
    }

//main program area
begin
    {
        area to declare your instruction
    }
END. // End of a main program area should require a "." symbol

//When declaring variables
//you can do this
var a:integer;
var b:integer;
//or this
var
    a : integer;
    b : integer;
//or this
var a,b : integer;

program Learn_More;
//Let's learn about data types and their operations

const
    PI = 3.141592654;
    GNU = 'GNU''s Not Unix';
        // constants are conventionally named using CAPS
        // their values are fixed and cannot be changed during runtime
        // holds any standard data type (integer, real, boolean, char, string)

type
    ch_array : array [0..255] of char;
        // arrays are new 'types' specifying the length and data type
        // this defines a new data type that contains 255 characters
        // (this is functionally equivalent to a string[256] variable)
    md_array : array of array of integer;
        // nested arrays are equivalent to multidimensional arrays
        // can define zero (0) length arrays that are dynamically sized
        // this is a 2-dimensional array of integers

//Declaring variables
var
    int, c, d  : integer;
           // three variables that contain integer numbers
           // integers are 16-bits and limited to the range [-32,768..32,767]
    r    : real;
           // a variable that contains a real number data types
           // reals can range between [3.4E-38..3.4E38]
    bool : boolean;
           // a variable that contains a Boolean(True/False) value
    ch   : char;
           // a variable that contains a character value
           // char variables are stored as 8-bit data types so no UTF
    str  : string;
           // a non-standard variable that contains a string value
           // strings are an extension included in most Pascal compilers
           // they are stored as an array of char with default length of 255.
    s    : string[50];
           // a string with maximum length of 50 chars.
           // you can specify the length of the string to minimize memory usage
    my_str: ch_array;
           // you can declare variables of custom types
    my_2d : md_array;
           // dynamically sized arrays need to be sized before they can be used.

    // additional integer data types
    b    : byte;     // range [0..255]
    shi  : shortint; // range [-128..127]
    smi  : smallint; // range [-32,768..32,767] (standard Integer)
    w    : word;     // range [0..65,535]
    li   : longint;  // range [-2,147,483,648..2,147,483,647]
    lw   : longword; // range [0..4,294,967,295]
    c    : cardinal; // longword
    i64  : int64;    // range [-9223372036854775808..9223372036854775807]
    qw   : qword;    // range [0..18,446,744,073,709,551,615]

    // additional real types
    rr   : real;     // range depends on platform (i.e., 8-bit, 16-bit, etc.)
    rs   : single;   // range [1.5E-45..3.4E38]
    rd   : double;   // range [5.0E-324 .. 1.7E308]
    re   : extended; // range [1.9E-4932..1.1E4932]
    rc   : comp;     // range [-2E64+1 .. 2E63-1]

Begin
    int := 1;// how to assign a value to a variable
    r   := 3.14;
    ch  := 'a';
    str := 'apple';
    bool := true;
    //pascal is not a case-sensitive language
    //arithmethic operation
    int := 1 + 1; // int = 2 overwriting the previous assignment
    int := int + 1; // int = 2 + 1 = 3;
    int := 4 div 2; //int = 2 division operation where result will be floored
    int := 3 div 2; //int = 1
    int := 1 div 2; //int = 0

    bool := true or false; // bool = true
    bool := false and true; // bool = false
    bool := true xor true; // bool = false

    r := 3 / 2; // a division operator for real
    r := int; // can assign an integer to a real variable but not the reverse

    c := str[1]; // assign the first letter of str to c
    str := 'hello' + 'world'; //combining strings

    my_str[0] := 'a'; // array assignment needs an index

    setlength(my_2d,10,10); // initialize dynamically sized arrays: 10×10 array
    for c := 0 to 9 do // arrays begin at 0 and end at length-1
        for d := 0 to 9 do // for loop counters need to be declared variables
        my_2d[c,d] := c * d;
          // address multidimensional arrays with a single set of brackets

End.

program Functional_Programming;

Var
    i, dummy : integer;

function factorial_recursion(const a: integer) : integer;
{ recursively calculates the factorial of integer parameter a }

// Declare local variables within the function
// e.g.:
// Var
//    local_a : integer;

Begin
    If a >= 1 Then
    // return values from functions by assigning a value to the function name
        factorial_recursion := a * factorial_recursion(a-1)
    Else
        factorial_recursion := 1;
End; // terminate a function using a semicolon after the End statement.

procedure get_integer(var i : integer; dummy : integer);
{ get user input and store it in the integer parameter i.
  parameters prefaced with 'var' are variable, meaning their value can change
  outside of the parameter. Value parameters (without 'var') like 'dummy' are
  static and changes made within the scope of the function/procedure do not
  affect the variable passed as a parameter }

Begin
    write('Enter an integer: ');
    readln(i);
    dummy := 4; // dummy will not change value outside of the procedure
End;

Begin // main program block
    dummy := 3;
    get_integer(i, dummy);
    writeln(i, '! = ', factorial_recursion(i));
    // outputs i!
    writeln('dummy = ', dummy); // always outputs '3' since dummy is unchanged.
End.


