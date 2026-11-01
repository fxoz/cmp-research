# VS Code may inherit an old PATH from its launcher even after restarting.
# Refresh only this build process from the persisted Windows environment.
$ErrorActionPreference = 'Stop'
$env:Path = [Environment]::GetEnvironmentVariable('Path', 'Machine') + ';' +
    [Environment]::GetEnvironmentVariable('Path', 'User') + ';' + $env:Path

& latexmk @args
exit $LASTEXITCODE
