# Getting Started

Learn how to use Apex Consts to manage constants in your Salesforce org.

## What is Apex Consts?

Apex Consts is a framework for managing constants in Salesforce Apex. Instead of hard-coding string literals throughout your code, you use centralized, type-safe constants that provide:

- **Compile-time safety** - Catch typos before deployment
- **IDE autocomplete** - Never remember exact picklist values
- **Centralized management** - One place to update constants
- **Better readability** - Self-documenting code

## Quick Start

### 1. Install the Library

See the [Installation Guide](/installation) for setup instructions.

### 2. Use Built-in Constants

Apex Consts comes with pre-built constants for standard Salesforce objects:

```apex
// Account constants
Account acc = new Account(
    Name = 'Acme Corp',
    Type = Consts.ACCOUNT.TYPE.PROSPECT,
    Rating = Consts.ACCOUNT.RATING.HOT
);

// Contact constants
Contact con = new Contact(
    FirstName = 'John',
    LastName = 'Doe',
    LeadSource = Consts.CONTACT.LEAD_SOURCE.WEB
);

// Opportunity constants
Opportunity opp = new Opportunity(
    Name = 'Big Deal',
    StageName = Consts.OPPORTUNITY.STAGE_NAME.PROSPECTING,
    Type = Consts.OPPORTUNITY.TYPE.NEW_CUSTOMER,
    CloseDate = Date.today().addDays(30)
);
```

### 3. Access API Names

Get sObject API names:

```apex
String accountApiName = Consts.ACCOUNT.API_NAME;  // 'Account'
String contactApiName = Consts.CONTACT.API_NAME;  // 'Contact'
```

## Common Patterns

### Creating Records

```apex
Account acc = new Account();
acc.Name = 'Acme Corp';
acc.Type = Consts.ACCOUNT.TYPE.CUSTOMER_DIRECT;
acc.Rating = Consts.ACCOUNT.RATING.WARM;
insert acc;
```

### Query Filters

```apex
List<Account> prospects = [
    SELECT Id, Name
    FROM Account
    WHERE Type = :Consts.ACCOUNT.TYPE.PROSPECT
    AND Rating = :Consts.ACCOUNT.RATING.HOT
];
```

### Conditional Logic

```apex
if (account.Type == Consts.ACCOUNT.TYPE.PROSPECT) {
    // Handle prospect logic
} else if (account.Type == Consts.ACCOUNT.TYPE.CUSTOMER_DIRECT) {
    // Handle customer logic
}
```

## Why Use Constants?

### Without Apex Consts ❌

```apex
Account acc = new Account(
    Type = 'Propsect'  // Typo! No compile error, but wrong value
);

if (acc.Type == 'prospect') {  // Wrong case, comparison fails
    // This never executes
}
```

### With Apex Consts ✅

```apex
Account acc = new Account(
    Type = Consts.ACCOUNT.TYPE.PROSPECT  // Type-safe, autocomplete
);

if (acc.Type == Consts.ACCOUNT.TYPE.PROSPECT) {  // Works correctly
    // This executes as expected
}
```

## Next Steps

- Learn [How It Works](/how-it-works)
- Explore [Built-in Constants](/constants/account)
- See [More Examples](/examples)
- [Create Your Own Constants](/creating-constants)
