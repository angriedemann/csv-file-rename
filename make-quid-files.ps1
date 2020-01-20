get-content "\qud.txt"| ForEach-Object{
    $randomID1 = -join ((65..90) + (97..122) | Get-Random -Count 16 | % {[char]$_})
    #https://devblogs.microsoft.com/scripting/generate-random-letters-with-powershell/
    $randomID2 = -join ((65..90) + (97..122) | Get-Random -Count 16 | % {[char]$_})
    New-Item -Path ".\photos\$_~$randomID1-$randomID2.jpg" -ItemType File
} 