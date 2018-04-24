Clear-Host

docker ps

Install-Module -Name navcontainerhelper -Force

#1. Exploring NavContainer files
Enter-NavContainer localbcsandbox

cd C:\
dir
cd C:\extensions
dir
Exit

#2. Copy file with Extension source code from Container to host
docker cp localbcsanbox:C:\extensions\EssentialBusinessHeadlines.Source.zip C:\ProgramData\navcontainerhelper\Extensions\localbcsanbox\my
Invoke-Item C:\ProgramData\navcontainerhelper\Extensions\localbcsanbox\my

Copy-Item C:\ProgramData\navcontainerhelper\Extensions\localbcsanbox\my\EssentialBusinessHeadlines.Source.zip -Destination C:\Users\yuran\Documents\AL

Invoke-Item C:\Users\yuran\Documents\AL

#3. Extract zip
Add-Type -AssemblyName System.IO.Compression.FileSystem
[System.IO.Compression.ZipFile]::ExtractToDirectory('C:\Users\yuran\Documents\AL\EssentialBusinessHeadlines.Source.zip', 'C:\Users\yuran\Documents\AL\EssentialBusinessHeadlines.Source')
Invoke-Item C:\Users\yuran\Documents\AL

#4. Open VSCode
Start code 'C:\Users\yuran\Documents\AL\EssentialBusinessHeadlines.Source'

#5. Show table with headlines results
Start 'http://localbcsandbox/nav/?tenant=default&signInRedirected=1&table=1438'

#6. Remove old files
Remove-Item C:\ProgramData\navcontainerhelper\Extensions\localbcsanbox\my\EssentialBusinessHeadlines.Source.zip
Remove-Item C:\Users\yuran\Documents\AL\EssentialBusinessHeadlines.Source.zip -Force
Remove-Item C:\Users\yuran\Documents\AL\EssentialBusinessHeadlines.Source -Force