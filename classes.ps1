class Person{
    [string]$name;
    [string]$number
}

$bob = [Person]::new()
$bob.name = "bob"
$bob.number = 123

$mike = [Person]::new()
$mike.name = "mike"
$mike.number = "345"

$dave = [Person]::new()
$dave.name = "name"
$dave.number = 678

$List = [System.Collections.ArrayList]::new()
$List.Add($bob)
$List.Add($mike)
$List.Add($dave)

$Temp = $List | Where-Object {$_.number -eq 345}
