# XML Transformation Anemic Project

## Overview

This project provides a solution for transforming XML configuration files using MSBuild.
It includes an anemic .csproj file that defines the necessary targets and pom to perform
XML transformations and copy the results to a specified destination. This setup is useful for
automating configuration updates and managing different environments like development, staging,
and production.

## Features

- Transform XML files using a specified transformation configuration.
- Copy the transformed XML to a target location, optionally overwriting existing files.
- Easily configure file names, extensions, and contexts through the .csproj file.

## Prerequisites

- [.NET 6.0 SDK](https://dotnet.microsoft.com/download) or later
- `Microsoft.Web.Xdt` (included via package reference)

## Getting Started

### Clone the Repository

```bash
Copy code
git clone https://github.com/yourusername/your-repository.git
cd your-repository
```

### Running the Transformation

Use the following MSBuild command to perform the XML transformation and copy the resulting file:

```bash
msbuild /t:TransformConfig /p:FileName="Web" /p:Extension="config" /p:TargetContext="Release" /p:OutputContext="Transformed" /p:OverwriteDestination=true
```

#### Parameters

##### `FileName`
- **Default Value**: `Web`
- **Description**: Base name for your configuration files.
- **Examples**:
  - `Web`
  - `App`
  - `pom`
  - `data-set`

##### `SourceFileName`
- **Default Value**: `$(FileName)`
- **Description**: Base name for the source configuration file.
- **Examples**:
  - `Web`
  - `App`
  - `pom`
  - `data-set`

##### `TargetFileName`
- **Default Value**: `$(FileName)`
- **Description**: Base name for the target transformation file.
- **Examples**: `Web`
  - `App`
  - `pom`
  - `data-set`

##### `OutputFileName`
- **Default Value**: `$(FileName)`
- **Description**: Base name for the output configuration file.
- **Examples**: `Web`
  - `App`
  - `pom`
  - `data-set`

##### `DestinationFileName`
- **Default Value**: `$(FileName)`
- **Description**: Base name for the destination configuration file.
- **Examples**:
  - `Web`
  - `App`
  - `pom`
  - `data-set`

##### `Extension`
- **Default Value**: `config`
- **Description**: File extension for the configuration files.
- **Examples**:
  - `config`
  - `xml`

##### `SourceExtension`
- **Default Value**: `$(Extension)`
- **Description**: Extension for the source configuration file.
- **Examples**:
  - `config`
  - `xml`

##### `TargetExtension`
- **Default Value**: `$(Extension)`
- **Description**: Extension for the target transformation file.
- **Examples**:
  - `config`
  - `xml`

##### `OutputExtension`
- **Default Value**: `$(Extension)`
- **Description**: Extension for the output configuration file.
- **Examples**:
  - `config`
  - `xml`

##### `DestinationExtension`
- **Default Value**: `$(Extension)`
- **Description**: Extension for the destination configuration file.
- **Examples**:
  - `config`
  - `xml`

##### `TargetContext`
- **Default Value**: `Release`
- **Description**: Context for the target transformation (e.g., environment).
- **Examples**:
  - `Release`
  - `Production`
  - `pipeline`
  - `staging`

##### `OutputContext`
- **Default Value**: `Transformed`
- **Description**: Context for the output file, usually indicating transformation.
- **Examples**:
  - `Transformed`
  - `tmp`

##### `SourceConfig`
- **Default Value**: `$(SourceFileName).$(SourceExtension)`
- **Description**: Full path for the source configuration file.
- **Examples**:
  - `Web.config`
  - `App.config`
  - `pom.xml`
  - `data-set.xml`

##### `TargetConfig`
- **Default Value**: `$(TargetFileName).$(TargetContext).$(TargetExtension)`
- **Description**: Full path for the target transformation file.
- **Examples**:
  - `Web.Release.config`
  - `App.Production.config`
  - `pom.pipeline.xml`
  - `data-set.staging.xml`

##### `OutputConfig`
- **Default Value**: `$(OutputFileName).$(OutputContext).$(OutputExtension)`
- **Description**: Full path for the output configuration file.
- **Examples**:
  - `Web.Transformed.config`
  - `MyApp.tmp.config`
  - `pom.Transformed.xml`
  - `data-set.tmp.xml`

##### `DestinationConfig`
- **Default Value**: `$(DestinationFileName).$(DestinationExtension)`
- **Description**: Full path for the final destination configuration file.
- **Examples**:
  - `Web.config`
  - `MyApp.config`
  - `pom.xml`
  - `data-set.xml`

##### `OverwriteDestination`
- **Default Value**: `true`
- **Description**: Whether to overwrite existing files in the destination.
- **Values**:
  - `true`
  - `false`

### Example Files

(...)

### Targets

- `TransformConfig`: Transforms the source XML file using the specified transformation file and
copies the result to the destination.

## Contributing

Feel free to submit issues, feature requests, or pull requests.
Please ensure that your code follows the existing coding style and includes tests where appropriate.

## License

This project is licensed under the MIT License. See the LICENSE file for details.

## Contact

For any questions or feedback, please contact [mfedatto@gmail.com](mfedatto@gmail.com) or create an
issue on GitHub.
