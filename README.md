# Consts

Consts framework allows keeping apex's constants in an ordered way.

## Example

```java
Account acc = new Account(
    Name = 'My Account',
    Type = Consts.ACCOUNT.TYPE.PROSPECT,
    Rating = Consts.ACCOUNT.RATING.HOT
);
```

```java
System.debug(Consts.ACCOUNT.TYPE.PROSPECT); //'Prospect'
System.debug(Consts.ACCOUNT.RATING.HOT); //'Hit'

System.debug(Consts.CONTACT.API_NAME); //'Contact'
System.debug(Consts.CONTACT.LEAD_SOURCE.WEB); //'Web'

System.debug(Consts.OPPORTUNITY.TYPE.EXISTING_CUSTOMER_DOWNGRADE); //'Existing Customer - Downgrade'
```

## How it works?

All concrete classes are created as a *singleton*, so each class is initialized once during the transaction. To decrease heap size getters and setters are in use. It means that class will be *initialized on demand*, not always. e.g execution of `Consts.ACCOUNT.TYPE.PROSPECT` will create instance of `AccountConsts` only, without creating `ContactConsts`.

Code Architecture is following *Open/Close* and *Single Responsibility Principle*. It means that code is easy to extend, and each class is responsible only for specific set of consts.

## How to use?

### Create concrete consts class

- Create `INSTANCE` variable to keep class instance (singleton).
- Create inner classes to order values.

```java
public class ContactConsts {
    public static final ContactConsts INSTANCE = new ContactConsts();

    public final String API_NAME = Contact.sObjectType.getDescribe().getName();

    public final Status STATUS = new Status();

    public class Status {
        public final String IN_APPROVAL_PROCESS = 'In Approval Process';
        public final String ACTIVATED = 'Activated';
        public final String DRAFT = 'Draft';
    }
}
```

### Add concrete consts class to `Consts`

```java
public class Consts {

    public static final ContactConsts CONTACT {
        get {
            return ContactConsts.INSTANCE;
        }
    }
}
```
