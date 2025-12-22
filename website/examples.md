# Examples

Practical examples using Apex Consts.

## Basic Record Creation

```apex
Account acc = new Account(
    Name = 'Acme Corp',
    Type = Consts.ACCOUNT.TYPE.PROSPECT,
    Rating = Consts.ACCOUNT.RATING.HOT
);
insert acc;
```

## SOQL with Constants

```apex
List<Opportunity> newCustomerOpps = [
    SELECT Id, Name, Amount
    FROM Opportunity
    WHERE Type = :Consts.OPPORTUNITY.TYPE.NEW_CUSTOMER
    AND StageName = :Consts.OPPORTUNITY.STAGE_NAME.PROSPECTING
];
```

## Trigger Logic

```apex
trigger AccountTrigger on Account (before insert, before update) {
    for (Account acc : Trigger.new) {
        if (acc.Type == Consts.ACCOUNT.TYPE.PROSPECT) {
            acc.Rating = Consts.ACCOUNT.RATING.WARM;
        }
    }
}
```

## Batch Apex

```apex
public class AccountBatch implements Database.Batchable<sObject> {
    public Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator([
            SELECT Id, Name, Type
            FROM Account
            WHERE Type = :Consts.ACCOUNT.TYPE.PROSPECT
        ]);
    }

    public void execute(Database.BatchableContext bc, List<Account> scope) {
        for (Account acc : scope) {
            acc.Type = Consts.ACCOUNT.TYPE.CUSTOMER_DIRECT;
        }
        update scope;
    }

    public void finish(Database.BatchableContext bc) {}
}
```

## Service Layer

```apex
public class AccountService {
    public static void convertProspectToCustomer(Id accountId) {
        Account acc = [SELECT Id, Type FROM Account WHERE Id = :accountId];

        if (acc.Type != Consts.ACCOUNT.TYPE.PROSPECT) {
            throw new IllegalArgumentException('Account is not a prospect');
        }

        acc.Type = Consts.ACCOUNT.TYPE.CUSTOMER_DIRECT;
        acc.Rating = Consts.ACCOUNT.RATING.HOT;
        update acc;
    }
}
```

## Test Classes

```apex
@IsTest
private class AccountServiceTest {
    @IsTest
    static void testConvertProspect() {
        Account acc = new Account(
            Name = 'Test',
            Type = Consts.ACCOUNT.TYPE.PROSPECT
        );
        insert acc;

        Test.startTest();
        AccountService.convertProspectToCustomer(acc.Id);
        Test.stopTest();

        acc = [SELECT Type, Rating FROM Account WHERE Id = :acc.Id];
        Assert.areEqual(Consts.ACCOUNT.TYPE.CUSTOMER_DIRECT, acc.Type);
        Assert.areEqual(Consts.ACCOUNT.RATING.HOT, acc.Rating);
    }
}
```

## Dynamic SOQL

```apex
public List<Account> getAccountsByType(String accountType) {
    String query = 'SELECT Id, Name FROM Account WHERE Type = :accountType';
    return Database.query(query);
}

// Usage
List<Account> prospects = getAccountsByType(Consts.ACCOUNT.TYPE.PROSPECT);
```

[Learn More →](/getting-started)
