function convert-hex-toDec
{
    [CmdletBinding()]
    param
    (
        [parameter(Mandatory=$true)][string]$hex
    )
    [int]$hexLength = ($hex.Length) - 1
    
    do{
            switch( $hex.Substring($CurrentPosition,1) ) 
            {
                '0' { [int]$hexInt = 0 }
                '1' { [int]$hexInt = 1 }
                '2'	{ [int]$hexInt = 2 }
                '3'	{ [int]$hexInt = 3 }
                '4'	{ [int]$hexInt = 4 }
                '5'	{ [int]$hexInt = 5 }
                '6'	{ [int]$hexInt = 6 }
                '7'	{ [int]$hexInt = 7 }
                '8'	{ [int]$hexInt = 8 }
                '9'	{ [int]$hexInt = 9 }
                'A' { [int]$hexInt = 10 }
                'B' { [int]$hexInt = 11 }
                'C'	{ [int]$hexInt = 12 }
                'D'	{ [int]$hexInt = 13 }
                'E' { [int]$hexInt = 14 }
                'F'	{ [int]$hexInt = 15 }
            }

            $Multiplicator = $hexLength - $CurrentPosition
            
            [int]$hexMplx = [math]::Pow(16,$Multiplicator) 
            [int]$dec = $dec + ($hexInt*$hexMplx)
            $CurrentPosition++  
    } 

    until
    (
        $CurrentPosition -eq $hex.Length
    )
    
    $dec
}