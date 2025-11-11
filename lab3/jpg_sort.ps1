Get-ChildItem -Path "C:\Windows" -Recurse -Filter *.jpg -File -ErrorAction SilentlyContinue |
    Sort-Object Name |
    Out-File -FilePath "Z:\ossst\lab3\jpg_list.txt" -Encoding UTF8
