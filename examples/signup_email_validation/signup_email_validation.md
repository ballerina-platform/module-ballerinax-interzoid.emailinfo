# Sign-up email validation

This example validates the email address of a new sign-up using the Interzoid Email Info connector. It rejects addresses that are invalid or disposable and reports the remaining API credits.

## Prerequisites

- Ballerina Swan Lake 2201.12.0 or later
- Create a `Config.toml` in this directory:
  ```toml
  license = "<your-license-key>"
  signupEmail = "<email-address>"
  ```

## Run the example

```bash
bal run
```
