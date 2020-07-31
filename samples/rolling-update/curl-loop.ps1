For ($i=0; $i -le 100; $i++) {
    $html = Invoke-WebRequest http://192.168.0.10
    $html.Content -split "[`r`n]" | select-string "<title>.*</title>"
    Start-Sleep -s 2
}