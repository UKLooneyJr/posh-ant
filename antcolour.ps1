function ant {
  ant.exe $args | Ant-Colour
}

function Ant-Colour {
  [CmdletBinding()]
  param(
    [Parameter(Mandatory = $true,ValueFromPipeline = $true)]
    [psobject]$InputObject
  )
  process {
    $contentLine = $InputObject | Out-String

    switch -regex ($contentLine) {
      "Buildfile:" { $consoleWriteColour = "Gray"; break }
      "BUILD SUCCESSFUL" { $consoleWriteColour = "Green"; break }
      "BUILD FAILED" { $consoleWriteColour = "Red"; break }
      "^[^\s]*:" { $consoleWriteColour = "Cyan"; break }
      "[Ee](rror|RROR):" { $consoleWriteColour = "Red"; break }
      default { $consoleWriteColour = (Get-Host).ui.rawui.ForegroundColor; break }
    }
    Write-Host $contentLine -ForegroundColor $consoleWriteColour -NoNewline
  }
}
