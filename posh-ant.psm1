if (Get-Command ant -ErrorAction SilentlyContinue)
{
  Push-Location $psScriptRoot
  . ./tabcomplete.ps1
  . ./antcolour.ps1
  Pop-Location

  Export-ModuleMember -Function @(
    'TabExpansion',
    'ant'
  )
}
