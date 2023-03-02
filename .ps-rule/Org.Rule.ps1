# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

# Note:
# This script demonstrates using PowerShell-based rules.

#region Conventions

# Synopsis: Imports in Bicep module paths for analysis.
Export-PSRuleConvention 'Org.BicepModule' -Initialize {
    $modules = @(Get-ChildItem -Path 'bicep/modules/' -Include 'main.bicep' -Recurse -File | ForEach-Object {
        $version = $_.Directory.Name
        $name = $_.Directory.Parent.Name
        [PSCustomObject]@{
            Name = $name
            Version = $version
            Path = $_.Directory.FullName
        }
    })
    $PSRule.ImportWithType('Azure.Bicep.ModuleInfo', $modules);
}

#endregion Conventions

#region Custom Rules

# Synopsis: All modules must have a corresponding tests file.
Rule 'Org.RequireTests' -Type 'Azure.Bicep.ModuleInfo' {
    $Assert.FilePath($TargetObject, 'Path', @('.tests/main.tests.bicep'))
}

# Synopsis: All modules must have a corresponding README file.
Rule 'Org.RequireReadme' -Type 'Azure.Bicep.ModuleInfo' {
    $Assert.FilePath($TargetObject, 'Path', @('README.md'))
}

#enregion Custom Rules
