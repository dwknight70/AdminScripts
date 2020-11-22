#Requires -Version 5.1
Import-Module -Name .\MpDefinitionPackage.psd1 -Scope Local -ErrorAction Stop

try {
    Build-MpDefinitionPackage -Path $(Split-Path $PSCommandPath) -Verbose @args
} finally {
    Remove-Module -Name MpDefinitionPackage
}