# Changelog

All notable changes to this project are documented in this file.
The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- The `GetEmailInfoQueries` record, which carries the query parameters of `getEmailInfo`.
- New `EmailInfo` fields for the domain and its owning organization: `domain`, `domainOwner`, `organization`, `description`, `employees`, `revenue`, `currency`, `rate`, `headquartersCity`, `headquartersCountry`, `xHandle` and `isDisposable`.
- An optional `headers` parameter on the remote method, for sending extra request headers.
- New `ConnectionConfig` fields, taken from `http:ClientConfiguration`: `followRedirects`, `cookieConfig`, `socketConfig` and `laxDataBinding`.
- Documentation for the fields of `EmailInfo`.

### Changed

- **Breaking:** `getEmailInfo` takes `email` as a named argument (or a `GetEmailInfoQueries` record) after `headers`, rather than as its first positional argument: `getEmailInfo("jane@example.com")` is now `getEmailInfo(email = "jane@example.com")`.
- **Breaking:** record fields use camel case, mapped to the API's Pascal-case JSON names with `@jsondata:Name`. For example, `EmailInfo.IsGovernment` is now `isGovernment`, and `EmailInfo.Response` is now `response`.
- **Breaking:** `EmailInfo.credits` is an `int` (was `string`).
- **Breaking:** `ConnectionConfig.http1Settings` is now `http:ClientHttp1Settings` (was the connector's own `ClientHttp1Settings`).
- `ConnectionConfig.timeout` defaults to 30 seconds (was 60).

### Removed

- **Breaking:** the connector's own `ClientHttp1Settings` and `ProxyConfig` records. Use `http:ClientHttp1Settings` and `http:ProxyConfig` instead.
