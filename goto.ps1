<#

.SYNOPSIS
Sets the current working location to a location of the specified label

.DESCRIPTION
The goto cmdlet sets the working location to a location of the specified label. 
The label and location need to be specified inside the script in the $locations 
parameter. You can edit the file inside your favourite editor or use the 
'goto edit-me' command.

Use goto -help to get an overview of all the labels and locations

.LINK
https://www.github.com/rneeft/goto

.NOTES
Inside the script you have the $locations variable. This is a array in the form of
LABEL, LOCATION,
LABLE, LOCATION

#>

# Add your own location below this line
# first item is de name second name is the location
$locations =
  "c", "c:\",
  "git", "c:\git\"
  ;  

$location = $args[0]
if ($location -eq "help" -or $location -eq "-help" -or $location -eq "--help") {
  Write-Host "Where do you want to go today?"

  $Array = @()

  For ($i=0; $i -lt $locations.Length; $i++){

    $result = "" | Select Name,Location
    $result.Name = $locations.Get($i++)
    $result.Location = $locations.Get($i)

    $Array += $result

  }

  $Array

} elseif ($location -eq "edit-me"){
    notepad $env:GOTO_HOME
}
 else {

  $index = [array]::IndexOf($locations, $location)
                      
  if ($index -eq -1){
    Set-Location $location
  } else {
    Set-Location $locations[$index + 1]
  }
}
