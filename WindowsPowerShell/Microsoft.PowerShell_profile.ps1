Set-Alias g git
Set-Alias np notepad++

function prompt
{
    $location = "$(Get-Location)"
    $time = "[$(Get-Date -format T)] "
    
    Write-Host $time -NoNewline -ForegroundColor Green
    Write-Host $location -BackgroundColor DarkMagenta -ForegroundColor Black
    Write-Host ">" -NoNewline
    return " "
}