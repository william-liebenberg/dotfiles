$ENV:STARSHIP_CONFIG = "$HOME\.config\starship.toml"

Import-Module -Name Terminal-Icons

Invoke-Expression (&starship init powershell)

$curDir = Get-Location
If ($curDir.Path -eq "C:\WINDOWS\system32") {
   Set-Location ~
}

# PowerShell parameter completion shim for the dotnet CLI
Register-ArgumentCompleter -Native -CommandName dotnet -ScriptBlock {
   param($commandName, $wordToComplete, $cursorPosition)
   dotnet complete --position $cursorPosition "$wordToComplete" | ForEach-Object {
      [System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
   }
}