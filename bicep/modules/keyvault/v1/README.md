# Key Vault

Create or update an Azure Key Vault.

## Parameters

Parameter name | Required | Description
-------------- | -------- | -----------
name           | Yes      | The name of the Key Vault.
location       | No       | The Azure region to deploy to.
accessPolicies | No       | The access policies defined for this vault.
useDeployment  | No       | Determines if Azure can deploy certificates from this Key Vault.
useTemplate    | No       | Determines if templates can reference secrets from this Key Vault.
useDiskEncryption | No       | Determines if this Key Vault can be used for Azure Disk Encryption.
useSoftDelete  | No       | Determine if soft delete is enabled on this Key Vault.
usePurgeProtection | No       | Determine if purge protection is enabled on this Key Vault.
softDeleteDays | No       | The number of days to retain soft deleted vaults and vault objects.
useRBAC        | No       | Determines if access to the objects granted using RBAC. When true, access policies are ignored.
networkAcls    | No       | The network firewall defined for this vault.
workspaceId    | No       | The workspace to store audit logs.
tags           | No       | Tags to apply to the resource.

### name

![Parameter Setting](https://img.shields.io/badge/parameter-required-orange?style=flat-square)

The name of the Key Vault.

### location

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

The Azure region to deploy to.

**Default value**

```text
[resourceGroup().location]
```

### accessPolicies

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

The access policies defined for this vault.

### useDeployment

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

Determines if Azure can deploy certificates from this Key Vault.

**Default value**

```text
True
```

### useTemplate

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

Determines if templates can reference secrets from this Key Vault.

**Default value**

```text
True
```

### useDiskEncryption

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

Determines if this Key Vault can be used for Azure Disk Encryption.

**Default value**

```text
True
```

### useSoftDelete

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

Determine if soft delete is enabled on this Key Vault.

**Default value**

```text
True
```

### usePurgeProtection

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

Determine if purge protection is enabled on this Key Vault.

**Default value**

```text
True
```

### softDeleteDays

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

The number of days to retain soft deleted vaults and vault objects.

**Default value**

```text
90
```

### useRBAC

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

Determines if access to the objects granted using RBAC. When true, access policies are ignored.

**Default value**

```text
False
```

### networkAcls

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

The network firewall defined for this vault.

**Default value**

```json
{
    "defaultAction": "Allow",
    "bypass": "AzureServices",
    "ipRules": [],
    "virtualNetworkRules": []
}
```

### workspaceId

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

The workspace to store audit logs.

### tags

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

Tags to apply to the resource.

**Default value**

```text
[resourceGroup().tags]
```

## Outputs

Name | Type | Description
---- | ---- | -----------
resourceId | string |
