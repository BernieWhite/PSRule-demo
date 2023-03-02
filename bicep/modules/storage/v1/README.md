# Storage Account

Create or update an Storage Account.

## Parameters

Parameter name | Required | Description
-------------- | -------- | -----------
name           | Yes      | The name of the Storage Account.
location       | No       | The Azure region to deploy to.
sku            | No       | Create the Storage Account as LRS or GRS.
allowBlobPublicAccess | No       | Determines if any containers can be configured with the anonymous access types of blob or container.
tags           | No       | Tags to apply to the resource.

### name

![Parameter Setting](https://img.shields.io/badge/parameter-required-orange?style=flat-square)

The name of the Storage Account.

### location

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

The Azure region to deploy to.

**Default value**

```text
[resourceGroup().location]
```

### sku

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

Create the Storage Account as LRS or GRS.

**Default value**

```text
Standard_GRS
```

**Allowed values**

```text
Standard_GRS
Standard_LRS
```

### allowBlobPublicAccess

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

Determines if any containers can be configured with the anonymous access types of blob or container.

**Default value**

```text
True
```

### tags

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

Tags to apply to the resource.

**Default value**

```text
[resourceGroup().tags]
```
