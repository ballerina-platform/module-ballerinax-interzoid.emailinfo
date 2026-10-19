# Running Tests

## Prerequisites

An Interzoid API license key is needed only when running against the live service.

## Test Environment

The tests run against a local mock server (`mock_service.bal`) by default. To run them against the live Interzoid API, set the following environment variables:

```bash
export IS_LIVE_SERVER=true
export INTERZOID_LICENSE="<your-license-key>"
```

## Running the Tests

```bash
bal test
```

The suite contains one test for `getEmailInfo`, which looks up an email address and checks the returned email and domain.
