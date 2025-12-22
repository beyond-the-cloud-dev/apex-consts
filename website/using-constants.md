# Using Constants

Learn how to use Apex Consts in your code.

## Basic Usage

Access constants using the `Consts` class:

```apex
// Account Type
String type = Consts.ACCOUNT.TYPE.PROSPECT;

// Account Rating
String rating = Consts.ACCOUNT.RATING.HOT;

// API Name
String apiName = Consts.ACCOUNT.API_NAME;
```

## Creating Records

```apex
Account acc = new Account(
    Name = 'Acme Corp',
    Type = Consts.ACCOUNT.TYPE.PROSPECT,
    Rating = Consts.ACCOUNT.RATING.HOT
);
insert acc;
```

## SOQL Queries

```apex
List<Account> hotProspects = [
    SELECT Id, Name
    FROM Account
    WHERE Type = :Consts.ACCOUNT.TYPE.PROSPECT
    AND Rating = :Consts.ACCOUNT.RATING.HOT
];
```

## Conditional Logic

```apex
if (account.Type == Consts.ACCOUNT.TYPE.PROSPECT) {
    // Prospect logic
} else if (account.Type == Consts.ACCOUNT.TYPE.CUSTOMER_DIRECT) {
    // Customer logic
}
```

## Switch Statements

```apex
switch on account.Rating {
    when 'Hot' {
        // Use constants for comparison
        if (account.Rating == Consts.ACCOUNT.RATING.HOT) {
            // Hot account logic
        }
    }
    when 'Warm' {
        // Warm account logic
    }
}
```

## Updating Records

```apex
Account acc = [SELECT Id, Type FROM Account WHERE Id = :accountId];
acc.Type = Consts.ACCOUNT.TYPE.CUSTOMER_DIRECT;
acc.Rating = Consts.ACCOUNT.RATING.HOT;
update acc;
```

## Best Practices

1. **Always use constants** instead of hard-coded strings
2. **Import at class level** if using extensively
3. **Use in validation rules** via formulas when possible
4. **Document** when you deviate from constants

[Next: Creating Custom Constants →](/creating-constants)
