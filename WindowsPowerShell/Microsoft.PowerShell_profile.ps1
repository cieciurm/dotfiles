Set-Alias g git
Set-Alias np notepad++
Set-Alias vim gvim
Set-Alias vi gvim

function prompt
{
    $time = "($(get-date -format t))"
    $location = " $(get-location) "
    $branch = "$(git rev-parse --abbrev-ref HEAD)"

    Write-Host $time -NoNewline -backgroundcolor red
    Write-Host $location -NoNewline -foregroundcolor yellow
    Write-Host $branch -backgroundcolor blue -NoNewline
    Write-Host " $" -NoNewline
    return " "

    # "ps " + $(get-location) + " [$(get-date -format t)]> "
}
