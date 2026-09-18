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

#$TERMINAL_SETTINGS = 'C:\Users\mecc\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json'
$env:LC_ALL='C.UTF-8'
$env:langmenu='en_US'
$env:LANG = 'en_US'

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

# PowerShell parameter completion shim for the dotnet CLI
Register-ArgumentCompleter -Native -CommandName dotnet -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)
        dotnet complete --position $cursorPosition "$commandAst" | ForEach-Object {
            [System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
        }
}
