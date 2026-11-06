// Validates the email address of a new sign-up and rejects disposable or invalid addresses.

import ballerina/io;
import ballerinax/interzoid.emailinfo;

configurable string license = ?;
configurable string signupEmail = ?;

public function main() returns error? {
    emailinfo:Client emailClient = check new ({license});

    // Step 1: Look up the email address
    emailinfo:EmailInfo info = check emailClient->getEmailInfo(email = signupEmail);

    // Step 2: Check the validation status
    string status = info?.response ?: "unknown";
    if status != "valid" {
        return error("Sign-up rejected: the email address is not valid (" + (info?.info ?: "no details") + ")");
    }

    // Step 3: Reject disposable addresses
    if info?.isDisposable == "true" {
        return error("Sign-up rejected: disposable email addresses are not allowed");
    }

    io:println("Sign-up accepted for ", info?.email ?: signupEmail);
    io:println("Remaining API credits: ", info?.credits ?: 0);
}
