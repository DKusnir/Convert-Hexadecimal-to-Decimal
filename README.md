# Convert-Hexadecimal-to-Decimal
Hexadecimal to Decimal Conversion Function that will display the result in 64 bit Integer value


I am posting this simple function for those who would like to see the real calculation of Hexadecimal number into a Decimal number. The only reason is that i could not get same output using built-in convert methods as using Windows calculator. Function is using 64 bit integer in order to convert to high value numbers. Code is very simple : 
Function requires 1 parameter - and that is a HEX value. 


1. At the beginning,  get length of the HEX and substract 1 :
```diff
- [int]$hexLength = ($hex.Length) - 1 
```
 
2. Convert HEX code to DEC based on the current position ( at the beginning, position is always 0 )
```ps1
- switch( $hex.Substring($CurrentPosition,1) )  
- { 
                '0'     { [int]$hexInt = 0 } 
                '1'     { [int]$hexInt = 1 } 
                '2'    { [int]$hexInt = 2 } 
                '3'    { [int]$hexInt = 3 } 
                '4'    { [int]$hexInt = 4 } 
                '5'    { [int]$hexInt = 5 } 
                '6'    { [int]$hexInt = 6 } 
                '7'    { [int]$hexInt = 7 } 
                '8'    { [int]$hexInt = 8 } 
                '9'    { [int]$hexInt = 9 } 
                'A'    { [int]$hexInt = 10 } 
                'B'    { [int]$hexInt = 11 } 
                'C'    { [int]$hexInt = 12 } 
                'D'    { [int]$hexInt = 13 } 
                'E'    { [int]$hexInt = 14 } 
                'F'    { [int]$hexInt = 15 } 
- }
```



==============================================================
3. do simple multiplication because this is needed to for POW calculation

$Multiplicator = $hexLength - $CurrentPosition
==============================================================

==============================================================
4. Calculation of value and its multiplication

 [int64]$hexMplx = [math]::Pow(16,$Multiplicator)  
 [int64]$dec = $dec + ($hexInt*$hexMplx) 
 $CurrentPosition++  
==============================================================


==============================================================
5. Lastly, we break the function with until statement

 until 
( 
     $CurrentPosition -eq $hex.Length 
)
==============================================================

==============================================================
6. Result is then displayed as 64 bit integer mentioned earlier :
 
[INT64]$dec
==============================================================
