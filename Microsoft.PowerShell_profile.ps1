# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
#$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
#if (Test-Path($ChocolateyProfile)) {
#  Import-Module "$ChocolateyProfile"
#}


#Oh-my-posh 
Import-Module PSReadLine
Import-Module -Name Terminal-Icons

Set-PSReadLineOption -EditMode Windows
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -PredictionViewStyle InlineView

#PSReadLine
$PSReadLineProfile = "C:\Program Files\PowerShell\7\Modules\PSReadLine\PSReadLine.psm1"
if (Test-Path($PSReadLineProfile)){
  Import-Module "$PSReadLineProfile"
}

$PoshThemePath = 'C:\Program Files (x86)\oh-my-posh\themes\'
oh-my-posh init pwsh --config $poshThemePath'atomic.omp.json' | Invoke-Expression
#$PSReadLineOptions= @{
  #  EditMode = "Emacs"
  #  HistoryNoDuplicates = $true
  #  HistorySearchCursorMovesToEnd = $true
  #  Colors = @{
    #      "Command" = "#8181f7"
    #  PredictionSource = "HistoryAndPlugin"
    #  PredictionViewStyle = "ListView"
    #
    #  }
    #  
    #}
    
    #PoshGIT
    function Set-PoshGitStatus {
      $global:GitStatus = Get-GitStatus
      $env:POSH_GIT_STRING = Write-GitStatus -Status $global:GitStatus
    }
    New-Alias -Name 'Set-PoshContext' -Value 'Set-PoshGitStatus' -Scope Global -Force
    
    
    # Terminal-Icons
    Import-Module Terminal-Icons
    
    
    