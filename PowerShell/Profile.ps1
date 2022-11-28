Set-Alias g git
Set-Alias np notepad++
Set-Alias vim gvim
Set-Alias vi gvim
Set-Alias ir iisreset
Set-Alias checksum Get-FileHash
function startup { Get-CimInstance -ClassName win32_operatingsystem | select lastbootuptime }
function clean { Get-ChildItem .\ -include bin,obj -Recurse | foreach ($_) { remove-item $_.fullname -Force -Recurse } } 

function master { git co master }
function fs { git fetch --prune;git status -s -b}

# Git
function gs { git s }
function gco { git co $args}
function gf { git f $args}
function ga { git a $args}
function gb { git b $args}
function gsc($h) { git dt $h~ $h }

$env:LC_ALL='C.UTF-8'
# remove-item alias:curl

function prompt {
    $time = "($(get-date -format t))"
    $location = " $(get-location) "
    #$branch = "[$(git rev-parse --abbrev-ref HEAD)]"
    $branch = "$(git rev-parse --abbrev-ref HEAD)"

    Write-Host $time -NoNewline -ForegroundColor green
    Write-Host $location -NoNewline -ForegroundColor yellow

    if ($branch -ne "") {
      Write-Host "($branch)" -ForegroundColor blue -NoNewline
    }
    Write-Host " $" -NoNewline
    return " "

    # "ps " + $(get-location) + " [$(get-date -format t)]> "
}
