## Overview

The Interzoid Email Info connector provides access to the [Interzoid Email Address Validation Demographics API](https://www.interzoid.com/apis/email-address-validation-demographics) from Ballerina. Given an email address, the API validates it and returns domain details, organization data and geolocation information. This connector supports version 1.0.0 of the API.

### Key features

- Validate email addresses and check mail server status
- Detect disposable, generic, vulgar, government and educational addresses
- Retrieve domain owner, organization, revenue and headcount data
- Look up headquarters location and currency information for a domain

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

- [signup_email_validation](../examples/signup_email_validation/signup_email_validation.md) - Validate a new sign-up email address and reject disposable ones.
- [lead_company_enrichment](../examples/lead_company_enrichment/lead_company_enrichment.md) - Enrich a sales lead with the organization behind its email address.
