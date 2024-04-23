
$ErrorActionPreference = 'Stop';


$packageName= 'Open-EID-24.4.0.1947'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://installer.id.ee/media/win/Open-EID-24.4.0.1947.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs    = '/install /quiet /norestart AutoUpdate=0'
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'Estonian_e-ID_software_1947*'
  checksum      = '558F29AB1B0CC82637C8F37B0FE131F548433B652D775262611F31B5E29DD1EF'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs

















