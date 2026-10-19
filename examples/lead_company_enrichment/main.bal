// Enriches a sales lead with the organization details behind its email address.

import ballerina/io;
import ballerinax/interzoid.emailinfo;

configurable string license = ?;
configurable string leadEmail = ?;

public function main() returns error? {
    emailinfo:Client emailClient = check new ({license});

    // Step 1: Look up the organization behind the lead's email address
    emailinfo:EmailInfo info = check emailClient->getEmailInfo(email = leadEmail);

    // Step 2: Make sure the lookup succeeded
    if info?.code != "Success" {
        return error("Lookup failed with code: " + (info?.code ?: "none"));
    }

    // Step 3: Print the enriched lead profile
    io:println("Lead: ", leadEmail);
    io:println("Organization: ", info?.organization ?: "unknown");
    io:println("Domain: ", info?.domain ?: "unknown");
    io:println("Headquarters: ", info?.headquartersCity ?: "unknown", ", ", info?.headquartersCountry ?: "unknown");
    io:println("Employees: ", info?.employees ?: "unknown");
    io:println("Revenue: ", info?.revenue ?: "unknown");
}
