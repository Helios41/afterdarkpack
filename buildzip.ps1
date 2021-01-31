New-Item "temp" -ItemType "directory" | Out-Null
New-Item "temp/bin" -ItemType "directory" | Out-Null

Copy-Item "modpack.jar" "temp/bin/modpack.jar"
Copy-Item "mods" "temp/mods" -Recurse
Copy-Item "config" "temp/config" -Recurse

Compress-Archive -Path "temp/*" -DestinationPath "afterdarkpack.zip"

Remove-Item "temp" -Recurse | Out-Null