# Ballerina Interzoid Email Info connector

[![Build](https://github.com/ballerina-platform/module-ballerinax-interzoid.emailinfo/actions/workflows/ci.yml/badge.svg)](https://github.com/ballerina-platform/module-ballerinax-interzoid.emailinfo/actions/workflows/ci.yml)
[![GitHub Last Commit](https://img.shields.io/github/last-commit/ballerina-platform/module-ballerinax-interzoid.emailinfo.svg)](https://github.com/ballerina-platform/module-ballerinax-interzoid.emailinfo/commits/main)
[![GitHub Issues](https://img.shields.io/github/issues/ballerina-platform/ballerina-library/module/interzoid.emailinfo.svg?label=Open%20Issues)](https://github.com/ballerina-platform/ballerina-library/labels/module%2Finterzoid.emailinfo)

## Overview

The Interzoid Email Info connector provides access to the [Interzoid Email Address Validation Demographics API](https://www.interzoid.com/apis/email-address-validation-demographics) from Ballerina. Given an email address, the API validates it and returns domain details, organization data and geolocation information. This connector supports version 1.0.0 of the API.

## Setup guide

1. Register for an Interzoid API account at [Interzoid Registration](https://www.interzoid.com/register-api-account).

2. Copy the API license key that Interzoid issues for your account.

3. Provide the license key when you create the connector client, for example through a `Config.toml` entry.

## Quickstart

1. Import the connector.

    ```ballerina
    import ballerinax/interzoid.emailinfo;
    ```

2. Create a `Config.toml` file with your license key.

    ```toml
    license = "<your-license-key>"
    ```

3. Create the client.

    ```ballerina
    configurable string license = ?;

    emailinfo:Client emailClient = check new ({license});
    ```

4. Retrieve information for an email address.

    ```ballerina
    public function main() returns error? {
        emailinfo:EmailInfo _ = check emailClient->getEmailInfo(email = "joesmith@amazon.com");
    }
    ```

## Examples

The `Interzoid Email Info` connector provides practical examples illustrating usage in various scenarios. Explore these [examples](https://github.com/ballerina-platform/module-ballerinax-interzoid.emailinfo/tree/main/examples/), covering the following use cases:

- [signup_email_validation](examples/signup_email_validation/signup_email_validation.md) - Validate a new sign-up email address and reject disposable ones.
- [lead_company_enrichment](examples/lead_company_enrichment/lead_company_enrichment.md) - Enrich a sales lead with the organization behind its email address.

## Build from the source

### Setting up the prerequisites

1. Download and install Java SE Development Kit (JDK) version 21. You can download it from either of the following sources:

    * [Oracle JDK](https://www.oracle.com/java/technologies/downloads/)
    * [OpenJDK](https://adoptium.net/)

   > **Note:** After installation, remember to set the `JAVA_HOME` environment variable to the directory where JDK was installed.

2. Download and install [Ballerina Swan Lake](https://ballerina.io/).

3. Download and install [Docker](https://www.docker.com/get-started).

   > **Note**: Ensure that the Docker daemon is running before executing any tests.

4. Export Github Personal access token with read package permissions as follows,

    ```bash
    export packageUser=<Username>
    export packagePAT=<Personal access token>
    ```

### Build options

Execute the commands below to build from the source.

1. To build the package:

   ```bash
   ./gradlew clean build
   ```

2. To run the tests:

   ```bash
   ./gradlew clean test
   ```

3. To build the without the tests:

   ```bash
   ./gradlew clean build -x test
   ```

4. To run tests against different environments:

   ```bash
   ./gradlew clean test -Pgroups=<Comma separated groups/test cases>
   ```

5. To debug the package with a remote debugger:

   ```bash
   ./gradlew clean build -Pdebug=<port>
   ```

6. To debug with the Ballerina language:

   ```bash
   ./gradlew clean build -PbalJavaDebug=<port>
   ```

7. Publish the generated artifacts to the local Ballerina Central repository:

    ```bash
    ./gradlew clean build -PpublishToLocalCentral=true
    ```

8. Publish the generated artifacts to the Ballerina Central repository:

   ```bash
   ./gradlew clean build -PpublishToCentral=true
   ```

## Contribute to Ballerina

As an open-source project, Ballerina welcomes contributions from the community.

For more information, go to the [contribution guidelines](https://github.com/ballerina-platform/ballerina-lang/blob/master/CONTRIBUTING.md).

## Code of conduct

All the contributors are encouraged to read the [Ballerina Code of Conduct](https://ballerina.io/code-of-conduct).

## Useful links

* For more information go to the [`interzoid.emailinfo` package](https://central.ballerina.io/ballerinax/interzoid.emailinfo/latest).
* For example demonstrations of the usage, go to [Ballerina By Examples](https://ballerina.io/learn/by-example/).
* Chat live with us via our [Discord server](https://discord.gg/ballerinalang).
