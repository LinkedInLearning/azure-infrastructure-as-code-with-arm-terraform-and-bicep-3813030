# scripting.ps1 : Powershell

## Declare a variable
$name = "World"

## Use the variable
Write-Output "Hello, $name!"


# Variables from results of commands

## Assign the result of a command to a variable
$date = Get-Date

## Use the result
Write-Output "The current date and time is $date"

# Looping
## Foreach loop in PowerShell
foreach ($item in 1..5) {
    Write-Output "Item $item"
}

# Conditionals

# If statement in PowerShell
$num = 10
if ($num -gt 5) {
    Write-Output "$num is greater than 5"
} elseif ($num -eq 5) {
    Write-Output "$num is equal to 5"
} else {
    Write-Output "$num is less than 5"
}
