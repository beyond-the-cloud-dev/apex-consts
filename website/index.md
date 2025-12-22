---
layout: home

hero:
  name: "Apex Consts"
  text: "Constants Framework for Apex"
  tagline: A structured, memory-efficient approach for managing constants in Salesforce with singleton pattern and lazy initialization
  actions:
    - theme: brand
      text: Get Started
      link: /getting-started
    - theme: alt
      text: View Examples
      link: /examples
    - theme: alt
      text: View on GitHub
      link: https://github.com/beyond-the-cloud-dev/apex-consts

features:
  - icon: 🎯
    title: Type-Safe Constants
    details: Access picklist values and API names with autocomplete support. No more typos in string literals.

  - icon: ⚡
    title: Memory Efficient
    details: Singleton pattern with lazy initialization ensures classes are only instantiated when needed, reducing heap usage.

  - icon: 🏗️
    title: Well Architected
    details: Follows SOLID principles - specifically Open/Closed and Single Responsibility - making it easy to extend.

  - icon: 📦
    title: Organized Structure
    details: Group related constants using inner classes for clean, logical organization.

  - icon: 🔧
    title: Easy to Extend
    details: Add your own const classes for custom objects and picklists in minutes.

  - icon: 🚀
    title: Production Ready
    details: Battle-tested pattern used in enterprise Salesforce implementations. Part of Apex Fluently suite.
---

## Why Apex Consts?

Stop using hard-coded string literals scattered throughout your code. Apex Consts provides a centralized, type-safe way to manage constants:

::: code-group

```apex [Before ❌]
Account acc = new Account(
    Name = 'My Account',
    Type = 'Prospect',  // Easy to mistype
    Rating = 'Hot'      // No autocomplete
);

if (acc.Type == 'Propsect') {  // Typo! Runtime error
    // ...
}
```

```apex [After ✅]
Account acc = new Account(
    Name = 'My Account',
    Type = Consts.ACCOUNT.TYPE.PROSPECT,  // Type-safe
    Rating = Consts.ACCOUNT.RATING.HOT    // Autocomplete
);

if (acc.Type == Consts.ACCOUNT.TYPE.PROSPECT) {  // Compile-time safety
    // ...
}
```

:::

## Quick Example

```apex
// Using Account constants
Account acc = new Account(
    Name = 'Acme Corp',
    Type = Consts.ACCOUNT.TYPE.PROSPECT,
    Rating = Consts.ACCOUNT.RATING.HOT
);
insert acc;

// Using Contact constants
Contact con = new Contact(
    FirstName = 'John',
    LastName = 'Doe',
    LeadSource = Consts.CONTACT.LEAD_SOURCE.WEB
);
insert con;

// Using Opportunity constants
Opportunity opp = new Opportunity(
    Name = 'Big Deal',
    StageName = Consts.OPPORTUNITY.STAGE_NAME.PROSPECTING,
    Type = Consts.OPPORTUNITY.TYPE.NEW_CUSTOMER,
    CloseDate = Date.today().addDays(30)
);
insert opp;
```

## Features at a Glance

- ✅ **Type-Safe** - Compile-time checking prevents typos
- ✅ **Autocomplete** - IDE suggestions for all constants
- ✅ **Memory Efficient** - Singleton pattern with lazy loading
- ✅ **Organized** - Logical grouping with inner classes
- ✅ **Extensible** - Easy to add custom constants
- ✅ **Standard Objects** - Pre-built for Account, Contact, Opportunity, Profile
- ✅ **SOLID Design** - Follows best practices and design principles

## How It Works

Apex Consts uses a singleton pattern with lazy initialization:

1. **Singleton** - Each const class is instantiated only once per transaction
2. **Lazy Loading** - Classes are only created when first accessed
3. **Getter Pattern** - Properties use getters to control instantiation

```apex
// First access creates instance
String type = Consts.ACCOUNT.TYPE.PROSPECT;  // AccountConsts created

// Later accesses reuse instance
String rating = Consts.ACCOUNT.RATING.HOT;   // Reuses same AccountConsts

// Other classes aren't created unless accessed
// ContactConsts not created yet - no memory used
```

This approach minimizes heap usage and improves performance.

## Part of Apex Fluently

Apex Consts is part of [Apex Fluently](https://apexfluently.beyondthecloud.dev/), a suite of production-ready Salesforce libraries by [Beyond the Cloud](https://beyondthecloud.dev).

## Get Started

Ready to eliminate hard-coded strings? [Get started →](/getting-started)
