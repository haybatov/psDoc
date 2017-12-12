psDoc is a PowerShell Help Document generator.

----
### Using psDocAll ###

psDocAll allows you to create documentation for multiple PowerShell modules at once. Use it like below:

```
.\psDocAll.ps1 -path C:\dev\DDCloud\QA\Services.Powershell
```

This will create HTML, Markdown, and Confluence Markup formatted files in the `help` directory in the script's location.

If you need to create the documentation only in a single format (and to save time!), add a `format` parameter:

```
# Create documentation in the Confluence format
.\psDocAll.ps1 -path C:\dev\DDCloud\QA\Services.Powershell -format confluence

# Create documentation in the HTML format
.\psDocAll.ps1 -path C:\dev\DDCloud\QA\Services.Powershell -format html

# Create documentation in the Markdown format
.\psDocAll.ps1 -path C:\dev\DDCloud\QA\Services.Powershell -format markdown
```

### Using psDoc ###

To generate documentation off of your module, simply import your module

```
Import-Module MySpecialModule
```

And generate the documentation

```
.\psDoc.ps1 -moduleName MySpecialModule
```

### Known issues ###

URLs in the PS documentation can get mutilated if they contain "unusual" characters like _ (underscore) or # (hash, or sharp if you are musically inclined).


### License ###

[Microsoft Public License (Ms-PL)](https://opensource.org/licenses/MS-PL)
