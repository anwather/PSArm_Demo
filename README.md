# Introduction

Simple demo of the PSArm module - using common PowerShell conventions to generate resources.

# Foreach-Object

The ```multinic.psarm.ps1``` file contains a single resource definition (a network interface card). It uses a ```Foreach-Object``` loop to generate multiple resources.

```
Publish-PSArmTemplate -TemplatePath .\multinic.psarm.ps1 -OutFile multinic.json
```

# Conditional resources

The ```conditions.psarm.ps1``` file contains a conditional resource deployment using ```if:then```.

```
Publish-PSArmTemplate -TemplatePath .\conditions.psarm.ps1 -Parameters @{'secondNic'=$true} -OutFile condition_is_true.json

Publish-PSArmTemplate -TemplatePath .\conditions.psarm.ps1 -Parameters @{'secondNic'=$false} -OutFile condition_is_false.json
```

