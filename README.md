# Intoruction

Simple demo of the PSArm module - using a Foreach-Object to generate multiple resources.

# Usage

The ```multinic.psarm.ps1``` file contains a single resource definition (a network interface card). It uses a ```Foreach-Object``` loop to generate multiple resources.

```
Publish-PSArmTemplate -TemplatePath .\multinic.psarm.ps1
```

