_Author_:  @DimuthuMadushan \
_Created_: 2026/10/19 \
_Updated_: 2026/10/19 \
_Edition_: Swan Lake

# Sanitation for OpenAPI specification

This document records the sanitation done on top of the official OpenAPI specification from Interzoid Email Info. 
The OpenAPI specification is obtained from [wso2/api-specs](https://github.com/wso2/api-specs/blob/main/openapi/interzoid/emailinfo/1.0.0/openapi.yaml).
These changes are done in order to improve the overall usability, and as workarounds for some known language limitations.

## Changes

1. Changed the OpenAPI version from `3.1.0` to `3.0.3` in the original specification (`docs/spec/openapi.yaml`). Flatten and align drop `type` from every schema and parameter of a 3.1 specification, which turns all fields into `anydata`.
2. Removed the `license` query parameter from the `getEmailInfo` operation in the original specification. The same key is already declared by the `apiKeyAuth` security scheme, so keeping both put `license` in the client's `ApiKeysConfig` and again in `GetEmailInfoQueries`.

## OpenAPI cli command

The following command was used to generate the Ballerina client from the OpenAPI specification. The command should be executed from the repository root directory.

```bash
bal openapi -i docs/spec/aligned_ballerina_openapi.json -o ballerina --mode client --client-methods remote --license docs/license.txt
```

Note: The license year is hardcoded to 2026, change if necessary.

## OpenAPI cli command

The following command was used to generate the Ballerina client from the OpenAPI specification. The command should be executed from the repository root directory.

```bash
bal openapi -i docs/spec/aligned_ballerina_openapi.json -o ballerina --mode client --client-methods remote --license docs/license.txt
```

Note: The license year is hardcoded to 2026, change if necessary.

## OpenAPI cli command

The following command was used to generate the Ballerina client from the OpenAPI specification. The command should be executed from the repository root directory.

```bash
bal openapi -i docs/spec/aligned_ballerina_openapi.json -o ballerina --mode client --client-methods remote --license docs/license.txt
```

Note: The license year is hardcoded to 2026, change if necessary.
