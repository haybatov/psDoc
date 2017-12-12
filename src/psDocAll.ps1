param(
    [parameter(Mandatory=$false, Position=0)] [string] $path = ".",
	[parameter(Mandatory=$false, Position=1)] [string] $format = "all"
)

if ($format -eq "all" -or $format -eq "confluence")
{
	ls -Path $path -Include *.psm1 -r | % { Import-Module $_; .\psDoc.ps1 -ModuleName $_.Name.Replace(".psm1", "") -Template .\out-confluence-markup-template.ps1 -fileName $_.Name.Replace(".psm1", ".txt") }
}

if ($format -eq "all" -or $format -eq "html")
{
	ls -Path $path -Include *.psm1 -r | % { Import-Module $_; .\psDoc.ps1 -ModuleName $_.Name.Replace(".psm1", "") -Template .\out-html-template.ps1 -fileName $_.Name.Replace(".psm1", ".html") }
}

if ($format -eq "all" -or $format -eq "markdown")
{
	ls -Path $path -Include *.psm1 -r | % { Import-Module $_; .\psDoc.ps1 -ModuleName $_.Name.Replace(".psm1", "") -Template .\out-markdown-template.ps1 -fileName $_.Name.Replace(".psm1", ".md") }
}
